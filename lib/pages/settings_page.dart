import 'package:flutter/material.dart';

class SettingsPage extends StatelessWidget {
  const SettingsPage({super.key});

  @override
  Widget build(BuildContext context) {
    // profile/settings page for mobile app÷
    return ListView.builder(
      itemCount: 1,
      itemBuilder: (context, index) {
        return ListTile(
          title: Text('Licenses'),
          onTap: () {
            showLicensePage(context: context);
          },
        );
      },
    );
  }
}
