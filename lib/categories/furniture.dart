import 'package:flutter/material.dart';

class Furniture extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('أثاث'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            buildImageWithButton(context, 'assets/images/1A.jpg',
                'طاولة طعام دائريه ب أربع كراسي سبب التبرع حجمها غير مناسب لي صغيره جدا'),
            buildImageWithButton(context, 'assets/images/2A.jpg',
                ' قطعة أريكه بيضاء حديثه سبب التبرع حجمها كبير'),
            buildImageWithButton(context, 'assets/images/3A.jpg',
                'طاوله مستديرة بسطح زجاجي مساحتها 80سم سبب التبرع عدم الحاجه لها'),
            buildImageWithButton(context, 'assets/images/4A.jpg',
                'كرسي اطفال + القاعده هزاز سبب التبرع عدم الحاجه اليه'),
            buildImageWithButton(context, 'assets/images/5A.jpg',
                'كرسي طقم انيق سبب التبرع اللون غير مناسب للمنزل'),
            buildImageWithButton(context, 'assets/images/6A.jpg',
                'طاولة استقبال مدخل سبب التبرع غير مناسبه للمنزل'),
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
