// lib/features/home/screens/profile_screen.dart
import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:stridehub/core/constants/colors.dart';
import 'package:stridehub/routes/app_routes.dart';

class ProfileScreen extends StatelessWidget {
  final FirebaseAuth _auth = FirebaseAuth.instance;

  Future<void> _logout(BuildContext context) async {
    await _auth.signOut();
    Navigator.pushReplacementNamed(context, AppRoutes.login);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Text(
              "Profile",
              style: GoogleFonts.dosis(
                fontSize: 30,
                fontWeight: FontWeight.bold,
                color: AppColors.textColor,
              ),
            ),
          ],
        ),
        elevation: 0,
        bottom: PreferredSize(
          preferredSize: Size.fromHeight(1),
          child: Container(
            decoration: BoxDecoration(
              border: Border(
                bottom: BorderSide(
                  color: AppColors.dividerColor,
                  width: 1,
                ),
              ),
            ),
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(
                child: CircleAvatar(
                  radius: 50,
                  backgroundImage: AssetImage('assets/images/profile_picture.png'), // Replace with actual image path
                ),
              ),
              SizedBox(height: 10),
              Center(
                child: Text(
                  'John Doe',
                  style: GoogleFonts.dosis(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    color: AppColors.textColor,
                  ),
                ),
              ),
              SizedBox(height: 5),
              Center(
                child: Text(
                  'john.doe@example.com',
                  style: GoogleFonts.dosis(
                    fontSize: 16,
                    color: AppColors.textColor,
                  ),
                ),
              ),
              SizedBox(height: 20),
              Text(
                'Statistics',
                style: GoogleFonts.dosis(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: AppColors.textColor,
                ),
              ),
              SizedBox(height: 10),
              Card(
                child: ListTile(
                  leading: Icon(Icons.directions_run, color: AppColors.primaryColor),
                  title: Text('Total Distance'),
                  subtitle: Text('150 km'),
                ),
              ),
              Card(
                child: ListTile(
                  leading: Icon(Icons.timer, color: AppColors.primaryColor),
                  title: Text('Total Time'),
                  subtitle: Text('20 hours'),
                ),
              ),
              Card(
                child: ListTile(
                  leading: Icon(Icons.emoji_events, color: AppColors.primaryColor),
                  title: Text('Challenges Completed'),
                  subtitle: Text('5'),
                ),
              ),
              SizedBox(height: 20),
              Text(
                'Settings',
                style: GoogleFonts.dosis(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: AppColors.textColor,
                ),
              ),
              SizedBox(height: 10),
              Card(
                child: ListTile(
                  leading: Icon(Icons.settings, color: AppColors.primaryColor),
                  title: Text('Account Settings'),
                  onTap: () {
                    // Navigate to account settings
                  },
                ),
              ),
              Card(
                child: ListTile(
                  leading: Icon(Icons.logout, color: AppColors.primaryColor),
                  title: Text('Logout'),
                  onTap: () {
                    _logout(context);
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}