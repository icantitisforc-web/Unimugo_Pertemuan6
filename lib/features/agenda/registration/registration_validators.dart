import 'package:flutter/src/widgets/form.dart';

class RegistrationValidators {
  static FormFieldValidator<String>? get alamat => null;

  static String? nama(String? v) {
    if (v == null || v.trim().isEmpty) return 'Nama wajib diisi';
    if (v.trim().length < 3) return 'Nama minimal 3 karakter';
    return null;
  }

  static String? nim(String? v) {
    if (v == null || v.isEmpty) return 'NIM wajib diisi';
    if (v.length < 8) return 'NIM minimal 8 digit';
    return null;
  }

  static String? email(String? v) {
    if (v == null || v.trim().isEmpty) return 'Email wajib diisi';
    final pola = RegExp(r'^[\w.+-]+@[\w-]+\.[\w.-]+$');
    if (!pola.hasMatch(v.trim())) {
      return 'Format email tidak valid, contoh: nama@kampus.ac.id';
    }
    return null;
  }

  static String? prodi(String? v) => v == null ? 'Pilih program studi' : null;
}
