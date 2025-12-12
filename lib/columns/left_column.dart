import 'package:flutter/material.dart';
import 'package:project_three/constants/colors.dart';

import '../custom-widgets/left.dart';

class LeftColumn extends StatelessWidget {
  const LeftColumn({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: AppColors.backgroundColor,
      child: SafeArea(
        child: Align(
          alignment: Alignment.topCenter,
          child: SingleChildScrollView(
            padding: const EdgeInsets.symmetric(horizontal: 18, vertical: 32),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  "Setup Your Profile",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                  ),
                ),

                const SizedBox(height: 32),

                buildProfileCard(
                  icon: Icons.person,
                  title: "Username",
                  subtitle:
                  "Choose a unique username that represents you. It must start with a letter or underscore.",
                ),

                const SizedBox(height: 10),

                buildProfileCard(
                  icon: Icons.school,
                  title: "Educational Rank *",
                  subtitle:
                  "Select your current educational status to connect with the right community.",
                ),

                const SizedBox(height: 10),

                buildProfileCard(
                  icon: Icons.account_balance,
                  title: "Institution name *",
                  subtitle:
                  "Add your school or university to find classmates and campus activities.",
                ),

                const SizedBox(height: 10),

                buildProfileCard(
                  icon: Icons.photo,
                  title: "Add photo",
                  subtitle:
                  "Add profile and cover photos to personalize your profile. Photos upload instantly!",
                ),

                const SizedBox(height: 28),

                buildBottomInfoCard(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}