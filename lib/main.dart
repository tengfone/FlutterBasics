import 'package:flutter/material.dart';
import 'quote.dart';

void main() => runApp(MaterialApp(
  home: QuoteList(),
));

class QuoteList extends StatefulWidget {
  @override
  _QuoteListState createState() => _QuoteListState();
}

class _QuoteListState extends State<QuoteList> {

  List<Quote> quotes = [
    Quote(author: 'TengFone', text: "Hello"),
    Quote(author: "TengFone", text: "First Attempt At Flutter"),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        title: Text("Quote List"),
        centerTitle: true,
        backgroundColor: Colors.redAccent,
      ),
      body: Column(
        // children: quotes.map((quote) => Text(quote)).toList(),
        children: quotes.map((i) {
          return Text('${i.text} - ${i.author}');
        }).toList(),
      )
    );
  }
}
