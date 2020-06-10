import 'package:flutter/material.dart';

class ShowError extends StatelessWidget {
  final Error error;
  ShowError(this.error);
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.red,
      child: Center(
        child: Text(
          error.toString(),
          style: TextStyle(
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
