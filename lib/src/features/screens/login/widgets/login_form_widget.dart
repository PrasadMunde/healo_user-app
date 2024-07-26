import 'package:flutter/material.dart';
import '../../../../constants/sizes.dart';
import '../../../../constants/text_strings.dart';
import '../../dashboard/dashboard.dart';
import '../../forget_password/forget_password_model_button_sheet.dart';

class LoginForm extends StatelessWidget {
  const LoginForm({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: tFormHeight - 10),
        child: Container(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              TextField(
                decoration: const InputDecoration(
                    prefixIcon: Icon(Icons.person_outline_outlined),
                    labelText: tEmail,
                    hintText: tEmail,
                    border: OutlineInputBorder()),
              ),
              SizedBox(
                height: tFormHeight,
              ),
              TextField(
                decoration: const InputDecoration(
                    prefixIcon: Icon(Icons.fingerprint),
                    labelText: tPassword,
                    hintText: tPassword,
                    border: OutlineInputBorder(),
                    suffixIcon: IconButton(
                      onPressed: null,
                      icon: Icon(Icons.remove_red_eye_sharp),
                    )),
              ),
              const SizedBox(
                height: tFormHeight - 20,
              ),
              Align(
                alignment: Alignment.centerRight,
                child: TextButton(
                  onPressed: () {
                    ForgetPasswordScreen.buildShowModalBottomSheet(context);
                  },
                  child: const Text(tForgetPassword),
                ),
              ),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Dashboard()));
                  },
                  child: Text(tLogin.toUpperCase()),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
  }


