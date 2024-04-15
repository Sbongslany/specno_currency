// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';

import '/flutter_flow/flutter_flow_util.dart';

class GetCurrenciesStruct extends FFFirebaseStruct {
  GetCurrenciesStruct({
    String? name,
    String? code,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _name = name,
        _code = code,
        super(firestoreUtilData);

  // "name" field.
  String? _name;
  String get name => _name ?? '';
  set name(String? val) => _name = val;
  bool hasName() => _name != null;

  // "code" field.
  String? _code;
  String get code => _code ?? '';
  set code(String? val) => _code = val;
  bool hasCode() => _code != null;

  static GetCurrenciesStruct fromMap(Map<String, dynamic> data) =>
      GetCurrenciesStruct(
        name: data['name'] as String?,
        code: data['code'] as String?,
      );

  static GetCurrenciesStruct? maybeFromMap(dynamic data) => data is Map
      ? GetCurrenciesStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'name': _name,
        'code': _code,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'name': serializeParam(
          _name,
          ParamType.String,
        ),
        'code': serializeParam(
          _code,
          ParamType.String,
        ),
      }.withoutNulls;

  static GetCurrenciesStruct fromSerializableMap(Map<String, dynamic> data) =>
      GetCurrenciesStruct(
        name: deserializeParam(
          data['name'],
          ParamType.String,
          false,
        ),
        code: deserializeParam(
          data['code'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'GetCurrenciesStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is GetCurrenciesStruct &&
        name == other.name &&
        code == other.code;
  }

  @override
  int get hashCode => const ListEquality().hash([name, code]);
}

GetCurrenciesStruct createGetCurrenciesStruct({
  String? name,
  String? code,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    GetCurrenciesStruct(
      name: name,
      code: code,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

GetCurrenciesStruct? updateGetCurrenciesStruct(
  GetCurrenciesStruct? getCurrencies, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    getCurrencies
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addGetCurrenciesStructData(
  Map<String, dynamic> firestoreData,
  GetCurrenciesStruct? getCurrencies,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (getCurrencies == null) {
    return;
  }
  if (getCurrencies.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && getCurrencies.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final getCurrenciesData =
      getGetCurrenciesFirestoreData(getCurrencies, forFieldValue);
  final nestedData =
      getCurrenciesData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields = getCurrencies.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getGetCurrenciesFirestoreData(
  GetCurrenciesStruct? getCurrencies, [
  bool forFieldValue = false,
]) {
  if (getCurrencies == null) {
    return {};
  }
  final firestoreData = mapToFirestore(getCurrencies.toMap());

  // Add any Firestore field values
  getCurrencies.firestoreUtilData.fieldValues
      .forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getGetCurrenciesListFirestoreData(
  List<GetCurrenciesStruct>? getCurrenciess,
) =>
    getCurrenciess
        ?.map((e) => getGetCurrenciesFirestoreData(e, true))
        .toList() ??
    [];
