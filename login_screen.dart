import 'package:booktickets/widgets/my_button.dart';
import 'package:booktickets/widgets/my_textfields_widget.dart';
import 'package:booktickets/widgets/square_tile.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../utils/app_layout.dart';
import '../utils/app_styles.dart';

class LoginScreen extends StatelessWidget {
  LoginScreen({super.key});

// text editing controller
  final usernameController = TextEditingController();
  final passwordController = TextEditingController();

// sign in user method
  void signUserIn() {}
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Styles.bgColor,
      body:  SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
             Gap(AppLayout.getHeight(50)),
            //logo
            const Icon(
              Icons.lock,
              size: 100,
            ),
            Gap(AppLayout.getHeight(50)),

            //'welcome back, you've been missed'
            const Text("Welcome back traveller, where next?",
                style: TextStyle(color: Colors.grey, fontSize: 16)),
            Gap(AppLayout.getHeight(25)),

            //username text field
             MyTextField(
                controller: usernameController,
                 hintText: 'Username',
                 obscureText: false,
            ),
            Gap(AppLayout.getHeight(10)),
            //password text field
             MyTextField(
                 controller: passwordController,
                 hintText: 'Password',
                 obscureText: true,
             ),
            Gap(AppLayout.getHeight(10)),

            //forgot password
            Padding(
              padding: EdgeInsets.symmetric(horizontal: AppLayout.getHeight(20)),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text(
                    'forgot password?',
                  style: TextStyle(color: Colors.grey.shade600),),
                ],
              ),
            ),
             Gap(AppLayout.getHeight(25)),

            //sign in button
             MyButton(
              onTap: signUserIn,
            ),
            Gap(AppLayout.getHeight(50)),

            //continue with
            Padding(
              padding: EdgeInsets.symmetric(horizontal: AppLayout.getHeight(25)),
              child: Row(
                children: [
                  Expanded(
                      child: Divider(
                        thickness: 0.5,
                        color: Colors.grey.shade400,
                      )),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: AppLayout.getHeight(10)),
                    child: Text('Or continue with',
                    style: TextStyle(color: Colors.grey[700]),),
                  ),
                  Expanded(
                      child: Divider(
                        thickness: 0.5,
                        color: Colors.grey.shade400,
                      )
                  ),
                ],
              ),
            ),
            Gap(AppLayout.getHeight(20)),

            //google+apple sign in button
              Row(
               mainAxisAlignment: MainAxisAlignment.center,
              children: [
                //google button
                const SquareTile(imagePath: "assets/images/google.jpg"),

                Gap(AppLayout.getHeight(20)),
                //apple button
                const SquareTile(imagePath: "assets/images/apple.png")
              ],
            ),
              Gap(AppLayout.getHeight(10)),
            //not a member? register now!
              Row(
               mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('Not a member now?',
                  style: TextStyle(color: Colors.grey.shade700),
                ),
                const SizedBox(width: 4),
                const Text('Register now',
                style: TextStyle(color: Colors.blue, fontWeight: FontWeight.bold),)
              ],
            )
          ],),
        ),
      ),
    );
  }
}
