// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************
//
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i7;
import 'package:flutter/material.dart' as _i8;

import 'home_page.dart' as _i1;
import 'posts/posts_page.dart' as _i2;
import 'posts/single_post_page.dart' as _i5;
import 'settings/settings_page.dart' as _i4;
import 'users/user_profile_page.dart' as _i6;
import 'users/users_page.dart' as _i3;

class AppRouter extends _i7.RootStackRouter {
  AppRouter([_i8.GlobalKey<_i8.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i7.PageFactory> pagesMap = {
    HomeRoute.name: (routeData) {
      return _i7.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i1.HomePage(),
      );
    },
    PostsRouter.name: (routeData) {
      return _i7.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i2.PostsWrapperPage(),
      );
    },
    UsersRouter.name: (routeData) {
      return _i7.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i3.UsersWrapperPage(),
      );
    },
    SettingsRouter.name: (routeData) {
      return _i7.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i4.SettingsPage(),
      );
    },
    PostsRoute.name: (routeData) {
      return _i7.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i2.PostsPage(),
      );
    },
    SinglePostRoute.name: (routeData) {
      final args = routeData.argsAs<SinglePostRouteArgs>();
      return _i7.MaterialPageX<dynamic>(
        routeData: routeData,
        child: _i5.SinglePostPage(
          key: args.key,
          postId: args.postId,
        ),
      );
    },
    UsersRoute.name: (routeData) {
      return _i7.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i3.UsersPage(),
      );
    },
    UserProfileRoute.name: (routeData) {
      final args = routeData.argsAs<UserProfileRouteArgs>();
      return _i7.MaterialPageX<dynamic>(
        routeData: routeData,
        child: _i6.UserProfilePage(
          key: args.key,
          userId: args.userId,
        ),
      );
    },
  };

  @override
  List<_i7.RouteConfig> get routes => [
        _i7.RouteConfig(
          HomeRoute.name,
          path: '/',
          children: [
            _i7.RouteConfig(
              '#redirect',
              path: '',
              parent: HomeRoute.name,
              redirectTo: 'posts',
              fullMatch: true,
            ),
            _i7.RouteConfig(
              PostsRouter.name,
              path: 'posts',
              parent: HomeRoute.name,
              children: [
                _i7.RouteConfig(
                  PostsRoute.name,
                  path: '',
                  parent: PostsRouter.name,
                ),
                _i7.RouteConfig(
                  SinglePostRoute.name,
                  path: ':postId',
                  parent: PostsRouter.name,
                ),
              ],
            ),
            _i7.RouteConfig(
              UsersRouter.name,
              path: 'users',
              parent: HomeRoute.name,
              children: [
                _i7.RouteConfig(
                  UsersRoute.name,
                  path: '',
                  parent: UsersRouter.name,
                ),
                _i7.RouteConfig(
                  UserProfileRoute.name,
                  path: ':userId',
                  parent: UsersRouter.name,
                ),
              ],
            ),
            _i7.RouteConfig(
              SettingsRouter.name,
              path: 'settings',
              parent: HomeRoute.name,
            ),
          ],
        )
      ];
}

/// generated route for
/// [_i1.HomePage]
class HomeRoute extends _i7.PageRouteInfo<void> {
  const HomeRoute({List<_i7.PageRouteInfo>? children})
      : super(
          HomeRoute.name,
          path: '/',
          initialChildren: children,
        );

  static const String name = 'HomeRoute';
}

/// generated route for
/// [_i2.PostsWrapperPage]
class PostsRouter extends _i7.PageRouteInfo<void> {
  const PostsRouter({List<_i7.PageRouteInfo>? children})
      : super(
          PostsRouter.name,
          path: 'posts',
          initialChildren: children,
        );

  static const String name = 'PostsRouter';
}

/// generated route for
/// [_i3.UsersWrapperPage]
class UsersRouter extends _i7.PageRouteInfo<void> {
  const UsersRouter({List<_i7.PageRouteInfo>? children})
      : super(
          UsersRouter.name,
          path: 'users',
          initialChildren: children,
        );

  static const String name = 'UsersRouter';
}

/// generated route for
/// [_i4.SettingsPage]
class SettingsRouter extends _i7.PageRouteInfo<void> {
  const SettingsRouter()
      : super(
          SettingsRouter.name,
          path: 'settings',
        );

  static const String name = 'SettingsRouter';
}

/// generated route for
/// [_i2.PostsPage]
class PostsRoute extends _i7.PageRouteInfo<void> {
  const PostsRoute()
      : super(
          PostsRoute.name,
          path: '',
        );

  static const String name = 'PostsRoute';
}

/// generated route for
/// [_i5.SinglePostPage]
class SinglePostRoute extends _i7.PageRouteInfo<SinglePostRouteArgs> {
  SinglePostRoute({
    _i8.Key? key,
    required int postId,
  }) : super(
          SinglePostRoute.name,
          path: ':postId',
          args: SinglePostRouteArgs(
            key: key,
            postId: postId,
          ),
        );

  static const String name = 'SinglePostRoute';
}

class SinglePostRouteArgs {
  const SinglePostRouteArgs({
    this.key,
    required this.postId,
  });

  final _i8.Key? key;

  final int postId;

  @override
  String toString() {
    return 'SinglePostRouteArgs{key: $key, postId: $postId}';
  }
}

/// generated route for
/// [_i3.UsersPage]
class UsersRoute extends _i7.PageRouteInfo<void> {
  const UsersRoute()
      : super(
          UsersRoute.name,
          path: '',
        );

  static const String name = 'UsersRoute';
}

/// generated route for
/// [_i6.UserProfilePage]
class UserProfileRoute extends _i7.PageRouteInfo<UserProfileRouteArgs> {
  UserProfileRoute({
    _i8.Key? key,
    required int userId,
  }) : super(
          UserProfileRoute.name,
          path: ':userId',
          args: UserProfileRouteArgs(
            key: key,
            userId: userId,
          ),
        );

  static const String name = 'UserProfileRoute';
}

class UserProfileRouteArgs {
  const UserProfileRouteArgs({
    this.key,
    required this.userId,
  });

  final _i8.Key? key;

  final int userId;

  @override
  String toString() {
    return 'UserProfileRouteArgs{key: $key, userId: $userId}';
  }
}
