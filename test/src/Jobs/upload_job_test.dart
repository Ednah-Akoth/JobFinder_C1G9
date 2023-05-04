import 'package:application_job/src/Jobs/upload_job.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  // WIDGET TESTS
  testWidgets('test the layout of the uploadjobs screen', (tester) async {
    // TODO: Implement test
    await tester.pumpWidget(
      const MaterialApp(home: UploadJob()),
    );
    expect(find.byType(AppBar), findsOneWidget);

    // Find the JobDescription input field
    final jobDescriptionInputFinder = find.byKey(ValueKey('JobDescription'));
    expect(jobDescriptionInputFinder, findsOneWidget);
    // Find the JobCategory input field
    final jobCategoryInputFinder = find.byKey(ValueKey('JobCategory'));
    expect(jobCategoryInputFinder, findsOneWidget);
    // Find the JobTitle input field
    final jobTitleInputFinder = find.byKey(ValueKey('JobTitle'));
    expect(jobTitleInputFinder, findsOneWidget);
    // Find the Deadline input field
    final jobDeadlineInputFinder = find.byKey(ValueKey('Deadline'));
    expect(jobDeadlineInputFinder, findsOneWidget);
    // Find the post button
    final postButtonFinder = find.widgetWithText(MaterialButton, 'Post Job');
    expect(postButtonFinder, findsOneWidget);
  });
}
