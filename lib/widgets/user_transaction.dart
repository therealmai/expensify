import 'package:flutter/material.dart';

import 'new_transaction.dart';
import 'transaction_list.dart';
import '../models/transaction.dart';


class UserTransaction extends StatefulWidget {
  @override
  __UserTransactionState createState() => __UserTransactionState();
}

class __UserTransactionState extends State<UserTransaction> {
  final List<Transaction> _userTransaction = [
    Transaction(
      id: 't1',
      title: 'New Shoes',
      amount: 69.99,
      date: DateTime.now(),
    ),   
    Transaction(
      id: 't2',
      title: 'Weekly Groceries',
      amount: 16.53,
      date: DateTime.now(),
    )
  ];

  void _addNewTransaction(String txTitle, double txAmount){
    final newTx = Transaction(id: DateTime.now().toString(), title: txTitle, amount: txAmount, date: DateTime.now());

    setState(() {
    _userTransaction.add(newTx);
  });

  }

 
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        NewTransaction(_addNewTransaction),
        TransactionList(_userTransaction),
      ],
    );
  }
}