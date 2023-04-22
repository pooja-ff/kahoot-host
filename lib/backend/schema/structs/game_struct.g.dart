// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'game_struct.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<GameStruct> _$gameStructSerializer = new _$GameStructSerializer();

class _$GameStructSerializer implements StructuredSerializer<GameStruct> {
  @override
  final Iterable<Type> types = const [GameStruct, _$GameStruct];
  @override
  final String wireName = 'GameStruct';

  @override
  Iterable<Object?> serialize(Serializers serializers, GameStruct object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'firestoreUtilData',
      serializers.serialize(object.firestoreUtilData,
          specifiedType: const FullType(FirestoreUtilData)),
    ];
    Object? value;
    value = object.gameCode;
    if (value != null) {
      result
        ..add('game_code')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.gameStatus;
    if (value != null) {
      result
        ..add('game_status')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  GameStruct deserialize(Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GameStructBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'game_code':
          result.gameCode = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'game_status':
          result.gameStatus = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'firestoreUtilData':
          result.firestoreUtilData = serializers.deserialize(value,
                  specifiedType: const FullType(FirestoreUtilData))!
              as FirestoreUtilData;
          break;
      }
    }

    return result.build();
  }
}

class _$GameStruct extends GameStruct {
  @override
  final int? gameCode;
  @override
  final String? gameStatus;
  @override
  final FirestoreUtilData firestoreUtilData;

  factory _$GameStruct([void Function(GameStructBuilder)? updates]) =>
      (new GameStructBuilder()..update(updates))._build();

  _$GameStruct._(
      {this.gameCode, this.gameStatus, required this.firestoreUtilData})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        firestoreUtilData, r'GameStruct', 'firestoreUtilData');
  }

  @override
  GameStruct rebuild(void Function(GameStructBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GameStructBuilder toBuilder() => new GameStructBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GameStruct &&
        gameCode == other.gameCode &&
        gameStatus == other.gameStatus &&
        firestoreUtilData == other.firestoreUtilData;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, gameCode.hashCode);
    _$hash = $jc(_$hash, gameStatus.hashCode);
    _$hash = $jc(_$hash, firestoreUtilData.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GameStruct')
          ..add('gameCode', gameCode)
          ..add('gameStatus', gameStatus)
          ..add('firestoreUtilData', firestoreUtilData))
        .toString();
  }
}

class GameStructBuilder implements Builder<GameStruct, GameStructBuilder> {
  _$GameStruct? _$v;

  int? _gameCode;
  int? get gameCode => _$this._gameCode;
  set gameCode(int? gameCode) => _$this._gameCode = gameCode;

  String? _gameStatus;
  String? get gameStatus => _$this._gameStatus;
  set gameStatus(String? gameStatus) => _$this._gameStatus = gameStatus;

  FirestoreUtilData? _firestoreUtilData;
  FirestoreUtilData? get firestoreUtilData => _$this._firestoreUtilData;
  set firestoreUtilData(FirestoreUtilData? firestoreUtilData) =>
      _$this._firestoreUtilData = firestoreUtilData;

  GameStructBuilder() {
    GameStruct._initializeBuilder(this);
  }

  GameStructBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _gameCode = $v.gameCode;
      _gameStatus = $v.gameStatus;
      _firestoreUtilData = $v.firestoreUtilData;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GameStruct other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GameStruct;
  }

  @override
  void update(void Function(GameStructBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GameStruct build() => _build();

  _$GameStruct _build() {
    final _$result = _$v ??
        new _$GameStruct._(
            gameCode: gameCode,
            gameStatus: gameStatus,
            firestoreUtilData: BuiltValueNullFieldError.checkNotNull(
                firestoreUtilData, r'GameStruct', 'firestoreUtilData'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
