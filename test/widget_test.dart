import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:focus_flow/main.dart';

void main() {
  Widget app() => const FocusFlowApp();

  testWidgets('shows dashboard greeting', (tester) async {
    await tester.pumpWidget(app());
    await tester.pumpAndSettle();
    expect(find.text('Good morning, Alex'), findsOneWidget);
  });
  testWidgets('shows five navigation destinations', (tester) async {
    await tester.pumpWidget(app());
    await tester.pumpAndSettle();
    expect(find.byType(NavigationDestination), findsNWidgets(5));
  });
  testWidgets('navigates to tasks screen', (tester) async {
    await tester.pumpWidget(app());
    await tester.pumpAndSettle();
    await tester.tap(find.text('Tasks'));
    await tester.pump();
    expect(find.byType(TextField), findsOneWidget);
  });
  testWidgets('navigates to focus screen', (tester) async {
    await tester.pumpWidget(app());
    await tester.pumpAndSettle();
    await tester.tap(find.text('Focus'));
    await tester.pump();
    expect(find.text('25:00'), findsOneWidget);
  });
  testWidgets('navigates to settings screen', (tester) async {
    await tester.pumpWidget(app());
    await tester.pumpAndSettle();
    await tester.tap(find.text('Settings'));
    await tester.pump();
    expect(find.text('Preferences'), findsOneWidget);
  });
}
