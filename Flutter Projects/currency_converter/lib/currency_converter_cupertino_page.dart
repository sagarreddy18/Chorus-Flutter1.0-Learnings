import 'package:flutter/cupertino.dart';

class CurrencyConverterCupertinoPage extends StatefulWidget {
  const CurrencyConverterCupertinoPage ({super.key});

  @override
  State<CurrencyConverterCupertinoPage> createState() => _CurrencyConverterCupertinoPage();
}

class _CurrencyConverterCupertinoPage extends State<CurrencyConverterCupertinoPage> {
  final TextEditingController textEditingController = TextEditingController();
  double result = 0;
  void convertCurrency() {
    final input = textEditingController.text;
    if (input.isEmpty) {
      print("Please enter an amount.");
      return;
    }

    try {
      final double amount = double.parse(input);
      setState(() {
        result = amount * 86.04; // Conversion rate
      });
    } catch (e) {
      print("Invalid input. Please enter a valid number.");
    }
  }
  @override
  Widget build(BuildContext context) {
    return CupertinoApp(
      home: CupertinoPageScaffold(
        backgroundColor: CupertinoColors.activeBlue,
        navigationBar: CupertinoNavigationBar(
          backgroundColor: CupertinoColors.activeBlue,
          middle: const Text(
            "Currency Converter",
            style: TextStyle(color: CupertinoColors .white),
          ),
        ),
        child: Center(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'INR ₹ ${result != 0 ? result.toStringAsFixed(2) : result.toStringAsFixed(0)}',                  style: const TextStyle(
                    fontSize: 45,
                    fontWeight: FontWeight.bold,
                    color: CupertinoColors.white,
                  ),
                ),
                const SizedBox(height: 20),
                CupertinoTextField(
                  controller: textEditingController,
                  style: const TextStyle(color: CupertinoColors.black),
                  keyboardType: const TextInputType.numberWithOptions(decimal: true),
                  decoration: BoxDecoration(
                    border:Border.all(),
                    borderRadius: BorderRadius.circular(5),
                    color: CupertinoColors.white
                  ),
                  placeholder: "Please enter amount in USD",
                  prefix: Icon(CupertinoIcons.money_dollar),
                ),
                const SizedBox(height: 20),
                CupertinoButton(
                  onPressed: convertCurrency,
                  color: CupertinoColors.black,
                  child: const Text("Convert"),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
