import 'package:flutter/material.dart';
import 'package:flutter_application_3/page/loginPage.dart';

class DaftarPage extends StatefulWidget {
  const DaftarPage({super.key});

  @override
  State<DaftarPage> createState() => _DaftarPageState();
}

class _DaftarPageState extends State<DaftarPage> {
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
              TextField(
                decoration: InputDecoration(
                    hintText: "nama lengkap ",
                    contentPadding: const EdgeInsets.all(10),
                    hintStyle: const TextStyle(
                        fontFamily: 'poppins',
                        fontSize: 15,
                        fontWeight: FontWeight.w400),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(40))),
              ),
              const SizedBox(
                height: 20,
              ),
              TextField(
                decoration: InputDecoration(
                    hintText: "alamat email ",
                    contentPadding: const EdgeInsets.all(10),
                    hintStyle: const TextStyle(
                        fontFamily: 'poppins',
                        fontSize: 15,
                        fontWeight: FontWeight.w400),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(40))),
              ),
              const SizedBox(
                height: 20,
              ),
              TextField(
                decoration: InputDecoration(
                    hintText: " password",
                    contentPadding: const EdgeInsets.all(10),
                    hintStyle: const TextStyle(
                        fontFamily: 'poppins',
                        fontSize: 15,
                        fontWeight: FontWeight.w400),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(40))),
              ),
              const SizedBox(
                height: 20,
              ),
              TextField(
                decoration: InputDecoration(
                    hintText: "confirm password",
                    contentPadding: const EdgeInsets.all(10),
                    hintStyle: const TextStyle(
                        fontFamily: 'poppins',
                        fontSize: 15,
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
                onPressed: () {},
                child: const Text(
                  "Daftar",
                  style: TextStyle(
                      color: Colors.white, fontFamily: 'Poppins', fontSize: 20),
                ),
                style: ElevatedButton.styleFrom(
                    backgroundColor: const Color(0xff672CBC)),
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
}
