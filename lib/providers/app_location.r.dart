import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:riverpod_cancel/providers/location_settings.r.dart';

import 'location_provider.r.dart';

part 'app_location.r.g.dart';

@Riverpod(keepAlive: true)
class AppLocation extends _$AppLocation {
  @override
  Future<Map<String, dynamic>> build() async {
    final locationId = await ref.watch(locationProvider.future);
    final settings = await ref.watch(locationSettingsProvider((locationId: locationId)).future);
    return {
      'timezone': settings['timezone'],
    };
  }
}