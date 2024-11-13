import 'validator.dart';

class DigitValidator implements Validator {
  final int requiredCount;

  DigitValidator(this.requiredCount);

  @override
  String? validate(String? value) {
    final digitCount = RegExp(r'[0-9]').allMatches(value ?? '').length;
    if (digitCount < requiredCount) {
      return 'Password must contain at least $requiredCount digits';
    }
    return null;
  }
}
