import 'package:flutter/material.dart';

class HubScreen extends StatelessWidget {
  const HubScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        "Hub",
        style: Theme.of(context).textTheme.bodyLarge,
      ),
    );
  }
}
