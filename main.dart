import 'package:flutter/material.dart';

void main() {
runApp(const CyberApp());
}

class CyberApp extends StatelessWidget {
const CyberApp({super.key});

@override
Widget build(BuildContext context) {
return MaterialApp(
debugShowCheckedModeBanner: false,
title: "Cyber Security",
theme: ThemeData(
primarySwatch: Colors.blue,
),
home: const HomePage(),
routes: {
'/about': (context) => const AboutPage(),
},
);
}
}

// الرئيسية
class HomePage extends StatelessWidget {
const HomePage({super.key});

@override
Widget build(BuildContext context) {
return Scaffold(
appBar: AppBar(
title: const Text("Cyber Security"),
centerTitle: true,
actions: [
IconButton(
icon: const Icon(Icons.info_outline),
onPressed: () {
Navigator.pushNamed(context, '/about');
},
),
],
),
body: SingleChildScrollView(
padding: const EdgeInsets.all(20),
child: Column(
crossAxisAlignment: CrossAxisAlignment.center,
children: [
const Icon(Icons.shield, size: 100, color: Colors.blue),
const SizedBox(height: 20),
const Text(
"Cyber Security Basics",
textAlign: TextAlign.center, // النص بالنص
style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
),
const SizedBox(height: 10),
const Text(
"Cyber security focuses on protecting systems, networks, "
"and data from digital attacks. It includes identifying "
"threats, preventing breaches, and responding to incidents.",
textAlign: TextAlign.center,
style: TextStyle(fontSize: 16, height: 1.5),
),
const SizedBox(height: 30),
ElevatedButton.icon(
onPressed: () {
Navigator.pushNamed(context, '/about');
},
icon: const Icon(Icons.arrow_forward),
label: const Text("Learn More"),
),
],
),
),
);
}
}

// صفحة About
class AboutPage extends StatelessWidget {
const AboutPage({super.key});

@override
Widget build(BuildContext context) {
return Scaffold(
appBar: AppBar(
title: const Text("About Cyber Security"),
centerTitle: true,
),
body: SingleChildScrollView(
padding: const EdgeInsets.all(20),
child: Column(
crossAxisAlignment: CrossAxisAlignment.start,
children: [
const Center(
child: Icon(Icons.security, size: 100, color: Colors.blue),
),
const SizedBox(height: 20),
const Text(
"What is Cyber Security?",
style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
),
const SizedBox(height: 10),
const Text(
"Cyber security is the practice of protecting systems, networks, and programs from digital attacks.",
style: TextStyle(fontSize: 16, height: 1.5),
),
const SizedBox(height: 20),
const Text(
"Key Areas:",
style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
),
const SizedBox(height: 10),
_buildKeyArea("🔒", "Network Security",
"Protecting network infrastructure from unauthorized access"),
_buildKeyArea("🛡️", "Application Security",
"Keeping software and devices free of threats"),
_buildKeyArea("📊", "Information Security",
"Protecting data integrity and privacy"),
_buildKeyArea("⚡", "Operational Security",
"Managing data handling and permissions"),
const SizedBox(height: 30),
Center(
child: ElevatedButton(
onPressed: () {
Navigator.pop(context);
},
child: const Text("Back to Home"),
),
),
],
),
),
);
}

Widget _buildKeyArea(String icon, String title, String description) {
return Padding(
padding: const EdgeInsets.only(bottom: 15),
child: Row(
crossAxisAlignment: CrossAxisAlignment.start,
children: [
Text(icon, style: const TextStyle(fontSize: 28)),
const SizedBox(width: 10),
Expanded(
child: Column(
crossAxisAlignment: CrossAxisAlignment.start,
children: [
Text(title,
style: const TextStyle(
fontSize: 16, fontWeight: FontWeight.bold)),
const SizedBox(height: 3),
Text(description, style: const TextStyle(fontSize: 14)),
],
),
),
],
),
);
}
} 