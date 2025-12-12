import 'package:flutter/material.dart';
import 'package:project_three/constants/colors.dart';


Widget EditCircle ({
  required double radius,
  required double iconSize
}) {
  return CircleAvatar(
    radius: radius,
    backgroundColor: AppColors.blue,
    child: Icon(
      Icons.edit,
      size: iconSize,
      color: Colors.white,
    ),
  );
}

Widget buildInput({
  required IconData icon,
  required String hint,
  IconData? trailing,
}) {
  return Container(
    padding: const EdgeInsets.symmetric(horizontal: 10),
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(12),
      border: Border.all(color: AppColors.gray.withOpacity(0.4)),
    ),
    child: Row(
      children: [
        Icon(icon, color: AppColors.gray, size:18),
        const SizedBox(width: 8),
        Expanded(
          child: TextField(
            style: const TextStyle(color: Colors.white, fontSize: 12),
            decoration: InputDecoration(
              isDense: true,
              contentPadding: const EdgeInsets.symmetric(vertical: 14),
              hintText: hint,
              hintStyle: TextStyle(color: AppColors.gray, fontSize: 12, fontWeight: FontWeight.w600),
              border: InputBorder.none,
            ),
          ),
        ),
        if (trailing != null) Icon(trailing, color: AppColors.gray, size: 22),
      ],
    ),
  );
}

Widget buildDropdown({required IconData icon, required String label}) {
  return Container(
    padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 10),
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(12),
      border: Border.all(color: AppColors.gray.withOpacity(0.4)),
    ),
    child: Row(
      children: [
        Icon(icon, color: AppColors.gray, size:18),
        const SizedBox(width: 12),
        Expanded(
          child: Text(
            label,
            style: TextStyle(color: AppColors.gray, fontSize: 12, fontWeight: FontWeight.w600),
          ),
        ),
        Icon(Icons.keyboard_arrow_down, color: AppColors.gray, size:18),
      ],
    ),
  );
}