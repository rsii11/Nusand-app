import 'package:flutter/material.dart';
import 'package:nusand_gr/widget/beneficiary_login.dart';
import 'package:nusand_gr/widget/donor_login.dart';


class Login extends StatelessWidget {
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
    return Material(
      color: const Color.fromRGBO(217, 217, 216, 1),
      child: Padding(
        padding: const EdgeInsets.all(7),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
              child: Image.asset(
                'assets/images/9.png',
                height: 225,
                width: 225,
              ),
            ),
            const SizedBox(height: 70),
            InkWell(
              onTap: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (context) => const DonorLogin()));
              },
              child: Container(
                margin: const EdgeInsets.symmetric(horizontal: 5, vertical: 7),
                padding: const EdgeInsets.all(15),
                decoration: BoxDecoration(
                  color: const Color.fromRGBO(165, 166, 165, 1),
                  borderRadius: BorderRadius.circular(30),
                ),
                child: const Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'متبرع',
                      style: TextStyle(
                          fontSize: 21,
                          fontWeight: FontWeight.bold,
                          color: Colors.black),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 17),
            InkWell(
              onTap: () {
                 Navigator.push(
                    context, MaterialPageRoute(builder: (context) => const BeneficiaryLogin()));
              },
              child: Container(
                margin: const EdgeInsets.symmetric(horizontal: 5, vertical: 7),
                padding: const EdgeInsets.all(15),
                decoration: BoxDecoration(
                  color: const Color.fromRGBO(165, 166, 165, 1),
                  borderRadius: BorderRadius.circular(30),
                ),
                child: const Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'مستفيد',
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
    );
  }
}
