import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'games_record.g.dart';

abstract class GamesRecord implements Built<GamesRecord, GamesRecordBuilder> {
  static Serializer<GamesRecord> get serializer => _$gamesRecordSerializer;

  @BuiltValueField(wireName: 'game_info')
  GameStruct get gameInfo;

  BuiltList<QuestionStruct>? get questionList;

  @BuiltValueField(wireName: 'current_ques')
  int? get currentQues;

  @BuiltValueField(wireName: 'last_ask_time')
  String? get lastAskTime;

  @BuiltValueField(wireName: 'answers_count')
  int? get answersCount;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  static void _initializeBuilder(GamesRecordBuilder builder) => builder
    ..gameInfo = GameStructBuilder()
    ..questionList = ListBuilder()
    ..currentQues = 0
    ..lastAskTime = ''
    ..answersCount = 0;

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('games');

  static Stream<GamesRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<GamesRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  GamesRecord._();
  factory GamesRecord([void Function(GamesRecordBuilder) updates]) =
      _$GamesRecord;

  static GamesRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createGamesRecordData({
  GameStruct? gameInfo,
  int? currentQues,
  String? lastAskTime,
  int? answersCount,
}) {
  final firestoreData = serializers.toFirestore(
    GamesRecord.serializer,
    GamesRecord(
      (g) => g
        ..gameInfo = GameStructBuilder()
        ..questionList = null
        ..currentQues = currentQues
        ..lastAskTime = lastAskTime
        ..answersCount = answersCount,
    ),
  );

  // Handle nested data for "game_info" field.
  addGameStructData(firestoreData, gameInfo, 'game_info');

  return firestoreData;
}
