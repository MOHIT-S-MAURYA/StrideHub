import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:stridehub/core/constants/colors.dart';

class ChallengesScreen extends StatelessWidget {
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
              Row(
                children: [
                  Expanded(
                    child: TextField(
                      decoration: InputDecoration(
                        hintText: 'Search challenges...',
                        prefixIcon: Icon(Icons.search),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(8.0),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(width: 10),
                  PopupMenuButton<String>(
                    onSelected: (value) {
                      // Handle filter selection
                    },
                    itemBuilder: (BuildContext context) {
                      return {'Active', 'Completed', 'Pending'}.map((String choice) {
                        return PopupMenuItem<String>(
                          value: choice,
                          child: Text(choice),
                        );
                      }).toList();
                    },
                    icon: Icon(Icons.filter_list),
                  ),
                ],
              ),
              SizedBox(height: 20),
              // Active Challenges
              Text(
                'Active Challenges',
                style: GoogleFonts.dosis(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: AppColors.textColor,
                ),
              ),
              SizedBox(height: 10),
              Card(
                child: ListTile(
                  leading: CircleAvatar(
                    backgroundImage: AssetImage('assets/images/friend_profile.png'), // Replace with actual image path
                  ),
                  title: Text('10K Run Challenge'),
                  subtitle: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Friend: John Doe'),
                      LinearProgressIndicator(
                        value: 0.5,
                        backgroundColor: AppColors.dividerColor,
                        color: AppColors.primaryColor,
                      ),
                      Text('3 days left'),
                    ],
                  ),
                  trailing: Column(
                    children: [
                      ElevatedButton(
                        onPressed: () {
                          // Update progress
                        },
                        child: Text('Update Progress'),
                      ),
                      TextButton(
                        onPressed: () {
                          // View details
                        },
                        child: Text('View Details'),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 20),
              // Pending Challenges
              Text(
                'Pending Challenges',
                style: GoogleFonts.dosis(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: AppColors.textColor,
                ),
              ),
              SizedBox(height: 10),
              Card(
                child: ListTile(
                  leading: CircleAvatar(
                    backgroundImage: AssetImage('assets/images/friend_profile.png'), // Replace with actual image path
                  ),
                  title: Text('5K Walk Challenge'),
                  subtitle: Text('Friend: Jane Smith\nStart Date: 1st Nov 2023'),
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
              SizedBox(height: 20),
              // Completed Challenges
              Text(
                'Completed Challenges',
                style: GoogleFonts.dosis(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: AppColors.textColor,
                ),
              ),
              SizedBox(height: 10),
              Card(
                child: ListTile(
                  leading: CircleAvatar(
                    backgroundImage: AssetImage('assets/images/friend_profile.png'), // Replace with actual image path
                  ),
                  title: Text('Push-up Challenge'),
                  subtitle: Text('Performance: 45/50 push-ups\nRank: 1st\nTrophies: 3'),
                  trailing: IconButton(
                    icon: Icon(Icons.share),
                    onPressed: () {
                      // Share results
                    },
                  ),
                ),
              ),
              SizedBox(height: 20),
              // Notifications
              Text(
                'Notifications',
                style: GoogleFonts.dosis(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: AppColors.textColor,
                ),
              ),
              SizedBox(height: 10),
              Card(
                child: ListTile(
                  leading: Icon(Icons.notifications, color: AppColors.primaryColor),
                  title: Text('You have a new challenge from John Doe'),
                  subtitle: Text('10K Run Challenge'),
                ),
              ),
              SizedBox(height: 20),
              // Sorting and Filtering Options
              Text(
                'Sorting and Filtering Options',
                style: GoogleFonts.dosis(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: AppColors.textColor,
                ),
              ),
              SizedBox(height: 10),
              // Add sorting and filtering options here
              // Gamification Elements
              Text(
                'Gamification Elements',
                style: GoogleFonts.dosis(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: AppColors.textColor,
                ),
              ),
              SizedBox(height: 10),
              Card(
                child: ListTile(
                  leading: Icon(Icons.star, color: AppColors.primaryColor),
                  title: Text('Challenge of the Week: 10K Run'),
                  subtitle: Text('Complete this challenge to earn extra points!'),
                ),
              ),
              SizedBox(height: 20),
              // Social Sharing
              Text(
                'Social Sharing',
                style: GoogleFonts.dosis(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: AppColors.textColor,
                ),
              ),
              SizedBox(height: 10),
              Card(
                child: ListTile(
                  leading: Icon(Icons.share, color: AppColors.primaryColor),
                  title: Text('Share your progress with friends!'),
                  onTap: () {
                    // Share progress
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