import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';
import 'package:moneymanagement/app/modules/home/controllers/HomeController.dart';
import 'package:moneymanagement/app/utils/CreditCard.dart';
import 'package:moneymanagement/app/utils/CustomIconButton.dart';

class HomeView extends GetView<HomeController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Obx(() {
        if (controller.transactions.isEmpty) {
          return Center(child: CircularProgressIndicator());
        } else {
          return SingleChildScrollView(
            child: Container(
              margin: EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Container(
                    height: 100,
                    margin: EdgeInsets.only(top: 12),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Expanded(
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                SizedBox(
                                  height: 12,
                                ),
                                Text(
                                  "Welcome",
                                  style: TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.w900,
                                      fontStyle: FontStyle.normal,
                                      color: Colors.grey),
                                ),
                                Text("Agil Satri Ancang Pamungkas"),
                              ],
                            ),
                          ),
                        ),
                        IconButton(
                          onPressed: () {},
                          icon: Icon(Icons.notifications),
                        )
                      ],
                    ),
                  ),
                  CustomCreditCard(
                    amount: 1234.56,
                    currencySymbol: '\$',
                    role: "Regular",
                  ),
                  SizedBox(height: 20),
                  Text(
                    "Operations",
                    style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                        color: Colors.grey),
                  ),
                  SizedBox(height: 20),
                  SizedBox(
                    height: 60,
                    child: ListView(
                      scrollDirection: Axis.horizontal, // Geser ke samping
                      children: [
                        SizedBox(width: 10),
                        CustomIconButton(
                          icon: Icons.swap_horiz,
                          text: 'Transfer',
                          onPressed: () {
                            // Lakukan sesuatu saat tombol Transfer ditekan
                          },
                        ),
                        SizedBox(width: 20),
                        CustomIconButton(
                          icon: Icons.download_outlined,
                          text: 'Incoming',
                          onPressed: () {
                            // Lakukan sesuatu saat tombol Incoming ditekan
                          },
                        ),
                        SizedBox(width: 20),
                        CustomIconButton(
                          icon: Icons.receipt_outlined,
                          text: 'Receipts',
                          onPressed: () {
                            // Lakukan sesuatu saat tombol Receipts ditekan
                          },
                        ),
                        SizedBox(width: 20),
                        CustomIconButton(
                          icon: Icons.list_alt,
                          text: 'All',
                          onPressed: () {
                            // Lakukan sesuatu saat tombol All ditekan
                          },
                        ),
                        SizedBox(width: 10),
                      ],
                    ),
                  ),
                  SizedBox(height: 20),
                  Text(
                    "Previous Transactions",
                    style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                        color: Colors.grey),
                  ),
                  Container(
                    height: MediaQuery.of(context).size.height -
                        300, // Atur ketinggian sesuai kebutuhan
                    child: ListView.builder(
                      shrinkWrap: true,
                      itemCount: controller.transactions.length,
                      itemBuilder: (context, index) {
                        Transaction transaction =
                            controller.transactions[index];
                        String formattedDate =
                            DateFormat('dd MMM yyyy').format(transaction.date);
                        String formattedAmount =
                            NumberFormat.currency(symbol: '\$')
                                .format(transaction.amount);

                        Color textColor = transaction.type == 'Incoming'
                            ? Colors.green
                            : Colors.red;
                        String sign =
                            transaction.type == 'Incoming' ? '+' : '-';

                        return Column(
                          children: [
                            ListTile(
                              title: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(transaction.type,
                                      style: TextStyle(color: textColor)),
                                  Text('$sign $formattedAmount',
                                      style: TextStyle(color: textColor)),
                                ],
                              ),
                              subtitle: Text(formattedDate),
                            ),
                            Divider(),
                          ],
                        );
                      },
                    ),
                  ),
                ],
              ),
            ),
          );
        }
      }),
    );
  }

  HomeView() {
    Get.put(HomeController());
  }
}
