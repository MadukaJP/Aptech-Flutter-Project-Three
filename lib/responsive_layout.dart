import 'package:flutter/material.dart';
import 'package:project_three/columns/center_column.dart';
import 'package:project_three/columns/left_column.dart';
import 'package:project_three/columns/right_column.dart';
import 'package:project_three/constants/colors.dart';

class ResponsiveLayout extends StatefulWidget {
  @override
  State<ResponsiveLayout> createState() => _ResponsiveLayoutState();
}

class _ResponsiveLayoutState extends State<ResponsiveLayout> {
  int selectedIndex = 1;

  final List<Widget> columns = const [
    LeftColumn(),
    CenterColumn(),
    RightColumn(),
  ];

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;

    final bool isDesktop = width >= 1200;
    final bool isTablet = width >= 750 && width < 1199;
    final bool isMobile = width < 750;

    String getTitle (int index) {
      switch (index) {
        case 0:
          return "Overview";
        case 1:
          return "Setup";
        case 2:
          return "Tips";
        default:
          return "";
      }
    }

    return Scaffold(
      backgroundColor: AppColors.backgroundColor,
      appBar: isMobile
          ? AppBar(
              backgroundColor: selectedIndex == 1
                  ? AppColors.foregroundColor
                  : AppColors.backgroundColor,
              foregroundColor: AppColors.lightBlue,
            )
          : null,
      drawer: isMobile
          ? Drawer(
              backgroundColor: AppColors.lightBlue,
              shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.zero,
              ),
              child: ListView(
                children: [
                  // DrawerHeader(child: Text("Menu")),
                  SizedBox(height: 50),
                  ...List.generate(3, (index) {
                    return ListTile(
                      title: Text(getTitle(index),
                        style: TextStyle(
                          color: index == selectedIndex ? Colors.white : null
                        ),
                      ),
                      onTap: () {
                        setState(() {
                          selectedIndex = index;
                        });
                        Navigator.pop(context);
                      },
                    );
                  }),
                ],
              ),
            )
          : null,
      body: Row(
        children: [
          /// Tablet
          if (isTablet) Expanded(child: columns[0]),
          if (isTablet) Expanded(child: columns[1]),

          /// Desktop
          if (isDesktop) ...columns.map((col) => Expanded(child: col)),

          /// Mobile
          if (isMobile) Expanded(child: columns[selectedIndex]),
        ],
      ),
    );
  }
}
