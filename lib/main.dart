import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'features/agenda/registration/registration_page.dart';

void main() => runApp(
  const ProviderScope(
    child: MaterialApp(home: RegistrationPage(id: 'a2')),
  ),
);