import 'package:flutter/material.dart';
import 'package:nusand_gr/widget/donor_page.dart';
import '../provider.dart';

bool isSecured = true;

class DonorLogin extends StatefulWidget {
  const DonorLogin({super.key});

  @override
  State<DonorLogin> createState() => _DonorLoginState();
}

class _DonorLoginState extends State<DonorLogin> {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: const Color.fromRGBO(217, 217, 216, 1),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 160),
          child: Column(
            children: [
              Center(
                child: Image.asset(
                  'assets/images/9.png',
                  height: 200,
                  width: 200,
                ),
              ),
              const SizedBox(height: 50),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
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
                        controller: emailController,
                        textAlign: TextAlign.right,
                        decoration: const InputDecoration(
                          hintText: 'البريد الإلكتروني',
                          hintStyle: TextStyle(
                            color: Colors.black54,
                          ),
                          prefixIcon: Icon(Icons.email),
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
                        controller: passwordController,
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
                        List<Donor> donors = Donor.getAllDonors();
                        bool isValidUser = donors.any((donor) =>
                            donor.email == emailController.text &&
                            donor.password == passwordController.text);

                        if (isValidUser) {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const DonorPage(),
                            ),
                          );
                        } else {
                          ScaffoldMessenger.of(context).showSnackBar(
                            const SnackBar(
                              content: Text('البريد الإلكتروني أو الرقم السري غير صحيح'),
                            ),
                          );
                        }
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
                              'دخول',
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