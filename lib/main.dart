import 'package:flutter/material.dart';
import 'pages/ai_chat_page.dart';   // ← เพิ่มบรรทัดนี้

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'โปรไฟล์ของฉัน',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.indigo),
        useMaterial3: true,
      ),
      home: const ProfilePage(),
    );
  }
}

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('โปรไฟล์ของฉัน'),
        backgroundColor: Colors.indigo,
        foregroundColor: Colors.white,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(height: 20),
            
            const CircleAvatar(
              radius: 60,
              backgroundColor: Colors.indigo,
              child: Icon(Icons.person, size: 60, color: Colors.white),
            ),
            
            const SizedBox(height: 16),
            
            const Text(
              'ปิยะวิทย์ พลศรี',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            
            const SizedBox(height: 8),
            
            const Text(
              'รหัสนักศึกษา: 67030142',
              style: TextStyle(fontSize: 16, color: Colors.grey),
            ),
            
            const SizedBox(height: 24),
            
            Card(
              elevation: 4,
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  children: [
                    _buildInfoRow(Icons.school, 'คณะ', 'ครุศาสตร์อุตสาหกรรมและเทคโนโลยี'),
                    const Divider(),
                    _buildInfoRow(Icons.laptop_mac, 'ความสนใจพิเศษ', 'Software Testing, Flutter, AI'),
                    const Divider(),
                    _buildInfoRow(Icons.terminal, 'โปรเจกต์ที่กำลังทำ', 'Mongjai Project'),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 24),
            ElevatedButton.icon(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const AiChatPage(),
                  ),
                );
              },
              icon: const Icon(Icons.smart_toy),
              label: const Text('ทดลอง AI Chat'),
            ),
          ],
        ),
      ),
    );
  }
  
  Widget _buildInfoRow(IconData icon, String label, String value) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Row(
        children: [
          Icon(icon, color: Colors.indigo),
          const SizedBox(width: 12),
          Text(
            '$label: ',
            style: const TextStyle(fontWeight: FontWeight.bold),
          ),
          Expanded(child: Text(value)),
        ],
      ),
    );
  }
}