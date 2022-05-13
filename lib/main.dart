import 'package:flutter/material.dart';
import 'package:untitled/screens/chat_screen.dart';
import 'package:untitled/screens/login_screen.dart';
import 'package:untitled/screens/registration_screen.dart';
import 'screens/welcome_screen.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:untitled/firebase_options.dart';

Future main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const FlashChat());
}

class FlashChat extends StatelessWidget {
  const FlashChat({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      // theme: ThemeData.dark().copyWith(
      //   textTheme: TextTheme(
      //     bodyText2: TextStyle(
      //       color: Colors.black54,
      //     ),
      //   ),
      // ),
      initialRoute: WelcomeScreen.id,
      routes: {
        WelcomeScreen.id :(context){
          return WelcomeScreen();
        },
        LoginScreen.id :(context){
          return LoginScreen();
        },
        RegistrationScreen.id :(context){
          return RegistrationScreen();
        },
        ChatScreen.id :(context){
          return ChatScreen();
        },
      },
    );
  }
}
