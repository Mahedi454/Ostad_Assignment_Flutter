import 'package:assignment_ostad/main.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  testWidgets('profile UI renders key sections', (tester) async {
    await tester.pumpWidget(const MyApp());
    await tester.pump();

    expect(find.text('John Doe'), findsOneWidget);
    expect(find.text('Flutter Developer'), findsOneWidget);
    expect(find.text('Interests'), findsOneWidget);
    expect(find.text('Travel'), findsOneWidget);
    expect(find.text('Photography'), findsOneWidget);
    expect(find.text('View More'), findsNWidgets(2));
  });
}
