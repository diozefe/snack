import 'contacts.dart';

class Transaction {
  final String id;
  final double value;
  final Contact contact;

  Transaction(
    this.value,
    this.contact,
    this.id,
  );
  Transaction.fromJson(Map<String, dynamic> json)
      : id = json['id'],
        value = json['value'],
        contact = Contact.fromJson(json['contact']);

  Map<String, dynamic> toJson() => {
        'id': id,
        'value': value,
        'contact': contact.toJson(),
      };
  @override
  String toString() {
    return 'Transaction{value: $value, contact: $contact}';
  }
}
