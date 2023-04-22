// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'question_struct.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<QuestionStruct> _$questionStructSerializer =
    new _$QuestionStructSerializer();

class _$QuestionStructSerializer
    implements StructuredSerializer<QuestionStruct> {
  @override
  final Iterable<Type> types = const [QuestionStruct, _$QuestionStruct];
  @override
  final String wireName = 'QuestionStruct';

  @override
  Iterable<Object?> serialize(Serializers serializers, QuestionStruct object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'firestoreUtilData',
      serializers.serialize(object.firestoreUtilData,
          specifiedType: const FullType(FirestoreUtilData)),
    ];
    Object? value;
    value = object.questionDesc;
    if (value != null) {
      result
        ..add('question_desc')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.options;
    if (value != null) {
      result
        ..add('options')
        ..add(serializers.serialize(value,
            specifiedType:
                const FullType(BuiltList, const [const FullType(String)])));
    }
    value = object.correctIndex;
    if (value != null) {
      result
        ..add('correct_index')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.image;
    if (value != null) {
      result
        ..add('image')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  QuestionStruct deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new QuestionStructBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'question_desc':
          result.questionDesc = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'options':
          result.options.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(String)]))!
              as BuiltList<Object?>);
          break;
        case 'correct_index':
          result.correctIndex = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'image':
          result.image = serializers.deserialize(value,
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

class _$QuestionStruct extends QuestionStruct {
  @override
  final String? questionDesc;
  @override
  final BuiltList<String>? options;
  @override
  final int? correctIndex;
  @override
  final String? image;
  @override
  final FirestoreUtilData firestoreUtilData;

  factory _$QuestionStruct([void Function(QuestionStructBuilder)? updates]) =>
      (new QuestionStructBuilder()..update(updates))._build();

  _$QuestionStruct._(
      {this.questionDesc,
      this.options,
      this.correctIndex,
      this.image,
      required this.firestoreUtilData})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        firestoreUtilData, r'QuestionStruct', 'firestoreUtilData');
  }

  @override
  QuestionStruct rebuild(void Function(QuestionStructBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  QuestionStructBuilder toBuilder() =>
      new QuestionStructBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is QuestionStruct &&
        questionDesc == other.questionDesc &&
        options == other.options &&
        correctIndex == other.correctIndex &&
        image == other.image &&
        firestoreUtilData == other.firestoreUtilData;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, questionDesc.hashCode);
    _$hash = $jc(_$hash, options.hashCode);
    _$hash = $jc(_$hash, correctIndex.hashCode);
    _$hash = $jc(_$hash, image.hashCode);
    _$hash = $jc(_$hash, firestoreUtilData.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'QuestionStruct')
          ..add('questionDesc', questionDesc)
          ..add('options', options)
          ..add('correctIndex', correctIndex)
          ..add('image', image)
          ..add('firestoreUtilData', firestoreUtilData))
        .toString();
  }
}

class QuestionStructBuilder
    implements Builder<QuestionStruct, QuestionStructBuilder> {
  _$QuestionStruct? _$v;

  String? _questionDesc;
  String? get questionDesc => _$this._questionDesc;
  set questionDesc(String? questionDesc) => _$this._questionDesc = questionDesc;

  ListBuilder<String>? _options;
  ListBuilder<String> get options =>
      _$this._options ??= new ListBuilder<String>();
  set options(ListBuilder<String>? options) => _$this._options = options;

  int? _correctIndex;
  int? get correctIndex => _$this._correctIndex;
  set correctIndex(int? correctIndex) => _$this._correctIndex = correctIndex;

  String? _image;
  String? get image => _$this._image;
  set image(String? image) => _$this._image = image;

  FirestoreUtilData? _firestoreUtilData;
  FirestoreUtilData? get firestoreUtilData => _$this._firestoreUtilData;
  set firestoreUtilData(FirestoreUtilData? firestoreUtilData) =>
      _$this._firestoreUtilData = firestoreUtilData;

  QuestionStructBuilder() {
    QuestionStruct._initializeBuilder(this);
  }

  QuestionStructBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _questionDesc = $v.questionDesc;
      _options = $v.options?.toBuilder();
      _correctIndex = $v.correctIndex;
      _image = $v.image;
      _firestoreUtilData = $v.firestoreUtilData;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(QuestionStruct other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$QuestionStruct;
  }

  @override
  void update(void Function(QuestionStructBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  QuestionStruct build() => _build();

  _$QuestionStruct _build() {
    _$QuestionStruct _$result;
    try {
      _$result = _$v ??
          new _$QuestionStruct._(
              questionDesc: questionDesc,
              options: _options?.build(),
              correctIndex: correctIndex,
              image: image,
              firestoreUtilData: BuiltValueNullFieldError.checkNotNull(
                  firestoreUtilData, r'QuestionStruct', 'firestoreUtilData'));
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'options';
        _options?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'QuestionStruct', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
