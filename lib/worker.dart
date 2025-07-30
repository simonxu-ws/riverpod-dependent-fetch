import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import 'providers/app_location.r.dart';
import 'providers/location_provider.r.dart';


class LocationName extends HookConsumerWidget {
  const LocationName({super.key});
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final location = ref.watch(locationProvider);
    return location.when(
      data: (location) => Text(location),
      loading: () => const CircularProgressIndicator(),
      error: (error, stackTrace) => Text('Error: $error'),
    );
  }
}

class WorkerWidget extends HookConsumerWidget {
  const WorkerWidget({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final appLocation = ref.watch(appLocationProvider);
    return appLocation.when(
      data: (appLocation) => Row(
        spacing: 12,
        children: [
          LocationName(),  
          Text('${appLocation['timezone']}'),
        ],
      ),
      loading: () => const CircularProgressIndicator(),
      error: (error, stackTrace) => Text('Error: $error'),
    );
  }
}