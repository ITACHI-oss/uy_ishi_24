import 'package:flutter/material.dart';

void main() {
  runApp(MainApp());
}

class MainApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: ProfileScreen(),
    );
  }
}

class ProfileScreen extends StatelessWidget {
  Widget getInterestTag({required String text, required IconData icon}) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
      margin: EdgeInsets.only(right: 8),
      decoration: BoxDecoration(
        color: Colors.grey[200],
        borderRadius: BorderRadius.circular(12),
      ),
      child: Row(
        children: [
          Icon(icon, size: 16, color: Colors.black),
          SizedBox(width: 5),
          Text(text, style: TextStyle(color: Colors.black)),
        ],
      ),
    );
  }

  Widget getExperienceCard(
      {required String company,
      required String role,
      required String years,
      required IconData icon}) {
    return Container(
      padding: EdgeInsets.all(10),
      margin: EdgeInsets.only(bottom: 10),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
        border: Border.all(color: Colors.grey[300]!),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Icon(icon, color: Colors.green),
                  SizedBox(width: 5),
                  Text(company, style: TextStyle(fontWeight: FontWeight.bold)),
                ],
              ),
              Text(years, style: TextStyle(color: Colors.blue)),
            ],
          ),
          SizedBox(height: 5),
          Row(
            children: [
              Icon(Icons.work, size: 16, color: Colors.black),
              SizedBox(width: 5),
              Text(role, style: TextStyle(fontWeight: FontWeight.bold)),
            ],
          ),
          SizedBox(height: 5),
          Text(
            "Lorem ipsum dolor sit amet, consectetur adipiscing elit.",
            style: TextStyle(color: Colors.black),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 17, 113, 192),
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back,
            color: (Colors.white),
          ),
          onPressed: () {},
        ),
        actions: [
          IconButton(
            icon: Icon(Icons.menu, color: Colors.white),
            onPressed: () {},
          ),
        ],
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(16),
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(16),
              ),
              child: Column(
                children: [
                  Row(
                    children: [
                      CircleAvatar(
                        radius: 40,
                        backgroundImage: AssetImage('assets/images/rasm.jpg'),
                      ),
                      SizedBox(width: 15),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("John Doe",
                              style: TextStyle(
                                  fontSize: 20, fontWeight: FontWeight.bold)),
                          Text("UX Designer",
                              style: TextStyle(color: Colors.black)),
                          SizedBox(height: 5),
                          Row(
                            children: [
                              Icon(Icons.sports_basketball, color: Colors.pink),
                              Icon(Icons.facebook, color: Colors.blue),
                              Icon(Icons.language, color: Colors.blue),
                            ],
                          ),
                        ],
                      ),
                      Spacer(),
                      Row(
                        children: [
                          Icon(Icons.location_on, color: Colors.black),
                          SizedBox(width: 5),
                          Text("Canada", style: TextStyle(color: Colors.black)),
                        ],
                      ),
                    ],
                  ),
                  SizedBox(height: 10),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Text("Interests",
                        style: TextStyle(fontWeight: FontWeight.bold)),
                  ),
                  SizedBox(height: 5),
                  Row(
                    children: [
                      getInterestTag(text: "Trekking", icon: Icons.terrain),
                      getInterestTag(
                          text: "Running", icon: Icons.directions_run),
                      getInterestTag(text: "Coding", icon: Icons.code),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(height: 20),
            Container(
              padding: EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(16),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Resume",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 20)),
                  ListTile(
                    leading: Icon(Icons.insert_drive_file),
                    title: Text("John Doe CV"),
                    trailing: Icon(Icons.download),
                  ),
                ],
              ),
            ),
            SizedBox(height: 20),
            Container(
              padding: EdgeInsets.all(15),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(15),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Experience",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 20)),
                  SizedBox(height: 10),
                  getExperienceCard(
                      company: "Business Name",
                      role: "UX/UI Designer",
                      years: "2020 - 2022",
                      icon: Icons.business),
                  getExperienceCard(
                      company: "Business Name",
                      role: "UX Researcher",
                      years: "2019 - 2020",
                      icon: Icons.business),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
