import 'package:application_job/src/SignUpPage/signup_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  testWidgets('signup screen ...', (tester) async {
    // TODO: Implement test
    await tester.pumpWidget(const MaterialApp(
      home: SignUp(),
    ));
    // shouldn't have an appbar
    expect(find.byType(AppBar), findsNothing);

    // Find the fullname input field
    final fullNameInputFinder = find.byKey(ValueKey('FullName'));
    expect(fullNameInputFinder, findsOneWidget);
    // Find the email input field
    final emailInputFinder = find.byKey(ValueKey('EmailAddress'));
    expect(emailInputFinder, findsOneWidget);
    // Find the password input field
    final passwordInputFinder = find.byKey(ValueKey('Password'));
    expect(passwordInputFinder, findsOneWidget);
    // Find the number  field
    final numberFinder = find.byKey(ValueKey('PhoneNumber'));
    expect(numberFinder, findsOneWidget);
    // Find the address  field
    final addressFinder = find.byKey(ValueKey('Address'));
    expect(addressFinder, findsOneWidget);    
    // Find the loginButton  field
    final loginButtonFinder = find.widgetWithText(MaterialButton, 'SignUp');
    expect(loginButtonFinder, findsOneWidget);
    // Find the show/hide password icon button
    // final showPasswordButtonFinder = find.byIcon(Icons.visibility_off);
    // expect(showPasswordButtonFinder, findsOneWidget);
    // Find the forgotpassword  field
    final signUpFinder = find.byKey(ValueKey('SignUp'));
    expect(signUpFinder, findsOneWidget);
    

  });
}