import "package:flutter/material.dart";
import "package:url_launcher/link.dart";

class Learn_screen extends StatefulWidget {
  const Learn_screen({super.key});

  @override
  State<Learn_screen> createState() => _Learn_screenState();
}

class _Learn_screenState extends State<Learn_screen> {
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
                          "> Cyber Security Awareness",
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      SizedBox(height: 30),
//===========================================================================================================
                      Container(
                        padding: EdgeInsets.all(10),
                        decoration: BoxDecoration(
                          color: Color(0xFF52658B),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Row(
                          children: [
                            // Image
                            Container(
                              width: MediaQuery.of(context).size.width *
                                  0.3, // 30% of the width
                              padding: EdgeInsets.all(10),
                              child: Image.asset(
                                  "assets/images/credit-card.png",
                                  width: 50,
                                  height: 50,
                                  fit: BoxFit.contain),
                            ),
                            // Text
                            Expanded(
                              child: Link(
                                target: LinkTarget.blank,
                                uri: Uri.parse(
                                    "https://www.youtube.com/watch?v=I-xjZkDVtU0&list=PLGqF2Eq4iV78du4-Kyr2KONwYmtJmD7aZ&index=2"),
                                builder: (context, followLink) => TextButton(
                                  onPressed: followLink,
                                  child: Text(
                                    'Credit/ Debit Card Frauds',
                                    style: TextStyle(
                                        fontSize: 16, color: Colors.white),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
//===========================================================================================================
                      Container(
                        padding: EdgeInsets.all(10),
                        decoration: BoxDecoration(
                          color: Color(0xFF52658B),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Row(
                          children: [
                            // Image
                            Container(
                              width: MediaQuery.of(context).size.width *
                                  0.3, // 30% of the width
                              padding: EdgeInsets.all(10),
                              child: Image.asset("assets/images/phishing.png",
                                  width: 50, height: 50, fit: BoxFit.contain),
                            ),
                            // Text
                            Expanded(
                              child: Link(
                                target: LinkTarget.blank,
                                uri: Uri.parse(
                                    "https://www.youtube.com/watch?v=KNIY4nhpxmU&list=PLGqF2Eq4iV78du4-Kyr2KONwYmtJmD7aZ&index=1"),
                                builder: (context, followLink) => TextButton(
                                  onPressed: followLink,
                                  child: Text(
                                    'Stay Secure with Fraudulent Emails',
                                    style: TextStyle(
                                        fontSize: 16, color: Colors.white),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
//===========================================================================================================
                      Container(
                        padding: EdgeInsets.all(10),
                        decoration: BoxDecoration(
                          color: Color(0xFF52658B),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Row(
                          children: [
                            // Image
                            Container(
                              width: MediaQuery.of(context).size.width *
                                  0.3, // 30% of the width
                              padding: EdgeInsets.all(10),
                              child: Image.asset("assets/images/phishing1.png",
                                  width: 50, height: 50, fit: BoxFit.contain),
                            ),
                            // Text
                            Expanded(
                              child: Link(
                                target: LinkTarget.blank,
                                uri: Uri.parse(
                                    "https://www.youtube.com/watch?v=daV3thmt6Gg&list=PLGqF2Eq4iV78du4-Kyr2KONwYmtJmD7aZ&index=3"),
                                builder: (context, followLink) => TextButton(
                                  onPressed: followLink,
                                  child: Text(
                                    'Phishing Fraud',
                                    style: TextStyle(
                                        fontSize: 16, color: Colors.white),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
//===========================================================================================================
                      Container(
                        padding: EdgeInsets.all(10),
                        decoration: BoxDecoration(
                          color: Color(0xFF52658B),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Row(
                          children: [
                            // Image
                            Container(
                              width: MediaQuery.of(context).size.width *
                                  0.3, // 30% of the width
                              padding: EdgeInsets.all(10),
                              child: Image.asset(
                                  "assets/images/digital-footprint.png",
                                  width: 50,
                                  height: 50,
                                  fit: BoxFit.contain),
                            ),
                            // Text
                            Expanded(
                              child: Link(
                                target: LinkTarget.blank,
                                uri: Uri.parse(
                                    "https://www.youtube.com/watch?v=Qp9A9B-orRA&list=PLGqF2Eq4iV78du4-Kyr2KONwYmtJmD7aZ&index=4"),
                                builder: (context, followLink) => TextButton(
                                  onPressed: followLink,
                                  child: Text(
                                    'Digital Footprints',
                                    style: TextStyle(
                                        fontSize: 16, color: Colors.white),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
//===========================================================================================================
                      Container(
                        padding: EdgeInsets.all(10),
                        decoration: BoxDecoration(
                          color: Color(0xFF52658B),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Row(
                          children: [
                            // Image
                            Container(
                              width: MediaQuery.of(context).size.width *
                                  0.3, // 30% of the width
                              padding: EdgeInsets.all(10),
                              child: Image.asset("assets/images/provider.png",
                                  width: 50, height: 50, fit: BoxFit.contain),
                            ),
                            // Text
                            Expanded(
                              child: Link(
                                target: LinkTarget.blank,
                                uri: Uri.parse(
                                    "https://www.youtube.com/watch?v=A4PzFkhDQog&list=PLGqF2Eq4iV78du4-Kyr2KONwYmtJmD7aZ&index=5"),
                                builder: (context, followLink) => TextButton(
                                  onPressed: followLink,
                                  child: Text(
                                    'Internet Banking Fraud',
                                    style: TextStyle(
                                        fontSize: 16, color: Colors.white),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
//===========================================================================================================
                      Container(
                        padding: EdgeInsets.all(10),
                        decoration: BoxDecoration(
                          color: Color(0xFF52658B),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Row(
                          children: [
                            // Image
                            Container(
                              width: MediaQuery.of(context).size.width *
                                  0.3, // 30% of the width
                              padding: EdgeInsets.all(10),
                              child: Image.asset("assets/images/virus.png",
                                  width: 50, height: 50, fit: BoxFit.contain),
                            ),
                            // Text
                            Expanded(
                              child: Link(
                                target: LinkTarget.blank,
                                uri: Uri.parse(
                                    "https://www.youtube.com/watch?v=aLcOk-n8W-I&list=PLGqF2Eq4iV78du4-Kyr2KONwYmtJmD7aZ&index=6"),
                                builder: (context, followLink) => TextButton(
                                  onPressed: followLink,
                                  child: Text(
                                    'Malware Threat',
                                    style: TextStyle(
                                        fontSize: 16, color: Colors.white),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
//===========================================================================================================
                      Container(
                        padding: EdgeInsets.all(10),
                        decoration: BoxDecoration(
                          color: Color(0xFF52658B),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Row(
                          children: [
                            // Image
                            Container(
                              width: MediaQuery.of(context).size.width *
                                  0.3, // 30% of the width
                              padding: EdgeInsets.all(10),
                              child: Image.asset("assets/images/fraud.png",
                                  width: 50, height: 50, fit: BoxFit.contain),
                            ),
                            // Text
                            Expanded(
                              child: Link(
                                target: LinkTarget.blank,
                                uri: Uri.parse(
                                    "https://www.youtube.com/watch?v=bcZb5baxXqQ&list=PLGqF2Eq4iV78du4-Kyr2KONwYmtJmD7aZ&index=7"),
                                builder: (context, followLink) => TextButton(
                                  onPressed: followLink,
                                  child: Text(
                                    'Mobile Banking Frauds',
                                    style: TextStyle(
                                        fontSize: 16, color: Colors.white),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
//===========================================================================================================
                      Container(
                        padding: EdgeInsets.all(10),
                        decoration: BoxDecoration(
                          color: Color(0xFF52658B),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Row(
                          children: [
                            // Image
                            Container(
                              width: MediaQuery.of(context).size.width *
                                  0.3, // 30% of the width
                              padding: EdgeInsets.all(10),
                              child: Image.asset("assets/images/protection.png",
                                  width: 50, height: 50, fit: BoxFit.contain),
                            ),
                            // Text
                            Expanded(
                              child: Link(
                                target: LinkTarget.blank,
                                uri: Uri.parse(
                                    "https://www.youtube.com/watch?v=qKoviCq7LRk&list=PLGqF2Eq4iV78du4-Kyr2KONwYmtJmD7aZ&index=8"),
                                builder: (context, followLink) => TextButton(
                                  onPressed: followLink,
                                  child: Text(
                                    'Internet Security',
                                    style: TextStyle(
                                        fontSize: 16, color: Colors.white),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
//===========================================================================================================
                      Container(
                        padding: EdgeInsets.all(10),
                        decoration: BoxDecoration(
                          color: Color(0xFF52658B),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Row(
                          children: [
                            // Image
                            Container(
                              width: MediaQuery.of(context).size.width *
                                  0.3, // 30% of the width
                              padding: EdgeInsets.all(10),
                              child: Image.asset(
                                  "assets/images/phone-message.png",
                                  width: 50,
                                  height: 50,
                                  fit: BoxFit.contain),
                            ),
                            // Text
                            Expanded(
                              child: Link(
                                target: LinkTarget.blank,
                                uri: Uri.parse(
                                    "https://www.youtube.com/watch?v=tMSrVpLPVlM&list=PLGqF2Eq4iV78du4-Kyr2KONwYmtJmD7aZ&index=9"),
                                builder: (context, followLink) => TextButton(
                                  onPressed: followLink,
                                  child: Text(
                                    'Avoid SMShing',
                                    style: TextStyle(
                                        fontSize: 16, color: Colors.white),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
//===========================================================================================================
                    ]))));
  }
}
