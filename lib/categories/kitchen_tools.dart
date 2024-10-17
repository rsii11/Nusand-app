import 'package:flutter/material.dart';

class KitchenTools extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('أدوات مطبخ'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            buildImageWithButton(context, 'assets/images/1D.jpg',
                'اله قهوه سبب التبرع عدم الحاجه لها'),
            buildImageWithButton(context, 'assets/images/2D.jpg',
                'خلاط كهربائي مده استخدامه خمس اشهر سبب التبرع توقف الخلاط عن العمل بشكل متكرر'),
            buildImageWithButton(context, 'assets/images/3D.jpg',
                'غساله مواعين مده الاستخدام سنه ويوجد فيها ضمان سبب التبرع الانتقال إلى منزل آخر يوجد فيه غساله'),
            buildImageWithButton(context, 'assets/images/4D.jpg',
                'ثلاجه مده الاستخدام عده اشهر فقط سبب التبرع التبريد المنخفض'),
            buildImageWithButton(context, 'assets/images/5D.jpg',
                'ميكرويف سبب التبرع مساحته صغيره'),
            buildImageWithButton(context, 'assets/images/6D.jpg',
                'فرن غاز مده استخدامه سنتين ونص سبب التبرع شراء فرن كهربائي'),
          ],
        ),
      ),
    );
  }

  Widget buildImageWithButton(
      BuildContext context, String imagePath, String buttonText) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Expanded(
                flex: 2, 
                child: TextButton(
                  onPressed: () {
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(content: Text('$buttonText تم الضغط على')),
                    );
                  },
                  child: Text(
                    buttonText,
                    style: const TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                        color: Colors.black),
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
              const SizedBox(width: 10), 
              Expanded(
                flex: 1, 
                child: Image.asset(imagePath, width: 140, height: 140),
              ),
            ],
          ),
          const SizedBox(height: 5), 
          GestureDetector(
            onTap: () {
              ScaffoldMessenger.of(context).showSnackBar(
                const SnackBar(content: Text('تم الاتصال بالجمعيات الخيرية')),
              );
            },
            child: const Row(
              children: [
                Icon(Icons.phone, color: Colors.black), 
                SizedBox(width: 5), 
                Text(
                  'الجمعية الخيرية',
                  style: TextStyle(
                    fontSize: 14,
                    color: Colors.black, 
                    decoration:
                        TextDecoration.underline, 
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
