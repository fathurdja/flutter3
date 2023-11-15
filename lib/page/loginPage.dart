import 'package:flutter/material.dart';
import 'daftarPage.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  bool ispasswordvisible = true;

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
                SizedBox(
                  height: 137,
                ),
                Center(
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
                SizedBox(
                  height: 41,
                ),
                TextField(
                  decoration: InputDecoration(
                      hintText: "Alamat Email",
                      contentPadding: EdgeInsets.all(14),
                      hintStyle: TextStyle(
                          fontSize: 14,
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.w400),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(40))),
                ),
                SizedBox(height: 23),
                TextField(
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
                      contentPadding: EdgeInsets.all(14),
                      hintStyle: TextStyle(
                          fontSize: 14,
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.w400),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(40))),
                ),
                SizedBox(
                  height: 16,
                ),
                Text(
                  "Lupa Password",
                  style: TextStyle(
                      fontSize: 16,
                      color: Color(0xff672CBC),
                      fontWeight: FontWeight.w600),
                ),
                SizedBox(
                  height: 40,
                ),
                ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Color(0xff672CBC)),
                    onPressed: () {},
                    child: Text(
                      "Login",
                      style: TextStyle(color: Colors.white),
                    )),
                SizedBox(
                  height: 27,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Belum Punya Akun?",
                      style: TextStyle(
                          fontWeight: FontWeight.w400,
                          fontFamily: 'Poppins',
                          fontSize: 15),
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const DaftarPage(),
                            ));
                      },
                      child: Text(
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
                SizedBox(
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
