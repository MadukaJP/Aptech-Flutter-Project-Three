import 'package:flutter/material.dart';
import 'package:project_three/constants/colors.dart';

Widget buildProfileCard({
  required IconData icon,
  required String title,
  required String subtitle,
}) {
  return Container(
    padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 12),
    decoration: BoxDecoration(
      color: AppColors.foregroundColor,
      borderRadius: BorderRadius.circular(16),
      border: Border.all(color: AppColors.outlineOne, width: 1),
    ),
    child: Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          padding: EdgeInsets.all(7),
          child: Icon(icon, color: AppColors.lightBlue, size: 18),
          decoration: BoxDecoration(
            color: AppColors.outlineOne,
            borderRadius: BorderRadius.circular(6),
          ),
        ),
        const SizedBox(width: 16),

        // Texts
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 12,
                  fontWeight: FontWeight.w500,
                ),
              ),
              const SizedBox(height: 4),
              Text(
                subtitle,
                style: const TextStyle(color: Colors.white70, fontSize: 10),
              ),
            ],
          ),
        ),
      ],
    ),
  );
}

Widget buildBottomInfoCard() {
  return Container(
    padding: const EdgeInsets.all(16),
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(16),
      border: Border.all(color: Colors.white24, width: 1),
      color: AppColors.lightBlue.withOpacity(0.1),
    ),
    child: Row(
      children: const [
        Icon(Icons.info_outline, color: AppColors.lightBlue, size: 20),
        SizedBox(width: 12),
        Expanded(
          child: Text(
            "Complete your profile to unlock all features and connect with your campus community.",
            style: TextStyle(color: AppColors.lightBlue, fontSize: 10),
          ),
        ),
      ],
    ),
  );
}

