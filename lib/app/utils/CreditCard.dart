import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

enum UserRole { regular, developer }

class CustomCreditCard extends StatelessWidget {
  final double? amount;
  final String? currencySymbol;
  final String? role;

  const CustomCreditCard({
    Key? key,
    this.amount,
    this.currencySymbol = '\$',
    this.role,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final numberFormat = NumberFormat.currency(symbol: currencySymbol);
    Color cardColor = role == "Developer"
        ? Color.fromARGB(255, 204, 0, 255)
        : Color.fromARGB(255, 4, 4, 255);

    return Container(
      width: 300,
      height: 180,
      decoration: BoxDecoration(
        color: cardColor,
        borderRadius: BorderRadius.circular(16),
        gradient: LinearGradient(
          colors: [cardColor, cardColor.withOpacity(0.5)],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.2),
            spreadRadius: 2,
            blurRadius: 5,
            offset: Offset(0, 3),
          ),
        ],
      ),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'MyStyle',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Icon(
                  Icons.more_vert,
                  color: Colors.white,
                ),
              ],
            ),
            SizedBox(height: 16),
            Text(
              '${numberFormat.format(amount)}',
              style: TextStyle(
                color: Colors.white,
                fontSize: 20,
                letterSpacing: 2,
              ),
            ),
            SizedBox(height: 16),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Level Member',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 12,
                  ),
                ),
                Text(
                  role!,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
