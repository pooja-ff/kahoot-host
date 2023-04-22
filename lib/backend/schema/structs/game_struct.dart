import 'dart:async';

import '../index.dart';
import '../serializers.dart';
import 'package:built_value/built_value.dart';

part 'game_struct.g.dart';

abstract class GameStruct implements Built<GameStruct, GameStructBuilder> {
  static Serializer<GameStruct> get serializer => _$gameStructSerializer;

  @BuiltValueField(wireName: 'game_code')
  int? get gameCode;

  @BuiltValueField(wireName: 'game_status')
  String? get gameStatus;

  /// Utility class for Firestore updates
  FirestoreUtilData get firestoreUtilData;

  static void _initializeBuilder(GameStructBuilder builder) => builder
    ..gameCode = 0
    ..gameStatus = ''
    ..firestoreUtilData = FirestoreUtilData();

  GameStruct._();
  factory GameStruct([void Function(GameStructBuilder) updates]) = _$GameStruct;
}

GameStruct createGameStruct({
  int? gameCode,
  String? gameStatus,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    GameStruct(
      (g) => g
        ..gameCode = gameCode
        ..gameStatus = gameStatus
        ..firestoreUtilData = FirestoreUtilData(
          clearUnsetFields: clearUnsetFields,
          create: create,
          delete: delete,
          fieldValues: fieldValues,
        ),
    );

GameStruct? updateGameStruct(
  GameStruct? game, {
  bool clearUnsetFields = true,
}) =>
    game != null
        ? (game.toBuilder()
              ..firestoreUtilData =
                  FirestoreUtilData(clearUnsetFields: clearUnsetFields))
            .build()
        : null;

void addGameStructData(
  Map<String, dynamic> firestoreData,
  GameStruct? game,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (game == null) {
    return;
  }
  if (game.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  if (!forFieldValue && game.firestoreUtilData.clearUnsetFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final gameData = getGameFirestoreData(game, forFieldValue);
  final nestedData = gameData.map((k, v) => MapEntry('$fieldName.$k', v));

  final create = game.firestoreUtilData.create;
  firestoreData.addAll(create ? mergeNestedFields(nestedData) : nestedData);

  return;
}

Map<String, dynamic> getGameFirestoreData(
  GameStruct? game, [
  bool forFieldValue = false,
]) {
  if (game == null) {
    return {};
  }
  final firestoreData = serializers.toFirestore(GameStruct.serializer, game);

  // Add any Firestore field values
  game.firestoreUtilData.fieldValues.forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getGameListFirestoreData(
  List<GameStruct>? games,
) =>
    games?.map((g) => getGameFirestoreData(g, true)).toList() ?? [];
