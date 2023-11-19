import 'package:flutter/material.dart';
import 'package:flutter_application_3/page/loginPage.dart';
import 'package:shared_preferences/shared_preferences.dart';

// ignore: must_be_immutable
class DaftarPage extends StatelessWidget {
  DaftarPage({super.key, required this.prefs});
  bool ispasswordvisible = true;

  final SharedPreferences prefs;
  void save() async {
    await prefs.setString("email", nameController.text);
    await prefs.setString("password", passwordController.text);
    await prefs.setString("password", emailController.text);
  }

  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final TextEditingController nameController = TextEditingController();
  void tombolPassVisibilty() {
    setState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
      children: [
        Image.asset(
          "assets/images/baground_register.png",
          width: 279,
          height: 197,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 43),
          child: ListView(
            children: [
              const SizedBox(
                height: 100,
              ),
              const Center(
                child: Text(
                  "Selamat Bergabung !!",
                  style: TextStyle(
                      fontFamily: 'Poppins',
                      fontSize: 24,
                      fontWeight: FontWeight.w600),
                ),
              ),
              const Text(
                "Mari Persiapkan karir anda",
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w300,
                    fontSize: 16),
              ),
              const SizedBox(
                height: 76,
              ),
              textField(
                tittle: "nama Lengkap ",
                controller: nameController,
              ),
              const SizedBox(
                height: 20,
              ),
              textField(
                tittle: "alamat email",
                controller: emailController,
              ),
              const SizedBox(
                height: 20,
              ),
              TextField(
                controller: passwordController,
                obscureText: ispasswordvisible,
                decoration: InputDecoration(
                    suffixIcon: IconButton(
                      icon: Icon(ispasswordvisible
                          ? Icons.visibility
                          : Icons.visibility_off),
                      onPressed: () {
                        tombolPassVisibilty();
                      },
                    ),
                    hintText: "Password",
                    contentPadding: const EdgeInsets.all(14),
                    hintStyle: const TextStyle(
                        fontSize: 14,
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w400),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(40))),
              ),
              const SizedBox(
                height: 20,
              ),
              TextField(
                controller: passwordController,
                obscureText: ispasswordvisible,
                decoration: InputDecoration(
                    suffixIcon: IconButton(
                      icon: Icon(ispasswordvisible
                          ? Icons.visibility
                          : Icons.visibility_off),
                      onPressed: () {
                        tombolPassVisibilty();
                      },
                    ),
                    hintText: "Password",
                    contentPadding: const EdgeInsets.all(14),
                    hintStyle: const TextStyle(
                        fontSize: 14,
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w400),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(40))),
              ),
              const SizedBox(
                height: 20,
              ),
              const Text(
                "lupa Password",
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontFamily: 'Poppins',
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                    color: Color(0xff672CBC)),
              ),
              const SizedBox(
                height: 20,
              ),
              ElevatedButton(
                onPressed: () {
                  if (emailController.text.isNotEmpty &&
                      passwordController.text.isNotEmpty &&
                      nameController.text.isNotEmpty) {
                    Navigator.pushReplacementNamed(context, "/beranda");
                    save();
                  } else {
                    ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
                        content: Text("Semua field  harus diisi")));
                  }
                },
                style: ElevatedButton.styleFrom(
                    backgroundColor: const Color(0xff672CBC)),
                child: const Text(
                  "Daftar",
                  style: TextStyle(
                      color: Colors.white, fontFamily: 'Poppins', fontSize: 20),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    "Sudah Punya Akun??",
                    style: TextStyle(
                        fontSize: 16,
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w400),
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const LoginPage()));
                    },
                    child: const Text(
                      "Login",
                      style: TextStyle(
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.w600,
                          color: Color(0xff672CBC),
                          fontSize: 16),
                    ),
                  ),
                ],
              )
            ],
          ),
        )
      ],
    ));
  }

  void setState() {
    ispasswordvisible = !ispasswordvisible;
  }
}

class textField extends StatelessWidget {
  const textField({super.key, required this.tittle, required this.controller});

  final String tittle;
  final TextEditingController controller;

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
      decoration: InputDecoration(
          hintText: tittle,
          contentPadding: const EdgeInsets.all(10),
          hintStyle: const TextStyle(
              fontFamily: 'poppins', fontSize: 15, fontWeight: FontWeight.w400),
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(40))),
    );
  }
}
