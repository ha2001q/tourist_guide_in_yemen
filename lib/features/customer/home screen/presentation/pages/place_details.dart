import 'package:flutter/material.dart';
import 'package:tourist_guide_in_yemen/features/customer/add_comments/add_comments.dart';

class PlaceDetails extends StatefulWidget {
  const PlaceDetails({super.key});

  @override
  State<PlaceDetails> createState() => _PlaceDetailsState();
}

class _PlaceDetailsState extends State<PlaceDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(

          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // صورة المكان مع زر العودة وزر المفضلة
            Stack(
              children: [
                // صورة المكان
                Container(
                  height: 300,
                  width: double.infinity,
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage('assets/images/logo_icon.jpg'), // ضع مسار الصورة الخاصة بك
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                // زر العودة
                Positioned(
                  top: 50,
                  left: 20,
                  child: InkWell(
                    onTap: () => Navigator.pop(context),
                    child: Container(
                      padding: const EdgeInsets.all(8),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: const Icon(Icons.arrow_back),
                    ),
                  ),
                ),
                // زر المفضلة
                Positioned(
                  bottom: 20,
                  left: 20,
                  child: Container(
                    padding: const EdgeInsets.all(8),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: const Icon(
                      Icons.favorite_border,
                      color: Color(0xFFE17055),
                    ),
                  ),
                ),
              ],
            ),

            // تفاصيل المكان
            Padding(
              padding: const EdgeInsets.all(20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // الموقع
                  Row(
                    children: [
                      const Icon(
                        Icons.location_on,
                        color: Color(0xFFE17055),
                        size: 20,
                      ),
                      const SizedBox(width: 5),
                      Text(
                        'صنعاء، حراز',
                        style: TextStyle(
                          color: Colors.grey[600],
                          fontSize: 16,
                        ),
                      ),
                    ],
                  ),

                  const SizedBox(height: 15),

                  // اسم المكان
                  const Text(
                    'جبل النبي شعيب',
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                  ),

                  const SizedBox(height: 15),

                  // الوصف
                  Text(
                    'جبل النبي شعيب هو أعلى قمة جبلية في اليمن والجزيرة العربية، يقع في محافظة صنعاء بمنطقة حراز. يرتفع الجبل إلى 3666 متراً عن سطح البحر.',
                    style: TextStyle(
                      color: Colors.grey[600],
                      fontSize: 16,
                      height: 1.5,
                    ),
                  ),

                  const SizedBox(height: 20),

                  // التقييم والوقت
                  Row(
                    children: [
                      const Icon(Icons.star, color: Colors.amber, size: 20),
                      InkWell(
                        onTap: (){
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context)=>AddComments())
                          );
                        },
                          child: const Text(' 4.0')),
                      const SizedBox(width: 20),
                      TextButton(
                        onPressed: () {
                          // Navigator.push(
                          //     context,
                          //     MaterialPageRoute(
                          //         builder: (context) => const Star() )
                          // );
                        },
                        child: const Text(
                          'قراءة التعليقات',
                          style: TextStyle(color: Color(0xFFE17055)),
                        ),
                      ),
                      const Spacer(),
                      const Icon(Icons.time_to_leave, size: 20),
                      const Text(' 30 دقيقة بالسيارة'),
                    ],
                  ),

                  const SizedBox(height: 30),

                  // عنوان الخدمات
                  const Text(
                    'الخدمات في جبل النبي شعيب',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),

                  const SizedBox(height: 20),

                  // قائمة الخدمات
                  _buildServiceCard(
                    'مقهى حراز',
                    'اليمن، صنعاء، بيت بوس',
                    'مطاعم',
                  ),

                  const SizedBox(height: 15),

                  _buildServiceCard(
                    'استراحة الجبل',
                    'اليمن، صنعاء، حراز',
                    'استراحات',
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      // زر عرض المسار
      bottomNavigationBar: Container(
        padding: const EdgeInsets.all(20),
        child: ElevatedButton(
          onPressed: () {
            // هنا يمكنك إضافة كود فتح الخريطة أو عرض المسار
            // Navigator.pushReplacement(
            //   context,
            //   MaterialPageRoute(
            //     builder: (context) => const Googlmap(),
            //   ),
            // );
          },
          style: ElevatedButton.styleFrom(
            backgroundColor: const Color(0xFFE17055),
            minimumSize: const Size(double.infinity, 50),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            ),
          ),
          child: const Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(Icons.map_outlined),
              SizedBox(width: 10),
              Text(
                'عرض المسار',
                style: TextStyle(fontSize: 18),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildServiceCard(String title, String location, String type) {
    return Container(
      padding: const EdgeInsets.all(15),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(15),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.1),
            spreadRadius: 1,
            blurRadius: 5,
          ),
        ],
      ),
      child: Row(
        children: [
          Container(
            width: 60,
            height: 60,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              image: const DecorationImage(
                image: AssetImage('assets/mountain.jpg'), // ضع مسار الصورة الخاصة بك
                fit: BoxFit.cover,
              ),
            ),
          ),
          const SizedBox(width: 15),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  type,
                  style: TextStyle(
                    color: Colors.grey[600],
                    fontSize: 14,
                  ),
                ),
                const SizedBox(height: 5),
                Text(
                  title,
                  style: const TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 5),
                Text(
                  location,
                  style: TextStyle(
                    color: Colors.grey[600],
                    fontSize: 14,
                  ),
                ),
              ],
            ),
          ),
          const Icon(Icons.arrow_forward_ios, size: 20),
        ],
      ),
    );
  }
}
