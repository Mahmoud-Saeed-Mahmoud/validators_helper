import 'validator.dart';

class UppercaseLetterValidator implements Validator {
  final int requiredCount;

  UppercaseLetterValidator(this.requiredCount);

  @override
  String? validate(String? value) {
    final uppercaseCount = RegExp(r'[A-Z]').allMatches(value ?? '').length;
    if (uppercaseCount < requiredCount) {
      return 'Password must contain at least $requiredCount uppercase letters';
    }
    return null;
  }
}
