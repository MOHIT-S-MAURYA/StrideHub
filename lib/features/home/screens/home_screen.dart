// lib/features/home/screens/home_screen.dart
import 'package:flutter/material.dart';
import 'package:stridehub/core/constants/colors.dart';
import 'package:google_fonts/google_fonts.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false, // Hide the back button
        title: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Text(
              'StrideHub',
              style: GoogleFonts.dancingScript(
                fontSize: 35,
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
              Text(
                'Welcome to StrideHub!',
                style: GoogleFonts.dosis(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: AppColors.textColor,
                ),
              ),
              SizedBox(height: 20),
              // Today's Progress Section
              Text(
                'Today\'s Progress',
                style: GoogleFonts.dosis(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: AppColors.textColor,
                ),
              ),
              SizedBox(height: 10),
              Center(
                child: Stack(
                  alignment: Alignment.center,
                  children: [
                    SizedBox(
                      width: 200,
                      height: 200,
                      child: CircularProgressIndicator(
                        value: 0.8,
                        strokeWidth: 12,
                        backgroundColor: AppColors.dividerColor,
                        color: AppColors.primaryColor,
                      ),
                    ),
                    SizedBox(
                      width: 160,
                      height: 160,
                      child: CircularProgressIndicator(
                        value: 0.6,
                        strokeWidth: 12,
                        backgroundColor: AppColors.dividerColor,
                        color: Colors.orange,
                      ),
                    ),
                    SizedBox(
                      width: 120,
                      height: 120,
                      child: CircularProgressIndicator(
                        value: 0.4,
                        strokeWidth: 12,
                        backgroundColor: AppColors.dividerColor,
                        color: Colors.red,
                      ),
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Steps',
                          style: GoogleFonts.dosis(
                            fontSize: 18,
                            color: AppColors.textColor,
                          ),
                        ),
                        Text(
                          '8,000',
                          style: GoogleFonts.dosis(
                            fontSize: 24,
                            fontWeight: FontWeight.bold,
                            color: AppColors.textColor,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(height: 20),
              // Upcoming Challenges Section
              Text(
                'Upcoming Challenges',
                style: GoogleFonts.dosis(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: AppColors.textColor,
                ),
              ),
              SizedBox(height: 10),
              Card(
                elevation: 4,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                child: ListTile(
                  leading: Icon(Icons.flag, color: AppColors.primaryColor),
                  title: Text('10K Run Challenge'),
                  subtitle: Text('Starts on: 25th Oct 2023'),
                  trailing: Icon(Icons.arrow_forward),
                  onTap: () {
                    // Navigate to challenge details
                  },
                ),
              ),
              SizedBox(height: 20),
              // Leaderboard Section
              Text(
                'Leaderboard',
                style: GoogleFonts.dosis(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: AppColors.textColor,
                ),
              ),
              SizedBox(height: 10),
              Card(
                elevation: 4,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                child: ListTile(
                  leading: CircleAvatar(
                    backgroundColor: AppColors.primaryColor,
                    child: Text('1', style: TextStyle(color: Colors.white)),
                  ),
                  title: Text('John Doe'),
                  subtitle: Text('Points: 1500'),
                  trailing: Icon(Icons.arrow_forward),
                  onTap: () {
                    // Navigate to leaderboard details
                  },
                ),
              ),
              SizedBox(height: 20),
              // Summary Section
              Text(
                'Summary',
                style: GoogleFonts.dosis(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: AppColors.textColor,
                ),
              ),
              SizedBox(height: 10),
              Card(
                elevation: 4,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Weekly Goal: 35 km',
                        style: GoogleFonts.dosis(
                          fontSize: 18,
                          color: AppColors.textColor,
                        ),
                      ),
                      SizedBox(height: 10),
                      LinearProgressIndicator(
                        value: 0.7,
                        backgroundColor: AppColors.dividerColor,
                        color: AppColors.primaryColor,
                      ),
                      SizedBox(height: 10),
                      Text(
                        '70% of your weekly goal completed',
                        style: GoogleFonts.dosis(
                          fontSize: 16,
                          color: AppColors.textColor,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}