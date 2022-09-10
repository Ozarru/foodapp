import 'package:flutter/material.dart';
// import 'package:provider/provider.dart';
// import 'package:firebase_core/firebase_core.dart';
import 'package:get/get.dart';
import 'pages/pages.dart';
import 'utils/utils.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Fusee',
      theme: customTheme(),
      initialRoute: '/',
      routes: {
        // auth routes--------------------------------------
        // '/signup': (context) => const SignUp(),
        // '/login': (context) => const Login(),
        // general routes-----------------------------------
        '/': (context) => const Intro(),
        '/core/auth': (context) => const Auth(),
        '/core/login': (context) => const Login(),
        '/core/tel_auth': (context) => const TelAuth(),
        '/core/tel_confirm': (context) => const TelConfirm(),
        '/core/tel_register': (context) => const TelRegister(),
        // '/eatries': (context) => const Eatries(),
        // '/couriers': (context) => const Couriers(),
        // '/menu': (context) => const Menu(),
        // '/settings': (context) => const Settings(),
        // '/notice': (context) => const Notifications(),
        // '/cart': (context) => const Cart(),
        // '/profile': (context) => const Profile(),
        // '/messages': (context) => const Messages(),
        // '/edit-profile': (context) => EditProfile(),
        // client routes------------------------------------
        '/client/home': (context) => const ClientHome(),
        // '/client-base': (context) => const ClientBase(),
        // '/client-home': (context) => const ClientHome(),
        // '/client-activity': (context) => const ClientActivity(),
        // courier routes-----------------------------------
        // '/courier-base': (context) => const CourierBase(),
        // '/courier-home': (context) => const CourierHome(),
        // '/courier-ativity': (context) => const CourierActivity(),
        // // restaurant-admin routes--------------------------
        // '/deliveries': (context) => const Deliveries(),
        // '/dashboard': (context) => const Dashboard(),
        // '/sales': (context) => const Sales(),
        // '/orders': (context) => const Orders(),
        // '/admin-base': (context) => const AdminHome(),
        // app superadmin routes----------------------------
        // '/superadmin-base': (context) => SuperadminBase(),
        // '/superadmin-home': (context) => SuperadminHome(),
        // '/superadmin-notice': (context) => SuperadminNotice(),
        // '/superadmin-board': (context) => SuperadminBoard(),
        // '/superadmin-settings': (context) => SuperadminSettings(),
      },
    );
  }
}
