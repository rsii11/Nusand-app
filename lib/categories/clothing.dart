import 'package:flutter/material.dart';

class Clothing extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('ملابس'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            buildImageWithButton(context, 'assets/images/1C.jpg',
                'لبس طفلة من عمر ٦ شهور الى سنه سبب التبرع عدم الاحتياج'),
            buildImageWithButton(context, 'assets/images/2C.jpg',
                'مريول مدرسي للثانوي سبب التبرع كبير المقاس'),
            buildImageWithButton(context, 'assets/images/3C.jpg',
                'جزمة رياضيه مريحه جداً للمشي مقاس 36 سبب التبرع عدم الحاجه'),
            buildImageWithButton(context, 'assets/images/4C.jpg',
                'مريول مدرسي للابتدائي به قطع من الكتف خفيف سبب التبرع عدم الحاجه'),
            buildImageWithButton(context, 'assets/images/5C.jpg',
                'فستان ازرق ليس به اي عيوب سبب التبرع قصير الطول'),
            buildImageWithButton(context, 'assets/images/6C.jpg',
                'كعب مقاس 40 لا يوجد به اي عيوب سبب التبرع ليس نفس المقاس'),
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
