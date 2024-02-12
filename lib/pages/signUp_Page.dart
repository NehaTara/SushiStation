import 'package:flutter/material.dart';
import 'package:flutter_test_1/components/my_button.dart';
import 'package:flutter_test_1/components/my_textfield.dart';
import 'package:flutter_test_1/components/square_tile.dart';
import 'package:flutter_test_1/pages/menu_page.dart';

class SignUpPage extends StatelessWidget {
  SignUpPage({super.key});

  // text editing controllers
  final usernameController = TextEditingController();
  final passwordController = TextEditingController();

  // sign user in method
  void signUserIn(BuildContext context) {
    Navigator.push(context, MaterialPageRoute(builder: (context) =>  const MenuPage()),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: SafeArea(
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const SizedBox(height: 50),
            
              // logo
              const Icon(
                Icons.lock,
                size: 100,
                color: Colors.black,
                ),
            
              const SizedBox(height: 50),
            
              // welcome back, you've been missed!
              Text(
                'Sign Up!',
                style: TextStyle(
                  color: Colors.grey[700],
                  fontSize: 16,
                  ),
                 ),
            
                const SizedBox(height: 25),
            
              // username textfield
              MyTextField(
                controller: usernameController,
                hintText: 'New Username',
                obscureText: false,
              ),
            
              const SizedBox(height: 10),
             
              //password textfield
              MyTextField(
                controller: passwordController,
                hintText: 'Password',
                obscureText: true,
              ), 
            
              const SizedBox(height: 10),

              MyTextField(
                controller: passwordController,
                hintText: 'retype password',
                obscureText: true,
              ),
            
              const SizedBox(height: 25),
            
              // sign in button
              // sign in button
              MyButton(
                buttonText: 'Sign In',
                onTap: () => signUserIn(context),
              ),
            
              const SizedBox(height: 50),
            
              // or continue with
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25.0),
                child: Row(
                  children: [
                  Expanded(
                    child: Divider(
                  thickness: 0.5,
                  color: Colors.grey[400],
                    ),
                  ),
                 Padding(
                   padding: const EdgeInsets.symmetric(horizontal: 10.0),
                   child: Text(
                    'Or continue with',
                    style: TextStyle(color: Colors.grey[700]),
                    ),
                 ),
                  Expanded(
                    child: Divider(
                  thickness: 0.5,
                  color: Colors.grey[400],
                    ),
                  ),
                ],
               ),
              ),
            
              const SizedBox(height: 50),
            
              // google + apple sign in buttons
              const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  //google button
                  SquareTile(imagePath: 'lib/images/Google Logo.jpg'),
            
                  SizedBox(width: 25),
            
                  //apple button
                  SquareTile(imagePath: 'lib/images/Apple Logo.jpg')
                ],
              ),
            
              const SizedBox(height: 50),

            ],),
          ),
        ),
      )
    );
  }
}