import 'validator.dart';

class CompositeValidator implements Validator {
  final List<Validator> validators;

  CompositeValidator(this.validators);

  @override
  String? validate(String? value) {
    for (final validator in validators) {
      final error = validator.validate(value);
      if (error != null) {
        return error;
      }
    }
    return null;
  }
}
