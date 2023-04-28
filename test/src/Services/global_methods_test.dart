import 'package:flutter_test/flutter_test.dart';

import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:application_job/src/Services/global_methods.dart';

void main() {
  testWidgets('Show error dialog when called', (WidgetTester tester) async {
    await tester.pumpWidget(MaterialApp(
      home: Scaffold(
        body: Builder(builder: (BuildContext context) {
          return ElevatedButton(
            onPressed: () {
              GlobalMethod.showErrorDialog(
                error: 'An error occurred',
                context: context,
              );
            },
            child: const Text('Show Error Dialog'),
          );
        }),
      ),
    ));

    await tester.tap(find.text('Show Error Dialog'));
    await tester.pumpAndSettle();

    expect(find.text('Error Occured'), findsOneWidget);
    expect(find.text('An error occurred'), findsOneWidget);
    expect(find.text('OK'), findsOneWidget);

    await tester.tap(find.text('OK'));
    await tester.pumpAndSettle();

    expect(find.text('Error Occured'), findsNothing);
    expect(find.text('An error occurred'), findsNothing);
    expect(find.text('OK'), findsNothing);
  });
}
