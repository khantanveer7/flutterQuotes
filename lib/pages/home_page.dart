import 'package:flutter/material.dart';
import 'package:quotes/data/quotes.dart';
import 'package:quotes/widgets/quote_card.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<Quotes> quotes = [
    Quotes(
      author: " -Nelson Mandela",
      text:
          "The greatest glory in living lies not in never falling, but in rising every time we fall.",
    ),
    Quotes(
      author: " -Walt Disney",
      text: "The way to get started is to quit talking and begin doing.",
    ),
    Quotes(
      author: " -Steve Jobs",
      text:
          "Your time is limited, so don't waste it living someone else's life. Don't be trapped by dogma – which is living with the results of other people's thinking.",
    ),
    Quotes(
      author: " -Nelson Mandela",
      text:
          "The greatest glory in living lies not in never falling, but in rising every time we fall.",
    ),
    Quotes(
      author: " -Walt Disney",
      text: "The way to get started is to quit talking and begin doing.",
    ),
    Quotes(
      author: " -Steve Jobs",
      text:
          "Your time is limited, so don't waste it living someone else's life. Don't be trapped by dogma – which is living with the results of other people's thinking.",
    ),
    Quotes(
      author: " -Nelson Mandela",
      text:
          "The greatest glory in living lies not in never falling, but in rising every time we fall.",
    ),
    Quotes(
      author: " -Walt Disney",
      text: "The way to get started is to quit talking and begin doing.",
    ),
    Quotes(
      author: " -Steve Jobs",
      text:
          "Your time is limited, so don't waste it living someone else's life. Don't be trapped by dogma – which is living with the results of other people's thinking.",
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        title: Text("Quotes"),
        centerTitle: true,
        backgroundColor: Colors.redAccent,
        elevation: 0,
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: quotes
              .map((e) => QuoteCard(
                  e: e,
                  delete: () {
                    setState(() {
                      quotes.remove(e);
                    });
                  }))
              .toList(),
        ),
      ),
    );
  }
}
