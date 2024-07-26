import 'package:healo_users_app/src/features/screens/signup/signup_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../../../constants/colors.dart';
import '../../../constants/image_strjngs.dart';
import '../../../constants/sizes.dart';
import '../../../constants/text_strings.dart';
import '../login/login_screen.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var mediaQuery = MediaQuery.of(context);
    var brightness = mediaQuery.platformBrightness;
    var height = mediaQuery.size.height;
    final isDarkMode = brightness == Brightness.dark;

    return Scaffold(
      backgroundColor: isDarkMode ? tSecondaryColor : tPrimaryColor,
      body: Container(
        child: Padding(
          padding: const EdgeInsets.all(tDefaultSize),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Image(
                image: AssetImage(tWelcomeScreenImage),
                height: height * 0.6,
              ),
              Column(
                children: [
                  Text(
                    tWelcomeTitle,
                    style: Theme.of(context).textTheme.headlineLarge,
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    tWelcomeSubTitle,
                    style: Theme.of(context).textTheme.bodyLarge,
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
              Row(
                children: [
                  Expanded(
                    child: OutlinedButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => LoginScreen()));
                      },
                      style: OutlinedButton.styleFrom(
                        shape: RoundedRectangleBorder(),
                        foregroundColor: tSecondaryColor,
                        side: BorderSide(color: tSecondaryColor),
                        padding: EdgeInsets.symmetric(vertical: tButtonHeight),
                      ),
                      child: Text(tLogin.toUpperCase()),
                    ),
                  ),
                  SizedBox(
                    width: 10.0,
                  ),
                  Expanded(
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => SignupScreen()));
                      },
                      style: ElevatedButton.styleFrom(
                        elevation: 0,
                        shape: RoundedRectangleBorder(),
                        side: BorderSide(color: tSecondaryColor),
                        padding: EdgeInsets.symmetric(vertical: tButtonHeight),
                      ),
                      child: Text(tSignup.toUpperCase()),
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
