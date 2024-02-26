import 'package:flutter/material.dart';
import 'package:qr_code_scanner/qr_code_scanner.dart';
import 'package:http/http.dart' as http;

class Predictor extends StatefulWidget {
  const Predictor({Key? key}) : super(key: key);

  @override
  State<Predictor> createState() => _PredictorState();
}

class _PredictorState extends State<Predictor> {
  final TextEditingController _urlController = TextEditingController();

  Future<void> checkUrl(String url) async {
    // You should replace 'your-api-url' with the actual URL of your API
    var apiUrl = Uri.parse('http://172.16.6.127:5000');
    var response = await http.post(apiUrl, body: {'url': url});

    if (response.statusCode == 200) {
      // Handle the response here
      print('Response: ${response.body}');
    } else {
      // Handle the error
      print('Error: ${response.statusCode}');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'NoPHISH',
          style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
        ),
        backgroundColor: const Color.fromARGB(255, 8, 59, 136),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                padding: EdgeInsets.all(8),
                decoration: BoxDecoration(
                  color: Color(0xFF52658B),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Text(
                  "> Check the URL",
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              SizedBox(height: 16),
              Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Instructions to use:",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                      ),
                    ),
                    SizedBox(height: 8),
                    Text(
                      "1. Copy the URL you want to check or click on the button to scan a QR code.",
                    ),
                    Text(
                      "2. Paste the URL in below box.",
                    ),
                    Text(
                      "3. Click on check button.",
                    ),
                  ],
                ),
              ),
              SizedBox(height: 16),
              TextField(
                controller: _urlController,
                decoration: InputDecoration(
                  hintText: 'Enter URL',
                  border: OutlineInputBorder(),
                ),
              ),
              SizedBox(height: 16),
              Center(
                child: Column(
                  children: [
                    IconButton(
                      onPressed: () async {
                        final result = await Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => QRScanner()),
                        );
                        if (result != null) {
                          setState(() {
                            _urlController.text = result;
                          });
                        }
                      },
                      icon: Icon(Icons.qr_code, size: 48),
                    ),
                    SizedBox(height: 2),
                    Text("SCAN QR"),
                    SizedBox(height: 40),
                    ElevatedButton(
                      onPressed: () {
                        String url = _urlController.text.trim();
                        if (url.isNotEmpty) {
                          checkUrl(url);
                        }
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Color(0xFF072660),
                        fixedSize: Size(250, 50),
                      ),
                      child: Text(
                        'CHECK',
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class QRScanner extends StatefulWidget {
  @override
  _QRScannerState createState() => _QRScannerState();
}

class _QRScannerState extends State<QRScanner> {
  final GlobalKey qrKey = GlobalKey(debugLabel: 'QR');
  late QRViewController controller;
  String scannedCode = '';

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        Navigator.pop(context, scannedCode);
        return false;
      },
      child: Scaffold(
        body: Column(
          children: <Widget>[
            Expanded(
              flex: 5,
              child: QRView(
                key: qrKey,
                onQRViewCreated: _onQRViewCreated,
              ),
            ),
            Expanded(
              flex: 1,
              child: Center(
                child: Text('Scanned Code: $scannedCode',
                    style: const TextStyle(fontSize: 18)),
              ),
            )
          ],
        ),
      ),
    );
  }

  void _onQRViewCreated(QRViewController controller) {
    this.controller = controller;
    controller.scannedDataStream.listen((event) {
      setState(() {
        scannedCode = event.code!;
      });
    });
  }
}
