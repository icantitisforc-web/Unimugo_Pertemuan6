import '../models/registration.dart';

class RegistrationRepository {
  final List<Registration> _data = [];

  Future<List<Registration>> findByAgenda(String agendaId) async {
    await Future.delayed(const Duration(seconds: 1));
    return _data.where((r) => r.agendaId == agendaId).toList();
  }

  Future<void> add(Registration reg) async {
    await Future.delayed(const Duration(seconds: 1));
    final sudahAda = _data.any(
      (r) => r.agendaId == reg.agendaId && r.nim == reg.nim,
    );
    if (sudahAda) {
      throw Exception('NIM ${reg.nim} sudah terdaftar pada agenda ini');
    }
    _data.add(reg);
  }
}
