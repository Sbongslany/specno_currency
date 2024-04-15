import 'dart:convert';

import '/flutter_flow/flutter_flow_util.dart';
import 'api_manager.dart';

export 'api_manager.dart' show ApiCallResponse;

const _kPrivateApiFunctionName = 'ffPrivateApiCall';

class GetCurrencyConversionCall {
  static Future<ApiCallResponse> call({
    String? countryCode = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'GetCurrencyConversion',
      apiUrl:
          'https://v6.exchangerate-api.com/v6/018c2be99f16a2d4eb56ae7b/latest/ZAR',
      callType: ApiCallType.GET,
      headers: {},
      params: {
        'countryCode': countryCode,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }
}

class GetCurrenciesCall {
  static Future<ApiCallResponse> call() async {
    return ApiManager.instance.makeApiCall(
      callName: 'GetCurrencies',
      apiUrl:
          'https://api.freecurrencyapi.com/v1/currencies?apikey=fca_live_LgVilMYlgZTpDNCgkXfmVQuloWNf2nzMAkRdfKTk',
      callType: ApiCallType.GET,
      headers: {},
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }

  static List<String>? code(dynamic response) => (getJsonField(
        response,
        r'''$.data..code''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
}

class ConvertCurrencyCall {
  static Future<ApiCallResponse> call({
    String? accessKey = '',
    String? from = '',
    String? to = '',
    String? amount = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'ConvertCurrency',
      apiUrl: 'https://api.currencylayer.com/convert',
      callType: ApiCallType.GET,
      headers: {},
      params: {
        'access_key': accessKey,
        'from': from,
        'to': to,
        'amount': amount,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }

  static bool? status(dynamic response) => castToType<bool>(getJsonField(
        response,
        r'''$.success''',
      ));
  static dynamic error(dynamic response) => getJsonField(
        response,
        r'''$.error''',
      );
  static String? errorInfo(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.error.info''',
      ));
}

class ApiPagingParams {
  int nextPageNumber = 0;
  int numItems = 0;
  dynamic lastResponse;

  ApiPagingParams({
    required this.nextPageNumber,
    required this.numItems,
    required this.lastResponse,
  });

  @override
  String toString() =>
      'PagingParams(nextPageNumber: $nextPageNumber, numItems: $numItems, lastResponse: $lastResponse,)';
}

String _serializeList(List? list) {
  list ??= <String>[];
  try {
    return json.encode(list);
  } catch (_) {
    return '[]';
  }
}

String _serializeJson(dynamic jsonVar, [bool isList = false]) {
  jsonVar ??= (isList ? [] : {});
  try {
    return json.encode(jsonVar);
  } catch (_) {
    return isList ? '[]' : '{}';
  }
}
