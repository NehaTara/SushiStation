import 'package:flutter/material.dart';
import 'package:flutter_test_1/components/my_sushibutton.dart';
import 'package:flutter_test_1/themes/colors.dart';
import 'package:google_fonts/google_fonts.dart';

class IntroPage extends StatelessWidget {
  const IntroPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: primaryColor,
      body: Padding(
        padding: const EdgeInsets.all(25.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              const SizedBox(height: 25),
              
              //shop name
              Text(
                "SUSHI STATION",
                 style: GoogleFonts.dmSerifDisplay(
                   fontSize: 28,
                   color: Colors.white, 
                  ),
                 ),
          
                 const SizedBox(height: 25),
          
              //icon
              Padding(
                padding: const EdgeInsets.all(50.0),
                child: Image.asset('lib/images/Sashimi.png', height: 195,),
              ),
          
              const SizedBox(height: 25),
          
              //title
              Text(
                "THE TASTE OF JAPANESE CUISINE",
              style: GoogleFonts.dmSerifDisplay(
                   fontSize: 44,
                   color: Colors.white, 
                  ),
                ),
          
              const SizedBox(height: 10),
          
              //subtitle
              Text(
                "Experience the authentic taste of Japan delivered anywhere to your doorstep with our premium Japanese takeout delights!",
                style: TextStyle(
                  color: Colors.grey[300],
                  height: 2,
                ),
              ),
          
              const SizedBox(height: 25),
                
              //get started button
              MysushiButton(
                text: "Get Started",
                onTap: (){
                  // go to menu page
                  Navigator.pushNamed(context, '/loginPage');
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}