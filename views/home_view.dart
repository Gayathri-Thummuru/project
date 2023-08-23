import 'package:flutter/material.dart';
import 'student_view.dart';
import 'adminhome_view.dart';
import 'faculty_view.dart';
import 'package:animated_text_kit/animated_text_kit.dart';

class Home extends StatelessWidget {
  void _handleAttendance() {
    // Implement attendance action
  }

  void _handleCumulativeAttendance() {
    // Implement cumulative attendance action
  }

  void _handleFacultyRegister() {
    // Implement faculty register action
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          surfaceTintColor: Color.fromARGB(255, 122, 57, 135),
          shadowColor: Color.fromARGB(255, 121, 24, 124),
          backgroundColor: Color.fromARGB(255, 127, 60, 147),
          leading: Image.asset(
            'images/logo2.png', // Replace with your logo image asset path
            width: 40, // Set the desired width
            height: 40, // Set the desired height
          ),
          title: Center(
            child: AnimatedTextKit(
              animatedTexts: [
                TyperAnimatedText(
                  'WELCOME TO NRI INSTITUTE OF TECHNOLOGY',
                  textStyle: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                  speed: Duration(milliseconds: 80),
                ),
              ],
              repeatForever: true,
            ),
          ),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(height: 40), // Adjust spacing as needed
              ElevatedButton.icon(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => MyApp()));
                  //Implement Admin button onPressed action
                },
                style: ElevatedButton.styleFrom(
                  primary: Colors.purple, // Set button color
                  padding: EdgeInsets.symmetric(
                      horizontal: 20, vertical: 15), // Set button padding
                ),
                icon: Icon(Icons.person),
                label: Text(
                  'Admin',
                  style: TextStyle(fontSize: 20), // Set button label font size
                ),
              ),
              SizedBox(height: 10),
              ElevatedButton.icon(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Faculty()));
                  // Implement Faculty button onPressed action
                },
                style: ElevatedButton.styleFrom(
                  primary: Colors.purple,
                  padding: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
                ),
                icon: Icon(Icons.group),
                label: Text(
                  'Faculty',
                  style: TextStyle(fontSize: 20),
                ),
              ),
              SizedBox(height: 10),
              ElevatedButton.icon(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => StudentPage()));
                  // Implement Student button onPressed action
                },
                style: ElevatedButton.styleFrom(
                  primary: Colors.purple,
                  padding: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
                ),
                icon: Icon(Icons.school),
                label: Text(
                  'Student',
                  style: TextStyle(fontSize: 20),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
