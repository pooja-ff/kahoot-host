// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'players_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<PlayersRecord> _$playersRecordSerializer =
    new _$PlayersRecordSerializer();

class _$PlayersRecordSerializer implements StructuredSerializer<PlayersRecord> {
  @override
  final Iterable<Type> types = const [PlayersRecord, _$PlayersRecord];
  @override
  final String wireName = 'PlayersRecord';

  @override
  Iterable<Object?> serialize(Serializers serializers, PlayersRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.playerId;
    if (value != null) {
      result
        ..add('player_id')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                DocumentReference, const [const FullType.nullable(Object)])));
    }
    value = object.nickname;
    if (value != null) {
      result
        ..add('nickname')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.score;
    if (value != null) {
      result
        ..add('score')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.ffRef;
    if (value != null) {
      result
        ..add('Document__Reference__Field')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                DocumentReference, const [const FullType.nullable(Object)])));
    }
    return result;
  }

  @override
  PlayersRecord deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new PlayersRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'player_id':
          result.playerId = serializers.deserialize(value,
              specifiedType: const FullType(DocumentReference, const [
                const FullType.nullable(Object)
              ])) as DocumentReference<Object?>?;
          break;
        case 'nickname':
          result.nickname = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'score':
          result.score = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'Document__Reference__Field':
          result.ffRef = serializers.deserialize(value,
              specifiedType: const FullType(DocumentReference, const [
                const FullType.nullable(Object)
              ])) as DocumentReference<Object?>?;
          break;
      }
    }

    return result.build();
  }
}

class _$PlayersRecord extends PlayersRecord {
  @override
  final DocumentReference<Object?>? playerId;
  @override
  final String? nickname;
  @override
  final int? score;
  @override
  final DocumentReference<Object?>? ffRef;

  factory _$PlayersRecord([void Function(PlayersRecordBuilder)? updates]) =>
      (new PlayersRecordBuilder()..update(updates))._build();

  _$PlayersRecord._({this.playerId, this.nickname, this.score, this.ffRef})
      : super._();

  @override
  PlayersRecord rebuild(void Function(PlayersRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  PlayersRecordBuilder toBuilder() => new PlayersRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is PlayersRecord &&
        playerId == other.playerId &&
        nickname == other.nickname &&
        score == other.score &&
        ffRef == other.ffRef;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, playerId.hashCode);
    _$hash = $jc(_$hash, nickname.hashCode);
    _$hash = $jc(_$hash, score.hashCode);
    _$hash = $jc(_$hash, ffRef.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'PlayersRecord')
          ..add('playerId', playerId)
          ..add('nickname', nickname)
          ..add('score', score)
          ..add('ffRef', ffRef))
        .toString();
  }
}

class PlayersRecordBuilder
    implements Builder<PlayersRecord, PlayersRecordBuilder> {
  _$PlayersRecord? _$v;

  DocumentReference<Object?>? _playerId;
  DocumentReference<Object?>? get playerId => _$this._playerId;
  set playerId(DocumentReference<Object?>? playerId) =>
      _$this._playerId = playerId;

  String? _nickname;
  String? get nickname => _$this._nickname;
  set nickname(String? nickname) => _$this._nickname = nickname;

  int? _score;
  int? get score => _$this._score;
  set score(int? score) => _$this._score = score;

  DocumentReference<Object?>? _ffRef;
  DocumentReference<Object?>? get ffRef => _$this._ffRef;
  set ffRef(DocumentReference<Object?>? ffRef) => _$this._ffRef = ffRef;

  PlayersRecordBuilder() {
    PlayersRecord._initializeBuilder(this);
  }

  PlayersRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _playerId = $v.playerId;
      _nickname = $v.nickname;
      _score = $v.score;
      _ffRef = $v.ffRef;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(PlayersRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$PlayersRecord;
  }

  @override
  void update(void Function(PlayersRecordBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  PlayersRecord build() => _build();

  _$PlayersRecord _build() {
    final _$result = _$v ??
        new _$PlayersRecord._(
            playerId: playerId, nickname: nickname, score: score, ffRef: ffRef);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
