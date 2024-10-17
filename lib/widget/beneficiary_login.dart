import 'package:flutter/material.dart';
import 'package:nusand_gr/widget/beneficiary_page.dart';
import '../provider.dart';

class BeneficiaryLogin extends StatefulWidget {
  const BeneficiaryLogin({super.key});

  @override
  State<BeneficiaryLogin> createState() => _BeneficiaryLoginState();
}

class _BeneficiaryLoginState extends State<BeneficiaryLogin> {
  final TextEditingController nameController = TextEditingController();
  final TextEditingController idController = TextEditingController();

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
                        controller: nameController,
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
                        controller: idController,
                        textAlign: TextAlign.right,
                        decoration: const InputDecoration(
                          hintText: 'الهوية الوطنية',
                          hintStyle: TextStyle(
                            color: Colors.black54,
                          ),
                          prefixIcon: Icon(Icons.assignment),
                          border: OutlineInputBorder(
                              borderSide: BorderSide()),
                        ),
                      ),
                    ),
                    const SizedBox(height: 50),

                    InkWell(
                      onTap: () {
                        List<Beneficiary> beneficiaries = Beneficiary.getAllBeneficiaries();
                        bool isValidUser = beneficiaries.any((beneficiary) =>
                            beneficiary.name == nameController.text &&
                            beneficiary.id == idController.text);

                        if (isValidUser) {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const BeneficiaryPage(),
                            ),
                          );
                        } else {
                          ScaffoldMessenger.of(context).showSnackBar(
                            const SnackBar(
                              content: Text('الاسم أو الهوية الوطنية غير صحيحة'),
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