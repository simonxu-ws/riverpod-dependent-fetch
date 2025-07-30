import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'location_provider.r.g.dart';



@Riverpod(keepAlive: true)
class LocationList extends _$LocationList {
  @override
  Future<List<String>> build() async {
    await Future.delayed(const Duration(seconds: 1));
    return ['location1', 'location2'];
  }

}

@Riverpod(keepAlive: true)
class Location extends _$Location {
  @override
  Future<String> build() async {
    final locationList = await ref.watch(locationListProvider.future);
    return locationList[0];
  }

  void setLocation(String location) {
    state = AsyncData(location);
  }
}