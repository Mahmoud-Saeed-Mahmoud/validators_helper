import 'validator.dart';

class SpecialCharacterValidator implements Validator {
  final int requiredCount;

  SpecialCharacterValidator(this.requiredCount);

  @override
  String? validate(String? value) {
    final specialCharacterCount =
        RegExp(r'[!@#\$%^&*(),.?":{}|<>]').allMatches(value ?? '').length;
    if (specialCharacterCount < requiredCount) {
      return 'Password must contain at least $requiredCount special characters';
    }
    return null;
  }
}
