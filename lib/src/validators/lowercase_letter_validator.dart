import 'validator.dart';

class LowercaseLetterValidator implements Validator {
  final int requiredCount;

  LowercaseLetterValidator(this.requiredCount);

  @override
  String? validate(String? value) {
    final lowercaseCount = RegExp(r'[a-z]').allMatches(value ?? '').length;
    if (lowercaseCount < requiredCount) {
      return 'Password must contain at least $requiredCount lowercase letters';
    }
    return null;
  }
}
