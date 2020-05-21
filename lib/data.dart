// To parse this JSON data, do
//
//     final dataJson = dataJsonFromJson(jsonString);

import 'dart:convert';

List<DataJson> dataJsonFromJson(String str) => List<DataJson>.from(json.decode(str).map((x) => DataJson.fromMap(x)));

String dataJsonToJson(List<DataJson> data) => json.encode(List<dynamic>.from(data.map((x) => x.toMap())));

class DataJson {
  String sensor;
  String sample;
  String batt;
  String hum;
  String press1;
  String press2;
  String t1;
  String t2;
  String t3;
  String t4;
  String t5;
  String t6;
  String t7;
  String t8;
  String t9;

  DataJson({
    this.sensor,
    this.sample,
    this.batt,
    this.hum,
    this.press1,
    this.press2,
    this.t1,
    this.t2,
    this.t3,
    this.t4,
    this.t5,
    this.t6,
    this.t7,
    this.t8,
    this.t9,
  });

  factory DataJson.fromMap(Map<String, dynamic> json) => DataJson(
    sensor: json["sensor"],
    sample: json["sample"],
    batt: json["batt"],
    hum: json["hum"],
    press1: json["press1"],
    press2: json["press2"],
    t1: json["T1"],
    t2: json["T2"],
    t3: json["T3"],
    t4: json["T4"],
    t5: json["T5"],
    t6: json["T6"],
    t7: json["T7"],
    t8: json["T8"],
    t9: json["T9"],
  );

  Map<String, dynamic> toMap() => {
    "sensor": sensor,
    "sample": sample,
    "batt": batt,
    "hum": hum,
    "press1": press1,
    "press2": press2,
    "T1": t1,
    "T2": t2,
    "T3": t3,
    "T4": t4,
    "T5": t5,
    "T6": t6,
    "T7": t7,
    "T8": t8,
    "T9": t9,
  };
}
