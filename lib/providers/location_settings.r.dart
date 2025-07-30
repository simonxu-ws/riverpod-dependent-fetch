import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'location_settings.r.g.dart';

typedef SettingsParams = ({
  String locationId,
});

@riverpod
class LocationSettings extends _$LocationSettings {
  @override
  Future<Map<String, dynamic>> build(SettingsParams params) async {
    final locationId = params.locationId;
    await Future.delayed(const Duration(seconds: 2));
    return {
      'locationId': locationId,
      'timezone': locationId == 'location1' ? 'America/New_York' : 'America/Los_Angeles',
    };
  }
}