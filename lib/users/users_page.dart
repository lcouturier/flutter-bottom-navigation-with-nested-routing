// ignore_for_file: avoid_print

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bottom_navigation_with_nested_routing_tutorial/data/app_data.dart';
import 'package:flutter_bottom_navigation_with_nested_routing_tutorial/router.gr.dart';
import 'package:flutter_bottom_navigation_with_nested_routing_tutorial/widgets.dart';

class UsersWrapperPage extends StatelessWidget {
  const UsersWrapperPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AutoRouter(
      inheritNavigatorObservers: false,
      navigatorObservers: () => [AutoRouteObserver()],
    );
  }
}

class UsersPage extends StatefulWidget {
  const UsersPage({super.key});

  @override
  State<UsersPage> createState() => _UsersPageState();
}

class _UsersPageState extends State<UsersPage> with AutoRouteAwareStateMixin<UsersPage> {
  @override
  Widget build(BuildContext context) {
    final users = User.users;
    return SingleChildScrollView(
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            for (int i = 0; i < users.length; i++)
              UserAvatar(
                avatarColor: users[i].color,
                username: 'user${users[i].id}',
                onAvatarTap: () => context.pushRoute(UserProfileRoute(userId: users[i].id)),
              ),
          ],
        ),
      ),
    );
  }

  @override
  void didChangeTabRoute(TabPageRoute previousRoute) {
    print("UsersPage didChangeTabRoute");
  }

  @override
  void didPop() {
    print("UsersPage didPop");
  }

  @override
  void didPush() {
    print("UsersPage didPush");
  }

  @override
  void didPopNext() {
    print("UsersPage didPopNext");
  }

  @override
  void didPushNext() {
    print("UsersPage didPushNext");
  }
}
