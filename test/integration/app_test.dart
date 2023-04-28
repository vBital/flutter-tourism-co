import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_the_basics/mocks/mock_location.dart';
import 'package:flutter_the_basics/app.dart';
//import 'package:image_tesst_utils/image_test_utils.dart';
import 'package:network_image_mock/network_image_mock.dart';

void main() {
  testWidgets("test app startup", (WidgetTester tester) async {
    mockNetworkImagesFor(() => tester.pumpWidget(App()));
    final mockLocation = MockLocation.fetchAny();

    expect(find.text(mockLocation.name), findsOneWidget);
    expect(find.text("${mockLocation.name}blah"), findsNothing);
  });
}