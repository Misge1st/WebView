import 'package:flutter/material.dart';

class About extends StatelessWidget {
  const About({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: Colors.grey,
          title: const Text(
            'About Us',
            style: TextStyle(
              color: Colors.white,
            ),
          )),
      body: Container(
        decoration: const BoxDecoration(
            image: DecorationImage(
                image:
                    AssetImage('lib/images/Screenshot 2024-08-13 101114.png'),
                fit: BoxFit.fill)),
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              // Header Image or Logo
              Center(
                child: Image.asset(
                  'lib/images/Screenshot 2024-08-13 100029.png',
                  // Replace with your logo or image
                  height: 150,
                ),
              ),
              const SizedBox(height: 20),

              // App Name and Slogan
              const Center(
                child: Text(
                  'UniSource',
                  style: TextStyle(
                      fontSize: 28,
                      fontWeight: FontWeight.bold,
                      color: Colors.deepOrange),
                ),
              ),
              const SizedBox(height: 10),
              const Center(
                child: Text(
                  'Empowering Your Experience',
                  style: TextStyle(
                    fontSize: 18,
                    fontStyle: FontStyle.italic,
                    color: Colors.grey,
                  ),
                ),
              ),
              const SizedBox(height: 30),

              // About Section
              const Text(
                'Who We Are',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 10),
              const Text(
                'We are a team of passionate developers and designers committed to delivering the best experience through our application. Our mission is to create intuitive and user-friendly solutions that empower our users.',
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.white,
                ),
              ),
              const SizedBox(height: 20),

              // Mission Section
              const Text(
                'Our Mission',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 10),
              const Text(
                '  My bookstore app is designed\n  specifically for students,\n  providing easy access to a wide\n  range of academic and\n  leisure reding materials. with a\n  user-friendly interface,\n  students can browse, purchase,\n  and even rent textbooks\n  and other study materials',
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.white,
                ),
              ),
              const SizedBox(height: 20),

              // Team Section
              const Text(
                'Meet the Team',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 10),
              const Text(
                'Our team consists of experienced professionals in various fields, from development and design to marketing and customer support. We are dedicated to working together to bring you the best possible experience.',
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.white,
                ),
              ),
              const SizedBox(height: 20),

              // Contact Information
              const Text(
                'Contact Us',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 10),
              const Text(
                'If you have any questions, suggestions, or feedback, feel free to reach out to us:',
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.white,
                ),
              ),
              const SizedBox(height: 10),
              const ListTile(
                leading: Icon(Icons.email),
                title: Text(
                  'Email: misge1stt.com',
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ), // Replace with your email
              ),
              const ListTile(
                leading: Icon(Icons.phone),
                title: Text(
                  'Phone: +251901356171',
                  style: TextStyle(
                    color: Colors.white,
                  ), // Replace with your phone number
                ),
              ),
              ListTile(
                leading: const Icon(Icons.web),
                title: const Text(
                  'Website: www.misanatsegaye.com',
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ), // Replace with your website
                onTap: () {
                  // Open website
                },
              ),
              const SizedBox(height: 30),

              // Footer or Additional Information
              const Center(
                child: Text(
                  '© 2024 Your Company Name. All rights reserved.',
                  style: TextStyle(color: Colors.grey),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
