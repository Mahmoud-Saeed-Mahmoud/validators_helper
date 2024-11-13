import 'validator.dart';

class EmailValidator implements Validator {
  @override
  String? validate(String? value) {
    if ((value != null && value.isEmpty) || value == null) {
      return 'Email cannot be empty';
    }
    if (!RegExp(r'^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}$')
        .hasMatch(value)) {
      return 'Invalid email address';
    }
    return null;
  }
}
