import 'haptics.dart';

/// Translates string commands from the backend into haptic actions.
/// Safe to call repeatedly; unknown commands are ignored.
Future<void> handleHapticCommand(String command) async {
  final normalized = command.trim().toLowerCase();
  switch (normalized) {
    case 'turn_left':
      await Haptics.leftTurn();
      break;
    case 'turn_right':
      await Haptics.rightTurn();
      break;
    case 'danger':
    case 'stop':
      await Haptics.dangerStop();
      break;
    case 'cancel':
      await Haptics.cancel();
      break;
    default:
      // Unknown command: do nothing
      break;
  }
}
