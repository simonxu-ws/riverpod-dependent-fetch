// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'location_provider.r.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$locationListHash() => r'5d1395bcd63b2b4b369d8ca2d7a9288728fef655';

/// See also [LocationList].
@ProviderFor(LocationList)
final locationListProvider =
    AsyncNotifierProvider<LocationList, List<String>>.internal(
  LocationList.new,
  name: r'locationListProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product') ? null : _$locationListHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef _$LocationList = AsyncNotifier<List<String>>;
String _$locationHash() => r'3d52273a997e7d00c369c0b6ad30e3e9a2bf7da2';

/// See also [Location].
@ProviderFor(Location)
final locationProvider = AsyncNotifierProvider<Location, String>.internal(
  Location.new,
  name: r'locationProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product') ? null : _$locationHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef _$Location = AsyncNotifier<String>;
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
