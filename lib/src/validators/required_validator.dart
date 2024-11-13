import 'validator.dart';

class RequiredValidator implements Validator {
  @override
  String? validate(String? value) {
    if (value == null || value.isEmpty) {
      return 'This field is required';
    }
    return null;
  }
}
