import 'package:flutter/material.dart';

class Electronics extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('إلكترونيات'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            buildImageWithButton(context, 'assets/images/1B.jpg',
                'كاميرا نوع كانون بمواصفات متوسطه سبب التبرع لا تطابق احتياجاتي'),
            buildImageWithButton(context, 'assets/images/2B.jpg',
                'سوني 5 يوجد فيه كسر بسيط وبعض التعليق سبب التبرع شراء واحد جديد'),
            buildImageWithButton(context, 'assets/images/3B.jpg',
                'جوال ايفون 6 يوجد كسر في الشاشه سبب التبرع مساحه الجوال قليله'),
            buildImageWithButton(context, 'assets/images/4B.jpg',
                'ايباد الجيل العاشر مع المستلزمات سبب التبرع عطل في البطاريه'),
            buildImageWithButton(context, 'assets/images/5B.jpg',
                'شاشه بحجم 55 بوصه لا يوجد فيها آي كسر سبب التبرع عدم الحاجه اليها'),
            buildImageWithButton(context, 'assets/images/6B.jpg',
                'كمبيوتر بمواصفات جيده سبب التبرع ذاكره الجهاز ضعيفه'),
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
