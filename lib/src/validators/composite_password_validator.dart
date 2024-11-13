import 'validator.dart';

class CompositePasswordValidator implements Validator {
  final List<Validator> validators;
  final int minLength;

  CompositePasswordValidator({
    required this.validators,
    this.minLength = 8,
  });

  @override
  String? validate(String? value) {
    if (value == null || value.isEmpty) {
      return 'Password cannot be empty';
    }

    List<String> errors = [];

    if (value.length < minLength) {
      errors.add('Password must be at least $minLength characters long');
    }

    for (final validator in validators) {
      final error = validator.validate(value);
      if (error != null) {
        errors.add(error);
      }
    }

    if (errors.isNotEmpty) {
      return errors.join('\n');
    }

    return null;
  }
}
