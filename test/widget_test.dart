import 'package:flutter_test/flutter_test.dart';
import 'package:sneakertell/main.dart';

void main() {
  testWidgets('IntroPage renders title and Shop Now button', (
    WidgetTester tester,
  ) async {
    // Build our app and trigger a frame.
    await tester.pumpWidget(const MyApp());

    // Verify that title and tagline are displayed.
    expect(find.text('Just Sell IT'), findsOneWidget);
    expect(find.text('Shop Now'), findsOneWidget);
  });
}
