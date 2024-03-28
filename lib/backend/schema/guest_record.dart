import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class GuestRecord extends FirestoreRecord {
  GuestRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "Email_Address" field.
  String? _emailAddress;
  String get emailAddress => _emailAddress ?? '';
  bool hasEmailAddress() => _emailAddress != null;

  // "First_name" field.
  String? _firstName;
  String get firstName => _firstName ?? '';
  bool hasFirstName() => _firstName != null;

  // "Last_name" field.
  String? _lastName;
  String get lastName => _lastName ?? '';
  bool hasLastName() => _lastName != null;

  // "Password" field.
  String? _password;
  String get password => _password ?? '';
  bool hasPassword() => _password != null;

  void _initializeFields() {
    _emailAddress = snapshotData['Email_Address'] as String?;
    _firstName = snapshotData['First_name'] as String?;
    _lastName = snapshotData['Last_name'] as String?;
    _password = snapshotData['Password'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('Guest');

  static Stream<GuestRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => GuestRecord.fromSnapshot(s));

  static Future<GuestRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => GuestRecord.fromSnapshot(s));

  static GuestRecord fromSnapshot(DocumentSnapshot snapshot) => GuestRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static GuestRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      GuestRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'GuestRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is GuestRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createGuestRecordData({
  String? emailAddress,
  String? firstName,
  String? lastName,
  String? password,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'Email_Address': emailAddress,
      'First_name': firstName,
      'Last_name': lastName,
      'Password': password,
    }.withoutNulls,
  );

  return firestoreData;
}

class GuestRecordDocumentEquality implements Equality<GuestRecord> {
  const GuestRecordDocumentEquality();

  @override
  bool equals(GuestRecord? e1, GuestRecord? e2) {
    return e1?.emailAddress == e2?.emailAddress &&
        e1?.firstName == e2?.firstName &&
        e1?.lastName == e2?.lastName &&
        e1?.password == e2?.password;
  }

  @override
  int hash(GuestRecord? e) => const ListEquality()
      .hash([e?.emailAddress, e?.firstName, e?.lastName, e?.password]);

  @override
  bool isValidKey(Object? o) => o is GuestRecord;
}
