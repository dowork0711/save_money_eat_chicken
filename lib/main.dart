import "package:expense_check_app/pages/index/index_page.dart";
import "package:expense_check_app/utils/router/router_path.dart";
import "package:flutter/material.dart";
import "package:go_router/go_router.dart";

void main() {
  GoRouter router =
      GoRouter(initialLocation: RouterPath.indexPage.path, routes: [
    GoRoute(
        path: RouterPath.indexPage.path,
        name: RouterPath.indexPage.name,
        pageBuilder: (context, state) =>
            const NoTransitionPage(child: IndexPage()))
  ], debugLogDiagnostics: true);
  runApp(MaterialApp.router(
      routerDelegate: router.routerDelegate,
      routeInformationProvider: router.routeInformationProvider,
      routeInformationParser: router.routeInformationParser,
      debugShowCheckedModeBanner: false,
      builder: (context, child) => MediaQuery(
          data: MediaQuery.of(context)
              .copyWith(textScaler: const TextScaler.linear(1.0)),
          child: child!)));
}
