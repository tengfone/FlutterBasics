import 'package:flutter/material.dart';
import 'quote.dart';

// New Class Created via Flutter Outline Extract Widget
class QuoteCard extends StatelessWidget {

  final Quote quote;
  final Function delete;

  QuoteCard({this.quote, this.delete});


  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.fromLTRB(16.0, 16.0, 16.0, 0),
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Text(
              quote.text,
              style: TextStyle(
                fontFamily: 'customFont',
                fontSize: 18,
                color: Colors.grey[600],
              ),
            ),
            SizedBox(height: 6.0),
            Text(
                quote.author,
                style: TextStyle(
                    fontSize: 14,
                    color: Colors.grey[800]
                )
            ),
            SizedBox(height: 8.0),
            FlatButton.icon(
              onPressed: delete,
              label: Text(
                "Delete",
              ),
              icon: Icon(Icons.delete),
            )
          ],
        ),
      ),
    );
  }
}
