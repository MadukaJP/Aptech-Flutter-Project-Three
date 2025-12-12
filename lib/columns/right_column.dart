import 'package:flutter/material.dart';
import 'package:project_three/constants/colors.dart';

import '../custom-widgets/right.dart';

class RightColumn extends StatelessWidget {
  const RightColumn({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: AppColors.backgroundColor, // Dark slate blue background
      child: SafeArea(
        child: Align(
          alignment: Alignment.topCenter,
          child: SingleChildScrollView(
            padding: const EdgeInsets.symmetric(horizontal: 18, vertical: 32),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Title
                const Text(
                  'Profile Tips',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 24),

                buildTipItem(
                  icon: Icons.check_circle_outline,
                  iconColor: AppColors.green,
                  title: 'Choose Wisely',
                  subtitle:
                  'Your username is permanent and identifies you across the platform.',
                ),
                const SizedBox(height: 12),

                buildTipItem(
                  icon: Icons.verified_user,
                  iconColor: AppColors.lightBlue,
                  title: 'Be Authentic',
                  subtitle:
                  'Use your real educational details to connect with genuine peers.',
                ),
                const SizedBox(height: 12),

                buildTipItem(
                  icon: Icons.photo_camera,
                  iconColor: AppColors.amber,
                  title: 'Quality Photos',
                  subtitle:
                  'Upload clear photos for better recognition within your campus.',
                ),
                const SizedBox(height: 20),

                // Profile Benefits Section
                Container(
                  padding: EdgeInsets.all(18),
                  decoration: BoxDecoration(
                      color: AppColors.foregroundColor,
                      borderRadius: BorderRadius.circular(14),
                      border: Border.all(color: AppColors.outlineOne)
                  ),
                  child: Column(
                    children: [
                      Center(
                        child: Text(
                          'Profile Benefits',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 13,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          const SizedBox(height: 12),
                          buildBenefitItem(
                            icon: Icons.people,
                            text: 'Connect with peers',
                          ),
                          const SizedBox(height: 8),
                          buildBenefitItem(
                            icon: Icons.event,
                            text: 'Join campus events',
                          ),
                          const SizedBox(height: 8),
                          buildBenefitItem(
                            icon: Icons.question_answer,
                            text: 'Access discussions',
                          ),
                          const SizedBox(height: 8),
                          buildBenefitItem(
                            icon: Icons.star,
                            text: 'Unlock premium features',
                          ),
                        ],
                      ),
                    ],
                  ),
                ),

                const SizedBox(height: 25),

                // Pro Tip Card
                Container(
                  width: double.infinity,
                  padding: const EdgeInsets.symmetric(horizontal: 14, vertical:16),
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      colors: [AppColors.lightBlue.withOpacity(0.1), AppColors.green.withOpacity(0.1)],
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                    ),
                    borderRadius: BorderRadius.circular(16),
                    border: Border.all(color: AppColors.lightBlue.withOpacity(0.08), width: 1),
                  ),
                  child: Column(
                    children: [
                      Icon(
                        Icons.lightbulb_outline,
                        color: AppColors.lightBlue,
                        size: 30,
                      ),
                      SizedBox(height: 8),
                      Text(
                        'Pro Tip',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 11,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      const SizedBox(height: 8),
                      const Text(
                        'Complete all fields to maximize your profile visibility and get the most out of AllCampus!',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: AppColors.lightBlue,
                          fontSize: 10,
                          height: 1.5,
                        ),
                      ),
                    ],
                  ),
                ),

                const SizedBox(height: 40),
              ],
            ),
          ),
        ),
      ),
    );
  }

}