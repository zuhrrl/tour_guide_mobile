import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:tour_guide_mobile/presentation/pages/home_screen.dart';

void main() {
  Widget makeTestableWidget({required Widget body}) {
    return MaterialApp(
      home: body,
    );
  }

  testWidgets('test should show home title', (WidgetTester tester) async {
    // arrange

    // act
    await tester.pumpWidget(
      makeTestableWidget(
        body: const HomeScreen(),
      ),
    );

    final homeTitle = find.byKey(const Key('home_title'));
    final titleFinder = find.text('Home');

    // assert
    expect(homeTitle, findsOneWidget);
    expect(titleFinder, findsOneWidget);
  });

  testWidgets('test should show burger menu left on home',
      (WidgetTester tester) async {
    // arrange

    // act
    await tester.pumpWidget(
      makeTestableWidget(
        body: const HomeScreen(),
      ),
    );

    final findBurgerMenu = find.byKey(const Key('burger_menu'));

    // assert
    expect(findBurgerMenu, findsOneWidget);
  });

  testWidgets('test should show notification menu right on home',
      (WidgetTester tester) async {
    // arrange

    // act
    await tester.pumpWidget(
      makeTestableWidget(
        body: const HomeScreen(),
      ),
    );

    final findBurgerMenu = find.byKey(const Key('notification_menu'));
    final iconFinder = find.byIcon(Icons.notifications);

    // assert
    expect(findBurgerMenu, findsOneWidget);
    expect(iconFinder, findsOneWidget);
  });

  testWidgets('test should show search widget on home',
      (WidgetTester tester) async {
    // arrange

    // act
    await tester.pumpWidget(
      makeTestableWidget(
        body: const HomeScreen(),
      ),
    );

    final searchWidget = find.byKey(const Key('search_widget'));

    // assert
    expect(searchWidget, findsOneWidget);
  });
}
