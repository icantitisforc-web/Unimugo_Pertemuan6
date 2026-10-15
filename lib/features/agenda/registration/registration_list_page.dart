import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../state/registration_providers.dart';

class RegistrationListPage extends ConsumerWidget {
  const RegistrationListPage({super.key, required this.id});
  final String id;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final peserta = ref.watch(registrationsProvider(id));

    return Scaffold(
      appBar: AppBar(title: Text('Peserta $id')),
      body: peserta.when(
        loading: () => const Center(child: CircularProgressIndicator()),
        error: (e, _) => Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              const Text('Gagal memuat peserta'),
              const SizedBox(height: 8),
              FilledButton(
                onPressed: () => ref.invalidate(registrationsProvider(id)),
                child: const Text('Coba Lagi'),
              ),
            ],
          ),
        ),
        data: (items) {
          if (items.isEmpty) {
            return const Center(child: Text('Belum ada peserta'));
          }
          return ListView.builder(
            padding: const EdgeInsets.all(8),
            itemCount: items.length,
            itemBuilder: (context, i) {
              final r = items[i];
              return Card(
                child: ListTile(
                  leading: CircleAvatar(child: Text(r.nama[0].toUpperCase())),
                  title: Text(r.nama),
                  subtitle: Text('${r.nim} • ${r.prodi}'),
                ),
              );
            },
          );
        },
      ),
    );
  }
}
