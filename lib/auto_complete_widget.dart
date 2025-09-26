import 'package:flutter/material.dart';

class AutoCompleteWidget extends StatelessWidget {
  const AutoCompleteWidget({super.key});
  static const List<String> _kOptions = <String>[
    'mentorship',
    'round3',
    'omar',
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      spacing: 5,
      children: [
        const Text(
          'AutoComplete Widget',
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        ),
        Text(
          'Type below to autocomplete the following possible results: $_kOptions.',
        ),
        Autocomplete<String>(
          optionsBuilder: (textEditingValue) {
            if (textEditingValue.text == '') {
              return const Iterable<String>.empty();
            } else {
              return _kOptions.where(
                (element) {
                  return element.contains(textEditingValue.text.toLowerCase());
                },
              );
            }
          },
          onSelected: (option) {
            print('You just selected $option');
          },
        ),
      ],
    );
  }
}
