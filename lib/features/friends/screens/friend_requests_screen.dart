// lib/features/friends/screens/friend_requests_screen.dart

import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:stridehub/core/constants/colors.dart';
import 'package:stridehub/features/friends/services/friend_service.dart';

class FriendRequestsScreen extends StatelessWidget {
  final FriendService _friendService = FriendService();

  @override
  Widget build(BuildContext context) {
    User? currentUser = FirebaseAuth.instance.currentUser;

    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Friend Requests',
          style: GoogleFonts.dosis(
            fontSize: 30,
            fontWeight: FontWeight.bold,
            color: AppColors.textColor,
          ),
        ),
      ),
      body: StreamBuilder<QuerySnapshot>(
        stream: FirebaseFirestore.instance
            .collection('friend_requests')
            .where('to', isEqualTo: currentUser?.uid)
            .where('status', isEqualTo: 'pending')
            .snapshots(),
        builder: (context, snapshot) {
          if (!snapshot.hasData) {
            return Center(child: CircularProgressIndicator());
          }

          var requests = snapshot.data!.docs;

          if (requests.isEmpty) {
            return Center(
              child: Text(
                'No friend requests',
                style: TextStyle(color: AppColors.textColor),
              ),
            );
          }

          return ListView.builder(
            itemCount: requests.length,
            itemBuilder: (context, index) {
              var request = requests[index];
              var fromUserId = request['from'];

              return FutureBuilder<DocumentSnapshot>(
                future: FirebaseFirestore.instance
                    .collection('users')
                    .doc(fromUserId)
                    .get(),
                builder: (context, userSnapshot) {
                  if (!userSnapshot.hasData) {
                    return ListTile(
                      title: Text('Loading...'),
                    );
                  }

                  var user = userSnapshot.data!;
                  var fullName = user['fullName'];
                  var email = user['email'];
                  var profilePicture = user['profilePicture'];

                  return ListTile(
                    leading: CircleAvatar(
                      backgroundImage: NetworkImage(profilePicture),
                    ),
                    title: Text(
                      fullName,
                      style: TextStyle(color: AppColors.textColor),
                    ),
                    subtitle: Text(
                      email,
                      style: TextStyle(color: AppColors.captionColor),
                    ),
                    trailing: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        IconButton(
                          icon: Icon(Icons.check),
                          onPressed: () {
                            _friendService.acceptFriendRequest(
                                request.id, fromUserId);
                          },
                        ),
                        IconButton(
                          icon: Icon(Icons.close),
                          onPressed: () {
                            // Handle rejection
                          },
                        ),
                      ],
                    ),
                  );
                },
              );
            },
          );
        },
      ),
    );
  }
}
