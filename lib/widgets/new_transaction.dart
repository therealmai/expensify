import 'package:flutter/material.dart';

class NewTransaction extends StatelessWidget {
  final titleController = TextEditingController();
  final amountController = TextEditingController();
  final Function addTransaction;

  NewTransaction(this.addTransaction);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 5,
      child: Container(
        padding: EdgeInsets.all(10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: <Widget>[
            TextField(
              autocorrect: true,
              autofocus: true,
              decoration: InputDecoration(labelText: 'Title'),
              controller: titleController,
            ),
            TextField(
              autocorrect: true,
              autofocus: true,
              decoration: InputDecoration(labelText: 'Amount'),
              controller: amountController,
            ),
            TextButton(
              onPressed: () {
                addTransaction(titleController.text, double.parse(amountController.text));
              },
              child: Text('Add Transaction'),
              style: TextButton.styleFrom(foregroundColor: Colors.blue),
            )
          ],
        ),
      ),
    );
  }
}
