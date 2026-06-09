import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'مشروع تدريب GitHub',
      theme: ThemeData(
        primarySwatch: Colors.teal,
        useMaterial3: true,
      ),
      home: const HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // 1. طلب الواجب: AppBar
      appBar: AppBar(
        title: const Text('معرض أعمالي الشخصي'),
        backgroundColor: Colors.teal,
        foregroundColor: Colors.white,
        centerTitle: true,
      ),
      backgroundColor: Colors.grey[100],
      // 2. الواجهة الرئيسية وقسم المعلومات الشخصية
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              // كرت معلومات الطالب الرئيسي
              Card(
                elevation: 4,
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
                child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Column(
                    children: [
                      const CircleAvatar(
                        radius: 40,
                        backgroundColor: Colors.teal,
                        child: Icon(Icons.person, size: 50, color: Colors.white),
                      ),
                      const SizedBox(height: 15),
                      const Text(
                        'اسم الطالب هنا ثنائياً/ثلاثياً',
                        style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                      ),
                      Text(
                        'مطور تطبيقات موبايل',
                        style: TextStyle(fontSize: 16, color: Colors.grey[600]),
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 20),
              const Text(
                'مهاراتي التقنية (قائمة Cards):',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 10),
              // 3. طلب الواجب: قائمة أو Cards
              _buildSkillCard('تطوير تطبيقات الموبايل باستخدام Flutter', Icons.phone_android),
              _buildSkillCard('إدارة النسخ والمستودعات باستخدام Git & GitHub', Icons.code),
              _buildSkillCard('تصميم واجهات المستخدم UI/UX', Icons.palette),
            ],
          ),
        ),
      ),
    );
  }

  // ودجت مخصصة لبناء الكروت بشكل منسق
  Widget _buildSkillCard(String skill, IconData icon) {
    return Card(
      margin: const EdgeInsets.symmetric(vertical: 6),
      child: ListTile(
        leading: Icon(icon, color: Colors.teal),
        title: Text(skill, style: const TextStyle(fontSize: 16)),
      ),
    );
  }
}