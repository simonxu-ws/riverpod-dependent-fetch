import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:riverpod_cancel/providers/location_settings.r.dart';

import 'location_provider.r.dart';

part 'app_location.r.g.dart';

@riverpod
class AppLocation extends _$AppLocation {
  @override
  Future<Map<String, dynamic>> build() async {
    final locationId = await ref.watch(locationProvider.future);
    print("waiting for API data for LocationId");
    final settings = await ref.watch(locationSettingsProvider((locationId: locationId)).future);
    print("waiting for API data for LocationSettings");
    return {
      'timezone': settings['timezone'],
    };
  }
}