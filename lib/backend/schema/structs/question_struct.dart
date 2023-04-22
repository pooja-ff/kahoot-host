import 'dart:async';

import '../index.dart';
import '../serializers.dart';
import 'package:built_value/built_value.dart';

part 'question_struct.g.dart';

abstract class QuestionStruct
    implements Built<QuestionStruct, QuestionStructBuilder> {
  static Serializer<QuestionStruct> get serializer =>
      _$questionStructSerializer;

  @BuiltValueField(wireName: 'question_desc')
  String? get questionDesc;

  BuiltList<String>? get options;

  @BuiltValueField(wireName: 'correct_index')
  int? get correctIndex;

  String? get image;

  /// Utility class for Firestore updates
  FirestoreUtilData get firestoreUtilData;

  static void _initializeBuilder(QuestionStructBuilder builder) => builder
    ..questionDesc = ''
    ..options = ListBuilder()
    ..correctIndex = 0
    ..image = ''
    ..firestoreUtilData = FirestoreUtilData();

  QuestionStruct._();
  factory QuestionStruct([void Function(QuestionStructBuilder) updates]) =
      _$QuestionStruct;
}

QuestionStruct createQuestionStruct({
  String? questionDesc,
  int? correctIndex,
  String? image,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    QuestionStruct(
      (q) => q
        ..questionDesc = questionDesc
        ..options = null
        ..correctIndex = correctIndex
        ..image = image
        ..firestoreUtilData = FirestoreUtilData(
          clearUnsetFields: clearUnsetFields,
          create: create,
          delete: delete,
          fieldValues: fieldValues,
        ),
    );

QuestionStruct? updateQuestionStruct(
  QuestionStruct? question, {
  bool clearUnsetFields = true,
}) =>
    question != null
        ? (question.toBuilder()
              ..firestoreUtilData =
                  FirestoreUtilData(clearUnsetFields: clearUnsetFields))
            .build()
        : null;

void addQuestionStructData(
  Map<String, dynamic> firestoreData,
  QuestionStruct? question,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (question == null) {
    return;
  }
  if (question.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  if (!forFieldValue && question.firestoreUtilData.clearUnsetFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final questionData = getQuestionFirestoreData(question, forFieldValue);
  final nestedData = questionData.map((k, v) => MapEntry('$fieldName.$k', v));

  final create = question.firestoreUtilData.create;
  firestoreData.addAll(create ? mergeNestedFields(nestedData) : nestedData);

  return;
}

Map<String, dynamic> getQuestionFirestoreData(
  QuestionStruct? question, [
  bool forFieldValue = false,
]) {
  if (question == null) {
    return {};
  }
  final firestoreData =
      serializers.toFirestore(QuestionStruct.serializer, question);

  // Add any Firestore field values
  question.firestoreUtilData.fieldValues
      .forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getQuestionListFirestoreData(
  List<QuestionStruct>? questions,
) =>
    questions?.map((q) => getQuestionFirestoreData(q, true)).toList() ?? [];
