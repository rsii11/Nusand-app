import 'package:flutter/material.dart';
import 'package:nusand_gr/widget/welcome_widget.dart';
bool isSecured = true;

class CreateAccount extends StatefulWidget {
  const CreateAccount({super.key});

  @override
  State<CreateAccount> createState() => _CreateAccountState();
}

class _CreateAccountState extends State<CreateAccount> {
  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: const Color.fromRGBO(217, 217, 216, 1),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 110),
          child: Column(
            children: [
              Center(
                child: Image.asset(
                  'assets/images/9.png',
                  height: 150,
                  width: 150,
                ),
              ),
              const SizedBox(height: 50),
              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 10,
                ),
                child: Column(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: const Color.fromRGBO(165, 166, 165, 1),
                        ),
                      ),
                      width: screenWidth - 40,
                      child: TextFormField(
                        textAlign: TextAlign.right,
                        decoration: const InputDecoration(
                          hintText: 'الاسم',
                          hintStyle: TextStyle(
                            color: Colors.black54,
                          ),
                          prefixIcon: Icon(Icons.person),
                          border: OutlineInputBorder(borderSide: BorderSide()),
                        ),
                      ),
                    ),
                    const SizedBox(height: 30),
                    Container(
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: const Color.fromRGBO(165, 166, 165, 1),
                        ),
                      ),
                      width: screenWidth - 40,
                      child: TextFormField(
                        textAlign: TextAlign.right,
                        decoration: const InputDecoration(
                          prefixIcon: Icon(Icons.email),
                          hintText: 'الإيميل',
                          hintStyle: TextStyle(
                            color: Colors.black54,
                          ),
                          border: OutlineInputBorder(borderSide: BorderSide()),
                        ),
                      ),
                    ),
                    const SizedBox(height: 30),
                    Container(
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: const Color.fromRGBO(165, 166, 165, 1),
                        ),
                      ),
                      width: screenWidth - 40,
                      child: TextFormField(
                        textAlign: TextAlign.right,
                        obscureText: isSecured,
                        decoration: InputDecoration(
                          suffixIcon: const Icon(Icons.lock),
                          prefixIcon: IconButton(
                            onPressed: () {
                              setState(() {
                                isSecured = !isSecured;
                              });
                            },
                            icon: const Icon(Icons.remove_red_eye),
                          ),
                          hintText: 'الرقم السري',
                          hintStyle: const TextStyle(
                            color: Colors.black54,
                          ),
                          border: const OutlineInputBorder(
                              borderSide: BorderSide()),
                        ),
                      ),
                    ),
                    const SizedBox(height: 50),
                    InkWell(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const WelcomeWidget()));
                      },
                      child: Container(
                        margin: const EdgeInsets.symmetric(
                            horizontal: 20, vertical: 5),
                        padding: const EdgeInsets.all(15),
                        decoration: BoxDecoration(
                          color: const Color.fromRGBO(165, 166, 165, 1),
                          borderRadius: BorderRadius.circular(30),
                        ),
                        child: const Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              'إنشاء حساب',
                              style: TextStyle(
                                  fontSize: 21,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
