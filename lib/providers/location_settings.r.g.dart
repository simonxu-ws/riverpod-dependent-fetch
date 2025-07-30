// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'location_settings.r.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$locationSettingsHash() => r'460aba94ef1af484b9899084d618395c74df1b6f';

/// Copied from Dart SDK
class _SystemHash {
  _SystemHash._();

  static int combine(int hash, int value) {
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + value);
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + ((0x0007ffff & hash) << 10));
    return hash ^ (hash >> 6);
  }

  static int finish(int hash) {
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + ((0x03ffffff & hash) << 3));
    // ignore: parameter_assignments
    hash = hash ^ (hash >> 11);
    return 0x1fffffff & (hash + ((0x00003fff & hash) << 15));
  }
}

abstract class _$LocationSettings
    extends BuildlessAutoDisposeAsyncNotifier<Map<String, dynamic>> {
  late final ({String locationId}) params;

  FutureOr<Map<String, dynamic>> build(
    ({String locationId}) params,
  );
}

/// See also [LocationSettings].
@ProviderFor(LocationSettings)
const locationSettingsProvider = LocationSettingsFamily();

/// See also [LocationSettings].
class LocationSettingsFamily extends Family<AsyncValue<Map<String, dynamic>>> {
  /// See also [LocationSettings].
  const LocationSettingsFamily();

  /// See also [LocationSettings].
  LocationSettingsProvider call(
    ({String locationId}) params,
  ) {
    return LocationSettingsProvider(
      params,
    );
  }

  @override
  LocationSettingsProvider getProviderOverride(
    covariant LocationSettingsProvider provider,
  ) {
    return call(
      provider.params,
    );
  }

  static const Iterable<ProviderOrFamily>? _dependencies = null;

  @override
  Iterable<ProviderOrFamily>? get dependencies => _dependencies;

  static const Iterable<ProviderOrFamily>? _allTransitiveDependencies = null;

  @override
  Iterable<ProviderOrFamily>? get allTransitiveDependencies =>
      _allTransitiveDependencies;

  @override
  String? get name => r'locationSettingsProvider';
}

/// See also [LocationSettings].
class LocationSettingsProvider extends AutoDisposeAsyncNotifierProviderImpl<
    LocationSettings, Map<String, dynamic>> {
  /// See also [LocationSettings].
  LocationSettingsProvider(
    ({String locationId}) params,
  ) : this._internal(
          () => LocationSettings()..params = params,
          from: locationSettingsProvider,
          name: r'locationSettingsProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$locationSettingsHash,
          dependencies: LocationSettingsFamily._dependencies,
          allTransitiveDependencies:
              LocationSettingsFamily._allTransitiveDependencies,
          params: params,
        );

  LocationSettingsProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.params,
  }) : super.internal();

  final ({String locationId}) params;

  @override
  FutureOr<Map<String, dynamic>> runNotifierBuild(
    covariant LocationSettings notifier,
  ) {
    return notifier.build(
      params,
    );
  }

  @override
  Override overrideWith(LocationSettings Function() create) {
    return ProviderOverride(
      origin: this,
      override: LocationSettingsProvider._internal(
        () => create()..params = params,
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        params: params,
      ),
    );
  }

  @override
  AutoDisposeAsyncNotifierProviderElement<LocationSettings,
      Map<String, dynamic>> createElement() {
    return _LocationSettingsProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is LocationSettingsProvider && other.params == params;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, params.hashCode);

    return _SystemHash.finish(hash);
  }
}

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
mixin LocationSettingsRef
    on AutoDisposeAsyncNotifierProviderRef<Map<String, dynamic>> {
  /// The parameter `params` of this provider.
  ({String locationId}) get params;
}

class _LocationSettingsProviderElement
    extends AutoDisposeAsyncNotifierProviderElement<LocationSettings,
        Map<String, dynamic>> with LocationSettingsRef {
  _LocationSettingsProviderElement(super.provider);

  @override
  ({String locationId}) get params =>
      (origin as LocationSettingsProvider).params;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
