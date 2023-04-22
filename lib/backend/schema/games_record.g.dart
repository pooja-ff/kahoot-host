// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'games_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<GamesRecord> _$gamesRecordSerializer = new _$GamesRecordSerializer();

class _$GamesRecordSerializer implements StructuredSerializer<GamesRecord> {
  @override
  final Iterable<Type> types = const [GamesRecord, _$GamesRecord];
  @override
  final String wireName = 'GamesRecord';

  @override
  Iterable<Object?> serialize(Serializers serializers, GamesRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'game_info',
      serializers.serialize(object.gameInfo,
          specifiedType: const FullType(GameStruct)),
    ];
    Object? value;
    value = object.questionList;
    if (value != null) {
      result
        ..add('questionList')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                BuiltList, const [const FullType(QuestionStruct)])));
    }
    value = object.currentQues;
    if (value != null) {
      result
        ..add('current_ques')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.lastAskTime;
    if (value != null) {
      result
        ..add('last_ask_time')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.answersCount;
    if (value != null) {
      result
        ..add('answers_count')
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
  GamesRecord deserialize(Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GamesRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'game_info':
          result.gameInfo.replace(serializers.deserialize(value,
              specifiedType: const FullType(GameStruct))! as GameStruct);
          break;
        case 'questionList':
          result.questionList.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(QuestionStruct)]))!
              as BuiltList<Object?>);
          break;
        case 'current_ques':
          result.currentQues = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'last_ask_time':
          result.lastAskTime = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'answers_count':
          result.answersCount = serializers.deserialize(value,
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

class _$GamesRecord extends GamesRecord {
  @override
  final GameStruct gameInfo;
  @override
  final BuiltList<QuestionStruct>? questionList;
  @override
  final int? currentQues;
  @override
  final String? lastAskTime;
  @override
  final int? answersCount;
  @override
  final DocumentReference<Object?>? ffRef;

  factory _$GamesRecord([void Function(GamesRecordBuilder)? updates]) =>
      (new GamesRecordBuilder()..update(updates))._build();

  _$GamesRecord._(
      {required this.gameInfo,
      this.questionList,
      this.currentQues,
      this.lastAskTime,
      this.answersCount,
      this.ffRef})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(gameInfo, r'GamesRecord', 'gameInfo');
  }

  @override
  GamesRecord rebuild(void Function(GamesRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GamesRecordBuilder toBuilder() => new GamesRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GamesRecord &&
        gameInfo == other.gameInfo &&
        questionList == other.questionList &&
        currentQues == other.currentQues &&
        lastAskTime == other.lastAskTime &&
        answersCount == other.answersCount &&
        ffRef == other.ffRef;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, gameInfo.hashCode);
    _$hash = $jc(_$hash, questionList.hashCode);
    _$hash = $jc(_$hash, currentQues.hashCode);
    _$hash = $jc(_$hash, lastAskTime.hashCode);
    _$hash = $jc(_$hash, answersCount.hashCode);
    _$hash = $jc(_$hash, ffRef.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GamesRecord')
          ..add('gameInfo', gameInfo)
          ..add('questionList', questionList)
          ..add('currentQues', currentQues)
          ..add('lastAskTime', lastAskTime)
          ..add('answersCount', answersCount)
          ..add('ffRef', ffRef))
        .toString();
  }
}

class GamesRecordBuilder implements Builder<GamesRecord, GamesRecordBuilder> {
  _$GamesRecord? _$v;

  GameStructBuilder? _gameInfo;
  GameStructBuilder get gameInfo =>
      _$this._gameInfo ??= new GameStructBuilder();
  set gameInfo(GameStructBuilder? gameInfo) => _$this._gameInfo = gameInfo;

  ListBuilder<QuestionStruct>? _questionList;
  ListBuilder<QuestionStruct> get questionList =>
      _$this._questionList ??= new ListBuilder<QuestionStruct>();
  set questionList(ListBuilder<QuestionStruct>? questionList) =>
      _$this._questionList = questionList;

  int? _currentQues;
  int? get currentQues => _$this._currentQues;
  set currentQues(int? currentQues) => _$this._currentQues = currentQues;

  String? _lastAskTime;
  String? get lastAskTime => _$this._lastAskTime;
  set lastAskTime(String? lastAskTime) => _$this._lastAskTime = lastAskTime;

  int? _answersCount;
  int? get answersCount => _$this._answersCount;
  set answersCount(int? answersCount) => _$this._answersCount = answersCount;

  DocumentReference<Object?>? _ffRef;
  DocumentReference<Object?>? get ffRef => _$this._ffRef;
  set ffRef(DocumentReference<Object?>? ffRef) => _$this._ffRef = ffRef;

  GamesRecordBuilder() {
    GamesRecord._initializeBuilder(this);
  }

  GamesRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _gameInfo = $v.gameInfo.toBuilder();
      _questionList = $v.questionList?.toBuilder();
      _currentQues = $v.currentQues;
      _lastAskTime = $v.lastAskTime;
      _answersCount = $v.answersCount;
      _ffRef = $v.ffRef;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GamesRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GamesRecord;
  }

  @override
  void update(void Function(GamesRecordBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GamesRecord build() => _build();

  _$GamesRecord _build() {
    _$GamesRecord _$result;
    try {
      _$result = _$v ??
          new _$GamesRecord._(
              gameInfo: gameInfo.build(),
              questionList: _questionList?.build(),
              currentQues: currentQues,
              lastAskTime: lastAskTime,
              answersCount: answersCount,
              ffRef: ffRef);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'gameInfo';
        gameInfo.build();
        _$failedField = 'questionList';
        _questionList?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GamesRecord', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
