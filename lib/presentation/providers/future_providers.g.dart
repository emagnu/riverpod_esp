// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'future_providers.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$pokemonNameHash() => r'0481adb74d6754e9f8893d4122e844f03fb7a5f0';

/// See also [pokemonName].
@ProviderFor(pokemonName)
final pokemonNameProvider = FutureProvider<String>.internal(
  pokemonName,
  name: r'pokemonNameProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product') ? null : _$pokemonNameHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef PokemonNameRef = FutureProviderRef<String>;
String _$pokemonFamilyHash() => r'840a3bb6126e641cec0904b5963e3ee4f9122327';

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

/// See also [pokemonFamily].
@ProviderFor(pokemonFamily)
const pokemonFamilyProvider = PokemonFamilyFamily();

/// See also [pokemonFamily].
class PokemonFamilyFamily extends Family<AsyncValue<String>> {
  /// See also [pokemonFamily].
  const PokemonFamilyFamily();

  /// See also [pokemonFamily].
  PokemonFamilyProvider call(
    int pokemonId,
  ) {
    return PokemonFamilyProvider(
      pokemonId,
    );
  }

  @override
  PokemonFamilyProvider getProviderOverride(
    covariant PokemonFamilyProvider provider,
  ) {
    return call(
      provider.pokemonId,
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
  String? get name => r'pokemonFamilyProvider';
}

/// See also [pokemonFamily].
class PokemonFamilyProvider extends AutoDisposeFutureProvider<String> {
  /// See also [pokemonFamily].
  PokemonFamilyProvider(
    int pokemonId,
  ) : this._internal(
          (ref) => pokemonFamily(
            ref as PokemonFamilyRef,
            pokemonId,
          ),
          from: pokemonFamilyProvider,
          name: r'pokemonFamilyProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$pokemonFamilyHash,
          dependencies: PokemonFamilyFamily._dependencies,
          allTransitiveDependencies:
              PokemonFamilyFamily._allTransitiveDependencies,
          pokemonId: pokemonId,
        );

  PokemonFamilyProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.pokemonId,
  }) : super.internal();

  final int pokemonId;

  @override
  Override overrideWith(
    FutureOr<String> Function(PokemonFamilyRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: PokemonFamilyProvider._internal(
        (ref) => create(ref as PokemonFamilyRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        pokemonId: pokemonId,
      ),
    );
  }

  @override
  AutoDisposeFutureProviderElement<String> createElement() {
    return _PokemonFamilyProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is PokemonFamilyProvider && other.pokemonId == pokemonId;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, pokemonId.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin PokemonFamilyRef on AutoDisposeFutureProviderRef<String> {
  /// The parameter `pokemonId` of this provider.
  int get pokemonId;
}

class _PokemonFamilyProviderElement
    extends AutoDisposeFutureProviderElement<String> with PokemonFamilyRef {
  _PokemonFamilyProviderElement(super.provider);

  @override
  int get pokemonId => (origin as PokemonFamilyProvider).pokemonId;
}

String _$pokemonIdHash() => r'7d21a7c61d69322f504b57d7cc7196f92b16ed42';

/// See also [PokemonId].
@ProviderFor(PokemonId)
final pokemonIdProvider = NotifierProvider<PokemonId, int>.internal(
  PokemonId.new,
  name: r'pokemonIdProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product') ? null : _$pokemonIdHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef _$PokemonId = Notifier<int>;
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
