import 'package:application_job/src/LoginPage/login_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  testWidgets('login screen ...', (tester) async {
    await tester.pumpWidget(const MaterialApp(
      home: Login(),
    ));
    // shouldn't have an appbar
    expect(find.byType(AppBar), findsNothing);

    // Find the email input field
    final emailInputFinder = find.byKey(ValueKey('EmailAddress'));
    expect(emailInputFinder, findsOneWidget);
    // Find the password input field
    final passwordInputFinder = find.byKey(ValueKey('Password'));
    expect(passwordInputFinder, findsOneWidget);
    // Find the forgotpassword  field
    final forgotPasswordFinder = find.byKey(ValueKey('ForgotPassword'));
    expect(forgotPasswordFinder, findsOneWidget);
    // Find the loginButton  field
    final loginButtonFinder = find.widgetWithText(MaterialButton, 'Login');
    expect(loginButtonFinder, findsOneWidget);
     // Find the show/hide password icon button
    final showPasswordButtonFinder = find.byIcon(Icons.visibility_off);
    expect(showPasswordButtonFinder, findsOneWidget);

    // await tester.tap(loginButtonFinder);
  
    
  });
}
