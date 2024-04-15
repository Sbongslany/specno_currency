// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';

import '/flutter_flow/flutter_flow_util.dart';

class ConversionRatesStruct extends FFFirebaseStruct {
  ConversionRatesStruct({
    String? conversionRates,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _conversionRates = conversionRates,
        super(firestoreUtilData);

  // "conversion_rates" field.
  String? _conversionRates;
  String get conversionRates => _conversionRates ?? '';
  set conversionRates(String? val) => _conversionRates = val;
  bool hasConversionRates() => _conversionRates != null;

  static ConversionRatesStruct fromMap(Map<String, dynamic> data) =>
      ConversionRatesStruct(
        conversionRates: data['conversion_rates'] as String?,
      );

  static ConversionRatesStruct? maybeFromMap(dynamic data) => data is Map
      ? ConversionRatesStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'conversion_rates': _conversionRates,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'conversion_rates': serializeParam(
          _conversionRates,
          ParamType.String,
        ),
      }.withoutNulls;

  static ConversionRatesStruct fromSerializableMap(Map<String, dynamic> data) =>
      ConversionRatesStruct(
        conversionRates: deserializeParam(
          data['conversion_rates'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'ConversionRatesStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is ConversionRatesStruct &&
        conversionRates == other.conversionRates;
  }

  @override
  int get hashCode => const ListEquality().hash([conversionRates]);
}

ConversionRatesStruct createConversionRatesStruct({
  String? conversionRates,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    ConversionRatesStruct(
      conversionRates: conversionRates,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

ConversionRatesStruct? updateConversionRatesStruct(
  ConversionRatesStruct? conversionRatesStruct, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    conversionRatesStruct
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addConversionRatesStructData(
  Map<String, dynamic> firestoreData,
  ConversionRatesStruct? conversionRatesStruct,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (conversionRatesStruct == null) {
    return;
  }
  if (conversionRatesStruct.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields = !forFieldValue &&
      conversionRatesStruct.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final conversionRatesStructData =
      getConversionRatesFirestoreData(conversionRatesStruct, forFieldValue);
  final nestedData =
      conversionRatesStructData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields =
      conversionRatesStruct.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getConversionRatesFirestoreData(
  ConversionRatesStruct? conversionRatesStruct, [
  bool forFieldValue = false,
]) {
  if (conversionRatesStruct == null) {
    return {};
  }
  final firestoreData = mapToFirestore(conversionRatesStruct.toMap());

  // Add any Firestore field values
  conversionRatesStruct.firestoreUtilData.fieldValues
      .forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getConversionRatesListFirestoreData(
  List<ConversionRatesStruct>? conversionRatesStructs,
) =>
    conversionRatesStructs
        ?.map((e) => getConversionRatesFirestoreData(e, true))
        .toList() ??
    [];
