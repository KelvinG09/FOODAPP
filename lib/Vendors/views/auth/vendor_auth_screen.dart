import 'package:firebase_auth/firebase_auth.dart' hide EmailAuthProvider;
import 'package:flutter/material.dart';
import 'package:firebase_ui_auth/firebase_ui_auth.dart';

import '../../../../views/buyers/Landing/landing_screen.dart';


class VendorAuthScreen extends StatelessWidget {
  const VendorAuthScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return StreamBuilder<User?>(stream: FirebaseAuth.instance.authStateChanges(),
        initialData: FirebaseAuth.instance.currentUser,
        builder: (context, snapshot){
      if (!snapshot.hasData){
        return SignInScreen(
          providers:[
            EmailAuthProvider(),
          ],
        );
      }
      return LandingScreen();
      //return VendorRegistrationScreen();
        }
        );
  }
}
