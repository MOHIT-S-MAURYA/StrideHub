// lib/features/home/screens/challenges.dart
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:stridehub/core/constants/colors.dart';

class ChallengesScreen extends StatelessWidget {
  const ChallengesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Challenges',
          style: GoogleFonts.dosis(
            fontSize: 30,
            fontWeight: FontWeight.bold,
            color: AppColors.textColor,
          ),
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
              // Header Section
              Text(
                'Challenges by Friends',
                style: GoogleFonts.dosis(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: AppColors.textColor,
                ),
              ),
              SizedBox(height: 10),
              // Add your widgets here
              // Example of a challenge card
              Card(
                child: ListTile(
                  leading: CircleAvatar(
                    backgroundImage:
                        AssetImage('assets/images/friend_profile.png'),
                  ),
                  title: Text('5K Walk Challenge'),
                  subtitle:
                      Text('Friend: Jane Smith\nStart Date: 1st Nov 2023'),
                  trailing: Column(
                    children: [
                      ElevatedButton(
                        onPressed: () {
                          // Accept challenge
                        },
                        child: Text('Accept'),
                      ),
                      TextButton(
                        onPressed: () {
                          // Decline challenge
                        },
                        child: Text('Decline'),
                      ),
                    ],
                  ),
                ),
              ),
              // Add more widgets as needed
            ],
          ),
        ),
      ),
    );
  }
}
