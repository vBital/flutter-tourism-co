import 'package:test/test.dart';
import 'package:flutter_the_basics/mocks/mock_location.dart';

void main() {
  test('test fetchAny', () {
    final mockLocation = MockLocation.fetchAny();
    expect(mockLocation, isNotNull);
    expect(mockLocation, isNotEmpty);
  });

  test('test fetchAll', () {
    final mockLocations = MockLocation.fetchAll();
    expect(mockLocations.length, greaterThan(0));
    expect(mockLocations[0].name, isNotEmpty);
  });

  test('test fetch', () {
    final mockLocation = MockLocation.fetch(0);
    expect(mockLocation, isNotNull);
    expect(mockLocation, isNotEmpty);
  });
}