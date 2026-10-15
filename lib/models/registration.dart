class Registration {
  final String agendaId;
  final String nama;
  final String nim;
  final String email;
  final String prodi;
  final String alamat;
  final DateTime createdAt;

  const Registration({
    required this.agendaId,
    required this.nama,
    required this.nim,
    required this.email,
    required this.prodi,
    required this.alamat,
    required this.createdAt,
  });


  Registration copyWith({
    String? agendaId,
    String? nama,
    String? nim,
    String? email,
    String? prodi,
    String? alamat,
    DateTime? createdAt,
  }) {
    return Registration(
      agendaId: agendaId ?? this.agendaId,
      nama: nama ?? this.nama,
      nim: nim ?? this.nim,
      email: email ?? this.email,
      prodi: prodi ?? this.prodi,
      alamat: alamat ?? this.alamat,
      createdAt: createdAt ?? this.createdAt,
    );
  }
}
