// ignore_for_file: avoid_print

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bottom_navigation_with_nested_routing_tutorial/data/app_data.dart';
import 'package:flutter_bottom_navigation_with_nested_routing_tutorial/router.gr.dart';
import 'package:flutter_bottom_navigation_with_nested_routing_tutorial/widgets.dart';

class PostsWrapperPage extends StatelessWidget {
  const PostsWrapperPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const AutoRouter();
  }
}

class PostsPage extends StatefulWidget {
  const PostsPage({super.key});

  @override
  State<PostsPage> createState() => _PostsPageState();
}

class _PostsPageState extends State<PostsPage> with AutoRouteAwareStateMixin<PostsPage> {
  final posts = Post.posts;
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 20,
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              for (int i = 0; i < posts.length; i++)
                PostTile(
                  tileColor: posts[i].color,
                  postTitle: posts[i].title,
                  onTileTap: () => context.pushRoute(SinglePostRoute(postId: posts[i].id)),
                ),
            ],
          ),
        ),
      ),
    );
  }

  @override
  void didChangeTabRoute(TabPageRoute previousRoute) {
    print("PostsPage didChangeTabRoute");
  }

  @override
  void didPop() {
    print("PostsPage didPop");
  }

  @override
  void didPush() {
    print("PostsPage didPush");
  }

  @override
  void didPopNext() {
    print("PostsPage didPopNext");
  }

  @override
  void didPushNext() {
    print("PostsPage didPushNext");
  }
}
