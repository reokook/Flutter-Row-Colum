import 'package:flutter/material.dart';
// import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(StudentApp());
}

class StudentCard extends StatelessWidget {
  final String name;
  final String imagePath;

  const StudentCard({
    Key? key,
    required this.name,
    required this.imagePath,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        leading: Image.asset(imagePath),
        title: Text(name),
      ),
    );
  }
}

class StudentApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Student List',
      debugShowCheckedModeBanner: false,
      home: StudentListPage(),
    );
  }
}

class StudentListPage extends StatelessWidget {
  final List<Map<String, String>> students = [
    {"name": "Rana", "image": "assets/images/photo.jpeg"},
    {"name": "Valiry", "image": "assets/images/photo.jpeg"},
    {"name": "Najwa", "image": "assets/images/photo.jpeg"},
    {"name": "Reo", "image": "assets/images/photo.jpeg"},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Student List'),
        backgroundColor: const Color.fromARGB(255, 255, 169, 236),
      ),
      body: ListView.builder(
        itemCount: students.length,
        itemBuilder: (context, index) {
          return StudentCard(
            name: students[index]['name']!,
            imagePath: students[index]['image']!,
          );
        },
      ),
    );
  }
}
