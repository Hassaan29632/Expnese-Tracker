import 'package:uuid/uuid.dart';

final uuid = Uuid();

class expense {
  expense({required this.date, required this.title, required this.amount,
  }): id = uuid.v4();

  final String id;
  final String title;
  final double amount;
  final DateTime date;
}
