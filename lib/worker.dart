import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import 'providers/app_location.r.dart';
import 'providers/location_provider.r.dart';

class WorkerWidget extends HookConsumerWidget {
  const WorkerWidget({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final appLocation = ref.watch(appLocationProvider);
    final location = ref.watch(locationProvider).valueOrNull;
    return appLocation.when(
      data: (appLocation) => Row(
        spacing: 12,
        children: [
          Text('$location'),  
          Text('${appLocation['timezone']}'),
        ],
      ),
      loading: () => const CircularProgressIndicator(),
      error: (error, stackTrace) => Text('Error: $error'),
    );
  }
}