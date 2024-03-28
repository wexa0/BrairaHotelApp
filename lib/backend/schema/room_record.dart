import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class RoomRecord extends FirestoreRecord {
  RoomRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "Bed" field.
  String? _bed;
  String get bed => _bed ?? '';
  bool hasBed() => _bed != null;

  // "Breakfast" field.
  bool? _breakfast;
  bool get breakfast => _breakfast ?? false;
  bool hasBreakfast() => _breakfast != null;

  // "Fitness_Center" field.
  bool? _fitnessCenter;
  bool get fitnessCenter => _fitnessCenter ?? false;
  bool hasFitnessCenter() => _fitnessCenter != null;

  // "Free_WiFi" field.
  bool? _freeWiFi;
  bool get freeWiFi => _freeWiFi ?? false;
  bool hasFreeWiFi() => _freeWiFi != null;

  // "Parking" field.
  bool? _parking;
  bool get parking => _parking ?? false;
  bool hasParking() => _parking != null;

  // "Room_Capacity" field.
  int? _roomCapacity;
  int get roomCapacity => _roomCapacity ?? 0;
  bool hasRoomCapacity() => _roomCapacity != null;

  // "Room_Description" field.
  String? _roomDescription;
  String get roomDescription => _roomDescription ?? '';
  bool hasRoomDescription() => _roomDescription != null;

  // "Room_Image" field.
  List<String>? _roomImage;
  List<String> get roomImage => _roomImage ?? const [];
  bool hasRoomImage() => _roomImage != null;

  // "Room_Price" field.
  int? _roomPrice;
  int get roomPrice => _roomPrice ?? 0;
  bool hasRoomPrice() => _roomPrice != null;

  // "Room_Type" field.
  String? _roomType;
  String get roomType => _roomType ?? '';
  bool hasRoomType() => _roomType != null;

  // "Swimming_Pool" field.
  bool? _swimmingPool;
  bool get swimmingPool => _swimmingPool ?? false;
  bool hasSwimmingPool() => _swimmingPool != null;

  void _initializeFields() {
    _bed = snapshotData['Bed'] as String?;
    _breakfast = snapshotData['Breakfast'] as bool?;
    _fitnessCenter = snapshotData['Fitness_Center'] as bool?;
    _freeWiFi = snapshotData['Free_WiFi'] as bool?;
    _parking = snapshotData['Parking'] as bool?;
    _roomCapacity = castToType<int>(snapshotData['Room_Capacity']);
    _roomDescription = snapshotData['Room_Description'] as String?;
    _roomImage = getDataList(snapshotData['Room_Image']);
    _roomPrice = castToType<int>(snapshotData['Room_Price']);
    _roomType = snapshotData['Room_Type'] as String?;
    _swimmingPool = snapshotData['Swimming_Pool'] as bool?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('Room');

  static Stream<RoomRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => RoomRecord.fromSnapshot(s));

  static Future<RoomRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => RoomRecord.fromSnapshot(s));

  static RoomRecord fromSnapshot(DocumentSnapshot snapshot) => RoomRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static RoomRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      RoomRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'RoomRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is RoomRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createRoomRecordData({
  String? bed,
  bool? breakfast,
  bool? fitnessCenter,
  bool? freeWiFi,
  bool? parking,
  int? roomCapacity,
  String? roomDescription,
  int? roomPrice,
  String? roomType,
  bool? swimmingPool,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'Bed': bed,
      'Breakfast': breakfast,
      'Fitness_Center': fitnessCenter,
      'Free_WiFi': freeWiFi,
      'Parking': parking,
      'Room_Capacity': roomCapacity,
      'Room_Description': roomDescription,
      'Room_Price': roomPrice,
      'Room_Type': roomType,
      'Swimming_Pool': swimmingPool,
    }.withoutNulls,
  );

  return firestoreData;
}

class RoomRecordDocumentEquality implements Equality<RoomRecord> {
  const RoomRecordDocumentEquality();

  @override
  bool equals(RoomRecord? e1, RoomRecord? e2) {
    const listEquality = ListEquality();
    return e1?.bed == e2?.bed &&
        e1?.breakfast == e2?.breakfast &&
        e1?.fitnessCenter == e2?.fitnessCenter &&
        e1?.freeWiFi == e2?.freeWiFi &&
        e1?.parking == e2?.parking &&
        e1?.roomCapacity == e2?.roomCapacity &&
        e1?.roomDescription == e2?.roomDescription &&
        listEquality.equals(e1?.roomImage, e2?.roomImage) &&
        e1?.roomPrice == e2?.roomPrice &&
        e1?.roomType == e2?.roomType &&
        e1?.swimmingPool == e2?.swimmingPool;
  }

  @override
  int hash(RoomRecord? e) => const ListEquality().hash([
        e?.bed,
        e?.breakfast,
        e?.fitnessCenter,
        e?.freeWiFi,
        e?.parking,
        e?.roomCapacity,
        e?.roomDescription,
        e?.roomImage,
        e?.roomPrice,
        e?.roomType,
        e?.swimmingPool
      ]);

  @override
  bool isValidKey(Object? o) => o is RoomRecord;
}
