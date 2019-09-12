import 'package:mon_application/dart_console_application.dart';
import 'package:test/test.dart';
import 'package:mockito/mockito.dart';

// Mock class
class MockCat extends Mock implements Cat {}

// mock creation
final cat = MockCat();

main() {
  test('calculate', () {
    //expect(calculate(), 42);
  });

  test('cat', () {
    // Unstubbed methods return null:
    expect(cat.sound(), null);

    // Stubbing - before execution:
    when(cat.sound()).thenReturn("Purr");
    expect(cat.sound(), "Purr");

    // You can call it again:
    expect(cat.sound(), "Purr");

    // Let's change the stub:
    when(cat.sound()).thenReturn("Meowfd");
    expect(cat.sound(), "Meow");
  });
}
