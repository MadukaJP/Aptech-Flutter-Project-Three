import 'package:flutter/material.dart';
import '../constants/colors.dart';
import '../custom-widgets/center.dart';

class CenterColumn extends StatelessWidget {
  const CenterColumn({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: AppColors.foregroundColor,
      child: SafeArea(
        child: Column(
          children: [
            Expanded(
              child: Align(
                alignment: Alignment.topCenter,
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      // TOP PROFILE PICTURE UI
                      Stack(
                        children: [
                          Container(
                            decoration: const BoxDecoration(
                              color: AppColors.blue100,
                            ),
                            child: Center(
                              child: Stack(
                                alignment: Alignment.center,
                                children: [
                                  Container(
                                    width: 110,
                                    height: 110,
                                    decoration: BoxDecoration(
                                      color: AppColors.backgroundColor,
                                      shape: BoxShape.circle,
                                      border: Border.all(
                                        color: AppColors.foregroundColor,
                                        width: 2,
                                      ),
                                    ),
                                  ),

                                  const Text(
                                    "Add photo",
                                    style: TextStyle(
                                      color: AppColors.gray,
                                      fontSize: 12,
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),

                                  Positioned(
                                    bottom: 6,
                                    right: 5,
                                    child: EditCircle(radius: 14, iconSize: 14),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Positioned(
                            top: 4,
                            left: 12,
                            child: EditCircle(radius: 18, iconSize: 16),
                          ),
                        ],
                      ),

                      Container(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 18,
                          vertical: 30,
                        ),
                        decoration: BoxDecoration(
                          color: AppColors.foregroundColor,
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            // USERNAME FIELD
                            buildInput(
                              icon: Icons.alternate_email_sharp,
                              hint: "Username",
                            ),

                            const SizedBox(height: 14),

                            // STUDENT DROPDOWN
                            buildDropdown(
                              icon: Icons.settings,
                              label: "Student",
                            ),

                            const SizedBox(height: 14),

                            // INSTITUTION NAME
                            buildInput(
                              icon: Icons.account_balance,
                              hint: "Institution name *",
                              trailing: Icons.search,
                            ),

                            const SizedBox(height: 8),

                            Center(
                              child: Text(
                                "Institution not found? Add it!",
                                style: TextStyle(
                                  fontSize: 11,
                                  color: AppColors.gray,
                                  fontStyle: FontStyle.italic,
                                  decoration: TextDecoration.underline,
                                  decorationColor: AppColors.gray,
                                  decorationThickness: 1.5,
                                ),
                              ),
                            ),

                            const SizedBox(height: 14),

                            // COURSE OF STUDY
                            buildInput(
                              icon: Icons.school,
                              hint: "Course of study *",
                            ),

                            const SizedBox(height: 14),

                            // CURRENT YEAR LEVEL DROPDOWN
                            buildDropdown(
                              icon: Icons.person_outline,
                              label: "Current year (Level)",
                            ),

                            const SizedBox(height: 60),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),

            // SAVE BUTTON
            Padding(
              padding: const EdgeInsets.all(18),
              child: ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  elevation: 0,
                  backgroundColor: AppColors.btn100,
                ),
                child: Center(
                  child: Text(
                    "Save",
                    style: TextStyle(color: AppColors.text100, fontSize: 12, fontWeight: FontWeight.w600),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
