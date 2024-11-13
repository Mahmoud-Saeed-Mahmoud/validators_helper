import 'validator.dart';

class NameValidator implements Validator {
  @override
  String? validate(String? value) {
    if ((value != null && value.isEmpty) || value == null) {
      return 'Name cannot be empty';
    }
    if (!RegExp(r'^[a-zA-Z\s]+$').hasMatch(value)) {
      return 'Name can only contain letters and spaces';
    }
    return null;
  }
}
