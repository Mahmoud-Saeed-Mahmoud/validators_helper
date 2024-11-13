import 'validator.dart';

class ConfirmPasswordValidator implements Validator {
  final String? password;

  ConfirmPasswordValidator(this.password);

  @override
  String? validate(String? value) {
    if ((value != null && value.isEmpty) || value == null) {
      return 'Confirm password cannot be empty';
    }
    if (value != password) {
      return 'Passwords do not match';
    }
    return null;
  }
}
