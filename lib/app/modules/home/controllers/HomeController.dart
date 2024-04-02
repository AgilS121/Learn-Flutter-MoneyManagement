import 'dart:math';

import 'package:get/get.dart';

class Transaction {
  late String type;
  late DateTime date;
  late double amount;

  Transaction({required this.type, required this.date, required this.amount});
}

class HomeController extends GetxController {
  var transactions = <Transaction>[].obs;

  @override
  void onInit() {
    super.onInit();
    generateTransactions();
  }

  void generateTransactions() {
    Random random = Random();
    for (int i = 0; i < 10; i++) {
      int typeIndex = random.nextInt(2); // 0 for Transfer, 1 for Incoming
      String type = typeIndex == 0 ? 'Transfer' : 'Incoming';
      DateTime date = DateTime.now().subtract(Duration(
          days: random.nextInt(30))); // Random date within the last 30 days
      double amount = (random.nextDouble() * 1000)
          .roundToDouble(); // Random amount up to 1000

      transactions.add(Transaction(type: type, date: date, amount: amount));
    }
  }
}
