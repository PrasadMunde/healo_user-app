import 'package:flutter/material.dart';
import 'package:healo_users_app/src/constants/colors.dart';
import 'package:healo_users_app/src/constants/image_strjngs.dart';
import 'package:healo_users_app/src/constants/sizes.dart';
import 'package:healo_users_app/src/constants/text_strings.dart';
import 'package:healo_users_app/src/features/screens/profile/update_profile_screen.dart';
import 'package:healo_users_app/src/features/screens/profile/widgets/profile_menu_widget.dart';
import 'package:line_awesome_flutter/line_awesome_flutter.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var isDark = MediaQuery.of(context).platformBrightness == Brightness.dark;
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(onPressed: (){Navigator.of(context).pop();},icon: const Icon(LineAwesomeIcons.angle_left),),
        title: Text(tProfile,style: Theme.of(context).textTheme.headlineMedium,),
        actions: [IconButton(onPressed: (){}, icon: Icon(isDark ? LineAwesomeIcons.sun : LineAwesomeIcons.moon))],
      ),
      body: SingleChildScrollView(
        child: Container(
        padding: const EdgeInsets.all(tDefaultSize),
          child: Column(
            children: [
              Stack(
                children: [
                  SizedBox(
                    width: 120,
                    height: 120,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(100),
                      child: Image(image: AssetImage(tProfileImage),),
                    ),
                  ),
                  Positioned(
                    right: 0,
                    bottom: 0,
                    child: Container(
                      width: 35,
                      height: 35,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(100),
                          color: tPrimaryColor
                      ),
                      child: const Icon(LineAwesomeIcons.alternate_pencil, color: Colors.black, size: 20.0,),
                    ),
                  )
                ],
              ),
              const SizedBox(height: 10,),
              Text(tProfileHeading,style: Theme.of(context).textTheme.headlineMedium,),
              Text(tProfileSubTitle,style: Theme.of(context).textTheme.bodyLarge,),
             const SizedBox(height: 20,),
              SizedBox(
                width: 200,
                child: ElevatedButton(
                  onPressed: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context) => UpdateProfileScreen()));
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: tPrimaryColor,side: BorderSide.none,shape: const StadiumBorder()
                  ),
                  child: const Text(tEditProfile,style: TextStyle(color: tDarkColor),),
                ),
              ),
              const SizedBox(height: 30,),
              const Divider(),
              const SizedBox(height: 10,),

              // Menu
              ProfileMenuWidget(title: tMenu1, icon: Icons.switch_access_shortcut, onPress: (){},),
              ProfileMenuWidget(title: tMenu2, icon: Icons.language, onPress: (){},),
              const Divider(color: Colors.grey,),
              const SizedBox(height: 10,),
              ProfileMenuWidget(title: tMenu3, icon: Icons.medical_services, onPress: (){},),
              ProfileMenuWidget(title: tMenu4, icon: Icons.design_services, onPress: (){},),
              ProfileMenuWidget(title: tMenu5, icon: Icons.security, onPress: (){},),
              const Divider(color: Colors.grey,),
              const SizedBox(height: 10,),
              ProfileMenuWidget(title: tMenu6, icon: LineAwesomeIcons.helping_hands, onPress: (){},),
              const Divider(color: Colors.grey,),
              const SizedBox(height: 10,),
              ProfileMenuWidget(
                title: tMenu7,
                icon: LineAwesomeIcons.alternate_sign_out,
                textColor: Colors.red,
                endIcon: false,
                onPress: (){},
              ),
            ],
          ),
        ),
      ),
    );
  }
}

