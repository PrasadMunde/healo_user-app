import 'package:healo_users_app/src/common_widgets/form/form_header_widget.dart';
import 'package:healo_users_app/src/constants/image_strjngs.dart';
import 'package:healo_users_app/src/constants/sizes.dart';
import 'package:healo_users_app/src/constants/text_strings.dart';
import 'package:healo_users_app/src/features/screens/signup/widget/signup_form_widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SignupScreen extends StatelessWidget {
  const SignupScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          child: Padding(
            padding: const EdgeInsets.all(tDefaultSize),
            child: Column(
              children: [
                FormHeaderWidget(
                    title: tSignup,
                    subtitle: tSignUpSubTitle,
                    image: tWelcomeScreenImage),
                SignUpFormWidget(),
                Column(
                  children: [
                    const Text('OR'),
                    SizedBox(height: 10,),
                    SizedBox(
                      width: double.infinity,
                      child: OutlinedButton.icon(
                        onPressed: () {},
                        icon: const Image(
                          image: AssetImage(tGoogleLogoImage),
                          width: 20.0,
                        ),
                        label: const Text(tSignInWithGoogle),
                      ),
                    ),
                    TextButton(
                      onPressed: () {},
                      child: Text.rich(
                        TextSpan(
                          text: tAlreadyHaveAnAccount,
                          style: Theme.of(context).textTheme.bodyLarge,
                          children: [
                            TextSpan(
                              text: tLogin.toUpperCase(),
                              style: TextStyle(color: Colors.blue),
                            ),
                          ],
                        ),
                      ),
                    )
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
