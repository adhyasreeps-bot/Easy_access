import 'package:flutter_test/flutter_test.dart';
import 'package:easy_access/main.dart';

void main() {
  testWidgets('EasyAccess home screen loads', (tester) async {
    await tester.pumpWidget(const EasyAccessApp());

    expect(find.text('EasyAccess'), findsOneWidget);
    expect(find.text('Book a cab'), findsOneWidget);
  });
}
