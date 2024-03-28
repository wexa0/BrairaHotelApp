import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class BookingRecord extends FirestoreRecord {
  BookingRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "Booking_Date" field.
  DateTime? _bookingDate;
  DateTime? get bookingDate => _bookingDate;
  bool hasBookingDate() => _bookingDate != null;

  // "Check_In_Date" field.
  DateTime? _checkInDate;
  DateTime? get checkInDate => _checkInDate;
  bool hasCheckInDate() => _checkInDate != null;

  // "Duration" field.
  int? _duration;
  int get duration => _duration ?? 0;
  bool hasDuration() => _duration != null;

  // "Guest" field.
  DocumentReference? _guest;
  DocumentReference? get guest => _guest;
  bool hasGuest() => _guest != null;

  // "Room" field.
  DocumentReference? _room;
  DocumentReference? get room => _room;
  bool hasRoom() => _room != null;

  // "isCanceled" field.
  bool? _isCanceled;
  bool get isCanceled => _isCanceled ?? false;
  bool hasIsCanceled() => _isCanceled != null;

  void _initializeFields() {
    _bookingDate = snapshotData['Booking_Date'] as DateTime?;
    _checkInDate = snapshotData['Check_In_Date'] as DateTime?;
    _duration = castToType<int>(snapshotData['Duration']);
    _guest = snapshotData['Guest'] as DocumentReference?;
    _room = snapshotData['Room'] as DocumentReference?;
    _isCanceled = snapshotData['isCanceled'] as bool?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('Booking');

  static Stream<BookingRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => BookingRecord.fromSnapshot(s));

  static Future<BookingRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => BookingRecord.fromSnapshot(s));

  static BookingRecord fromSnapshot(DocumentSnapshot snapshot) =>
      BookingRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static BookingRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      BookingRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'BookingRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is BookingRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createBookingRecordData({
  DateTime? bookingDate,
  DateTime? checkInDate,
  int? duration,
  DocumentReference? guest,
  DocumentReference? room,
  bool? isCanceled,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'Booking_Date': bookingDate,
      'Check_In_Date': checkInDate,
      'Duration': duration,
      'Guest': guest,
      'Room': room,
      'isCanceled': isCanceled,
    }.withoutNulls,
  );

  return firestoreData;
}

class BookingRecordDocumentEquality implements Equality<BookingRecord> {
  const BookingRecordDocumentEquality();

  @override
  bool equals(BookingRecord? e1, BookingRecord? e2) {
    return e1?.bookingDate == e2?.bookingDate &&
        e1?.checkInDate == e2?.checkInDate &&
        e1?.duration == e2?.duration &&
        e1?.guest == e2?.guest &&
        e1?.room == e2?.room &&
        e1?.isCanceled == e2?.isCanceled;
  }

  @override
  int hash(BookingRecord? e) => const ListEquality().hash([
        e?.bookingDate,
        e?.checkInDate,
        e?.duration,
        e?.guest,
        e?.room,
        e?.isCanceled
      ]);

  @override
  bool isValidKey(Object? o) => o is BookingRecord;
}
