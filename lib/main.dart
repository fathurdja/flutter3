import 'package:flutter/material.dart';
import 'package:flutter_application_3/page/beranda.dart';
import 'package:flutter_application_3/page/daftarPage.dart';
import 'package:flutter_application_3/page/loginPage.dart';
import 'package:shared_preferences/shared_preferences.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  final SharedPreferences prefs = await SharedPreferences.getInstance();
  runApp(MyApp(prefs: prefs));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key, required this.prefs});
  final SharedPreferences prefs;
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    bool getDataLogin() {
      final String email = prefs.getString('email') ?? "";
      final String password = prefs.getString('password') ?? "";
      final String name = prefs.getString('name') ?? "";
      return email.isNotEmpty && password.isNotEmpty && name.isNotEmpty;
    }

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: getDataLogin() ? "/beranda" : "/",
      routes: {
        "/": (context) => LoginPage(),
        "/daftar": (context) => DaftarPage(
              prefs: prefs,
            ),
        "/beranda": (context) => berandaPage()
      },
    );
  }
}
