import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

class SettingsWrapperPage extends StatelessWidget {
  const SettingsWrapperPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const AutoRouter();
  }
}

class SettingsPage extends StatefulWidget {
  const SettingsPage({super.key});

  @override
  State<SettingsPage> createState() => _SettingsPageState();
}

class _SettingsPageState extends State<SettingsPage> with AutoRouteAwareStateMixin<SettingsPage> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: const [
          Text(
            'Account Settings',
            style: TextStyle(
              fontSize: 24,
              color: Colors.white,
            ),
          ),
          Card(
            margin: EdgeInsets.only(
              top: 30,
            ),
            color: Colors.white,
            child: Padding(
              padding: EdgeInsets.symmetric(
                horizontal: 80.0,
                vertical: 30,
              ),
              child: Text(
                '''user234

user234@email.com''',
                style: TextStyle(fontSize: 15),
                textAlign: TextAlign.center,
              ),
            ),
          )
        ],
      ),
    );
  }

  @override
  void didChangeTabRoute(TabPageRoute previousRoute) {
    print("SettingsPage didChangeTabRoute");
  }

  @override
  void didPop() {
    print("SettingsPage didPop");
  }

  @override
  void didPush() {
    print("SettingsPage didPush");
  }

  @override
  void didPopNext() {
    print("SettingsPage didPopNext");
  }

  @override
  void didPushNext() {
    print("SettingsPage didPushNext");
  }
}
