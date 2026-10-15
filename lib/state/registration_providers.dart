import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../data/registration_repository.dart';
import '../models/registration.dart';

final registrationRepositoryProvider = Provider<RegistrationRepository>(
  (ref) => RegistrationRepository(),
);

final registrationsProvider =
    FutureProvider.family<List<Registration>, String>(
  (ref, agendaId) =>
      ref.watch(registrationRepositoryProvider).findByAgenda(agendaId),
);
