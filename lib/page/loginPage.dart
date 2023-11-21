import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  bool ispasswordvisible = true;
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passController = TextEditingController();
  final FirebaseAuth _auth = FirebaseAuth.instance;
  void tombolPassVisibilty() {
    setState(() {
      ispasswordvisible = !ispasswordvisible;
    });
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
            padding: const EdgeInsets.symmetric(
              horizontal: 43,
            ),
            child: ListView(
              children: [
                const SizedBox(
                  height: 120,
                ),
                const Center(
                  child: Text(
                    "Selamat datang\nkembali!!",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontSize: 28,
                        fontWeight: FontWeight.w600,
                        fontFamily: 'Poppins'),
                  ),
                ),
                Image.asset(
                  "assets/images/studying.png",
                  width: 310,
                  height: 231,
                ),
                const SizedBox(
                  height: 41,
                ),
                textField(
                  controller: emailController,
                  tittle: "alamat email",
                ),
                const SizedBox(height: 23),
                TextField(
                  controller: passController,
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
                  height: 16,
                ),
                const Text(
                  "Lupa Password",
                  style: TextStyle(
                      fontSize: 16,
                      color: Color(0xff672CBC),
                      fontWeight: FontWeight.w600),
                ),
                const SizedBox(
                  height: 40,
                ),
                ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        backgroundColor: const Color(0xff672CBC)),
                    onPressed: () async {
                      if (emailController.text.isNotEmpty &&
                          passController.text.isNotEmpty) {
                        await _auth.createUserWithEmailAndPassword(
                            email: emailController.text,
                            password: passController.text);
                        Navigator.pushReplacementNamed(context, "/beranda");
                      } else {
                        ScaffoldMessenger.of(context).showSnackBar(
                            const SnackBar(
                                content: Text("semua field harus di isi")));
                      }
                    },
                    child: const Text(
                      "Login",
                      style: TextStyle(color: Colors.white),
                    )),
                const SizedBox(
                  height: 27,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text(
                      "Belum Punya Akun?",
                      style: TextStyle(
                          fontWeight: FontWeight.w400,
                          fontFamily: 'Poppins',
                          fontSize: 15),
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.pushReplacementNamed(context, "/daftar");
                      },
                      child: const Text(
                        "Daftar",
                        style: TextStyle(
                            fontFamily: 'Poppins',
                            fontSize: 15,
                            fontWeight: FontWeight.w600,
                            color: Color(0xff672CBC)),
                      ),
                    )
                  ],
                ),
                const SizedBox(
                  height: 80,
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}

class textField extends StatelessWidget {
  const textField({super.key, required this.controller, required this.tittle});
  final String tittle;
  final TextEditingController controller;

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
      decoration: InputDecoration(
          hintText: tittle,
          contentPadding: const EdgeInsets.all(14),
          hintStyle: const TextStyle(
              fontSize: 14, fontFamily: 'Poppins', fontWeight: FontWeight.w400),
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(40))),
    );
  }
}
