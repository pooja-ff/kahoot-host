import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'players_record.g.dart';

abstract class PlayersRecord
    implements Built<PlayersRecord, PlayersRecordBuilder> {
  static Serializer<PlayersRecord> get serializer => _$playersRecordSerializer;

  @BuiltValueField(wireName: 'player_id')
  DocumentReference? get playerId;

  String? get nickname;

  int? get score;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  DocumentReference get parentReference => reference.parent.parent!;

  static void _initializeBuilder(PlayersRecordBuilder builder) => builder
    ..nickname = ''
    ..score = 0;

  static Query<Map<String, dynamic>> collection([DocumentReference? parent]) =>
      parent != null
          ? parent.collection('players')
          : FirebaseFirestore.instance.collectionGroup('players');

  static DocumentReference createDoc(DocumentReference parent) =>
      parent.collection('players').doc();

  static Stream<PlayersRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<PlayersRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  PlayersRecord._();
  factory PlayersRecord([void Function(PlayersRecordBuilder) updates]) =
      _$PlayersRecord;

  static PlayersRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createPlayersRecordData({
  DocumentReference? playerId,
  String? nickname,
  int? score,
}) {
  final firestoreData = serializers.toFirestore(
    PlayersRecord.serializer,
    PlayersRecord(
      (p) => p
        ..playerId = playerId
        ..nickname = nickname
        ..score = score,
    ),
  );

  return firestoreData;
}
