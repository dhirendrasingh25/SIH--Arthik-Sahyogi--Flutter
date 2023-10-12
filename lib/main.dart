import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.only(left: 16.0, right: 16.0), // Add padding
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(height: 160),
            Center(
              child: Column(
                children: [
                  Container(
                    width: 118,
                    height: 182,
                    child: Image.asset(
                      'assests/images/emblem.png', // Fix 'assests' to 'assets'
                    ),
                  ),
                  Text(
                    'MINISTRY OF MICRO, SMALL & MEDIUM ENTERPRISES',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
            ),

            Center(
              child: Container(
                margin: EdgeInsets.only(top: 100),
                child: Text(
                  'Join our awesome community',
                  style: TextStyle(
                    color: Color.fromARGB(193, 0, 61, 112),
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
            ),
            SizedBox(height: 10),
            Center(
              child: Text(
                'To provide various initiatives for cluster development, including diagnostic studies, soft interventions, detailed project reports, creation of common facility centers, and infrastructure development.',
                style: TextStyle(
                  color: Colors.grey,
                  fontSize: 16,
                ),
                textAlign: TextAlign.center,
              ),
            ),
            SizedBox(height: 150), // Add spacing between text and buttons
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  flex: 2,
                  child: ElevatedButton(
                    onPressed: () {
                      // Navigate to a different page
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (context) => SecondPage(),
                        ),
                      );
                    },
                    style: ElevatedButton.styleFrom(
                      primary: Color.fromARGB(255, 215, 217, 219),
                      minimumSize: Size(double.infinity, 50),
                    ),
                    child: Text('<-',
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        )),
                  ),
                ),
                SizedBox(width: 16), // Add spacing between buttons
                Expanded(
                  flex: 9,
                  child: ElevatedButton(
                    onPressed: () {
                      // Add functionality for the second button
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (context) => SecondPage(),
                        ),
                      );
                    },
                    style: ElevatedButton.styleFrom(
                      primary: Color.fromARGB(255, 50, 144, 221),
                      minimumSize: Size(double.infinity, 50),
                    ),
                    child: Text(
                      ' MSME ->',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class SecondPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Under Development'),
      ),
      body: Center(
        child: Text('Under Development'),
      ),
    );
  }
}
