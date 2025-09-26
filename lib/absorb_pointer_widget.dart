import 'dart:developer';

import 'package:flutter/material.dart';

class AbsorbPointerWidget extends StatelessWidget {
  const AbsorbPointerWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      spacing: 5,
      children: [
        const Text(
          'Absorb Pointer Widget',
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        ),
        AbsorbPointer(
          absorbing: true,
          child: ElevatedButton(
            onPressed: () {
              log('Button Pressed');
            },
            child: const Text(
              'Press me!',
              style: TextStyle(fontSize: 20),
            ),
          ),
        ),
      ],
    );
  }
}
