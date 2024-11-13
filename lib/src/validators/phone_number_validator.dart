import 'validator.dart';

class PhoneNumberValidator implements Validator {
  @override
  String? validate(String? value) {
    if ((value != null && value.isEmpty) || value == null) {
      return 'Phone number cannot be empty';
    }
    final rawNumber = value.replaceAll(RegExp(r'\D'), '');

    if (rawNumber.length != 10) {
      return 'Phone number must be 10 digits';
    }

    return null;
  }
}
