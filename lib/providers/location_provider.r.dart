import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'location_provider.r.g.dart';


@riverpod
class LocationList extends _$LocationList {
  @override
  Future<List<String>> build() async {
    print("fetch API data for LocationList");
    await Future.delayed(const Duration(seconds: 2));
    return ['location1', 'location2'];
  }

}

@riverpod
class Location extends _$Location {
  @override
  Future<String> build() async {
    final locationList = await ref.watch(locationListProvider.future);
    print("waiting for API data for LocationList");
    return locationList[0];
  }

  void setLocation(String location) {
    state = AsyncData(location);
  }
}