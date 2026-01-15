import 'package:flutter/material.dart';

void main() {
  runApp(const MyProfileApp());
}

class MyProfileApp extends StatelessWidget {
  const MyProfileApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Simple User Profile',
      theme: ThemeData(colorScheme: .fromSeed(seedColor: Colors.deepPurple)),
      home: const ProfileScreen(),
    );
  }
}

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: const Center(
        child: SingleChildScrollView(
          padding: EdgeInsets.symmetric(horizontal: 20),
          child: UserProfileCard(),
        ),
      ),
    );
  }
}

class UserProfileCard extends StatelessWidget {
  const UserProfileCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 4,
      margin: EdgeInsets.all(16),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadiusGeometry.circular(15),
      ),
      child: Padding(
        padding: EdgeInsets.all(20),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            // Heading - Avatar, Name
            CircleAvatar(
              radius: 50,
              backgroundColor: Theme.of(context).primaryColor,
              child: Icon(Icons.person, size: 50, color: Colors.white),
            ),
            SizedBox(height: 15),
            Text(
              "Ahmed Sahigara",
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
            ),
            Divider(height: 30, thickness: 1),

            // Details
            // 1. Designation
            DetailTile(
              icon: Icons.work_outline,
              title: "Technical Lead",
              label: "Designation",
            ),
            // 2. Company
            DetailTile(
              icon: Icons.business,
              title: "XYZ Infotech Solutions",
              label: "Company",
            ),
            // 3. Experience
            DetailTile(
              icon: Icons.timeline,
              title: "8+ Years",
              label: "Experience",
            ),
          ],
        ),
      ),
    );
  }
}

class DetailTile extends StatelessWidget {
  final IconData icon;
  final String title;
  final String label;

  const DetailTile({
    super.key,
    required this.icon,
    required this.title,
    required this.label,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Icon(icon, color: Theme.of(context).primaryColor),
      title: Text(title, style: const TextStyle(fontWeight: FontWeight.w500)),
      subtitle: Text(label),
    );
  }
}
