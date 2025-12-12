import 'package:flutter/material.dart';
import 'package:project_three/constants/colors.dart';


Widget buildTipItem({
  required IconData icon,
  required Color iconColor,
  required String title,
  required String subtitle,
}) {
  return Container(
    padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 13),
    decoration: BoxDecoration(
      color: AppColors.foregroundColor,
      borderRadius: BorderRadius.circular(12),
      border: Border.all(color: iconColor.withOpacity(0.2)),
    ),
    child: Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Icon(icon, color: iconColor, size: 20),
        const SizedBox(width: 16),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 11,
                  fontWeight: FontWeight.w600,
                ),
              ),
              const SizedBox(height: 4),
              Text(
                subtitle,
                style: const TextStyle(
                  color: Colors.white70,
                  fontSize: 10,
                  height: 1.4,
                ),
              ),
            ],
          ),
        ),
      ],
    ),
  );
}

Widget buildBenefitItem({
  required IconData icon,
  required String text,
}) {
  return Row(
    children: [
      Icon(icon, color: AppColors.green, size: 18),
      const SizedBox(width: 16),
      Text(text, style: const TextStyle(color: Colors.white70, fontSize: 12)),
    ],
  );
}

