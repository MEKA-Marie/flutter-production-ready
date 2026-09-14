import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:integration_test/integration_test.dart';
import 'package:focus_flow/main.dart';

void main() {
  IntegrationTestWidgetsFlutterBinding.ensureInitialized();

  testWidgets('user can navigate through the core workflow', (tester) async {
    await tester.pumpWidget(const FocusFlowApp());
    await tester.pumpAndSettle();
    await tester.tap(find.text('Tasks'));
    await tester.pumpAndSettle();
    expect(find.byType(TextField), findsOneWidget);
    await tester.tap(find.text('Focus'));
    await tester.pumpAndSettle();
    expect(find.text('25:00'), findsOneWidget);
  });

  testWidgets('user can switch language in settings', (tester) async {
    await tester.pumpWidget(const FocusFlowApp());
    await tester.pumpAndSettle();
    await tester.tap(find.text('Settings'));
    await tester.pumpAndSettle();
    await tester.tap(find.text('French'));
    await tester.pumpAndSettle();
    expect(find.text('Reglages'), findsOneWidget);
  });
}
