import 'package:flutter/material.dart';
import 'package:phishing_classification_app/screens/learn_screen.dart';
import 'package:phishing_classification_app/screens/mail_screen.dart';
import 'package:phishing_classification_app/screens/url_prediction.dart';
import 'package:url_launcher/link.dart';

class HomeScreen extends StatelessWidget {
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
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                'assets/images/cs2.png',
                width: 200,
                height: 200,
              ),
              SizedBox(height: 10),
              Text(
                'Welcome to NoPHISH',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 20),
              Column(
                children: [
                  OutlinedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Predictor()),
                      );
                    },
                    style: OutlinedButton.styleFrom(
                      side: BorderSide(color: Colors.blue), // outline color
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20.0),
                      ), // rounded corners
                    ),
                    child: Text(
                      'Check the URL',
                      style: TextStyle(fontSize: 16, color: Colors.blue),
                    ),
                  ),
                  SizedBox(height: 15),
                  OutlinedButton(
                    onPressed: () {
                      // Action for 'Learn'
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => MailScreen()),
                      );
                    },
                    style: OutlinedButton.styleFrom(
                      side: BorderSide(color: Colors.blue), // outline color
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20.0),
                      ), // rounded corners
                    ),
                    child: Text(
                      'Check your mail',
                      style: TextStyle(fontSize: 16, color: Colors.blue),
                    ),
                  ),
                  SizedBox(height: 15),
                  Link(
                    target: LinkTarget.blank,
                    uri: Uri.parse(
                        'https://cybercrime.gov.in/Webform/cyber_suspect.aspx'),
                    builder: (context, followLink) => OutlinedButton(
                      onPressed: followLink,
                      style: OutlinedButton.styleFrom(
                        side: BorderSide(color: Colors.blue), // outline color
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20.0),
                        ), // rounded corners
                      ),
                      child: Text(
                        'Report Phishy Link',
                        style: TextStyle(fontSize: 16, color: Colors.blue),
                      ),
                    ),
                  ),
                  SizedBox(height: 15),
                  OutlinedButton(
                    onPressed: () {
                      // Action for 'Recent Scans'
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Learn_screen()),
                      );
                    },
                    style: OutlinedButton.styleFrom(
                      side: BorderSide(color: Colors.blue), // outline color
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20.0),
                      ), // rounded corners
                    ),
                    child: Text(
                      'Cyber Security Awareness',
                      style: TextStyle(fontSize: 16, color: Colors.blue),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
