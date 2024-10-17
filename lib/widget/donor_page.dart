import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DonorPage extends StatefulWidget {
  const DonorPage({super.key});

  @override
  State<DonorPage> createState() => _DonorPageState();
}

class _DonorPageState extends State<DonorPage> {
  List<String> categories = [
    "أثاث",
    "إلكترونيات",
    "ملابس",
    "أدوات مطبخ",
  ];
  List<String> cities = ["الرياض", "الباحة", "مكة المكرمة", "جدة", "حائل"];
  int selectedIndex = 0;
  int selectedIndex2= 0;

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: const Color.fromRGBO(217, 217, 216, 1),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 70),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Center(
                child: Image.asset(
                  'assets/images/9.png',
                  height: 100,
                  width: 100,
                ),
              ),
              const SizedBox(height: 3),
              const Text(
                'مرحبًا بالمتبرع!',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 3),
              const Text(
                'شكراً لك على استعدادك للتبرع. نحن نقدر مساهمتك.',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 18,
                  color: Colors.black54,
                ),
              ),
              const SizedBox(height: 15),

              SizedBox(
                height: 80,
                child: CupertinoPicker(
                  backgroundColor: const Color.fromRGBO(194, 192, 192, 1),
                  itemExtent: 40.0,
                  onSelectedItemChanged: (int index) {
                    setState(() {
                      selectedIndex = index;
                    });
                  },
                  children:
                      List<Widget>.generate(categories.length, (int index) {
                    return Center(
                      child: Text(
                        categories[index],
                        style: const TextStyle(fontSize: 20),
                      ),
                    );
                  }),
                ),
              ),
              const SizedBox(height: 10),
              Text(
                'الفئة المختارة: ${categories[selectedIndex]}',
                style: const TextStyle(
                  fontSize: 17,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.photo,
                      color: Colors.black,
                      size: 70,
                    ),
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.add_a_photo_rounded,
                      color: Colors.black,
                      size: 70,
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 7,
              ),
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
                        textAlign: TextAlign.right,
                        decoration: const InputDecoration(
                          hintText: 'وصف المنتج',
                          hintStyle: TextStyle(
                            color: Colors.black54,
                          ),
                          border: OutlineInputBorder(borderSide: BorderSide()),
                        ),
                      ),
                    ),
                    const SizedBox(height: 14),

                    SizedBox(
                      height: 80,
                      child: CupertinoPicker(
                        backgroundColor: const Color.fromRGBO(194, 192, 192, 1),
                        itemExtent: 40.0,
                        onSelectedItemChanged: (int index) {
                          setState(() {
                            selectedIndex2 = index;
                          });
                        },
                        children:
                            List<Widget>.generate(cities.length, (int index) {
                          return Center(
                            child: Text(
                              cities[index],
                              style: const TextStyle(fontSize: 20),
                            ),
                          );
                        }),
                      ),
                    ),
                    const SizedBox(height: 10),
                    Text(
                      'الفئة المختارة: ${cities[selectedIndex2]}',
                      style: const TextStyle(
                        fontSize: 17,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(height: 15),
                    InkWell(
                      onTap: () {},
                      child: Container(
                        margin: const EdgeInsets.symmetric(
                            horizontal: 35, vertical: 10),
                        padding: const EdgeInsets.all(10),
                        decoration: BoxDecoration(
                          color: const Color.fromRGBO(165, 166, 165, 1),
                          borderRadius: BorderRadius.circular(30),
                        ),
                        child: const Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              'إضافة التبرع',
                              style: TextStyle(
                                  fontSize: 18,
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