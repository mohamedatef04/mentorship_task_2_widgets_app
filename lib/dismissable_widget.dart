import 'package:flutter/material.dart';

class DismissibleWidget extends StatefulWidget {
  const DismissibleWidget({super.key});

  @override
  State<DismissibleWidget> createState() => _DismissibleWidgetState();
}

class _DismissibleWidgetState extends State<DismissibleWidget> {
  final List<int> items = List<int>.generate(10, (int index) => index);

  @override
  Widget build(BuildContext context) {
    return Column(
      spacing: 5,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          'DismissableWidget',
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        ),
        ListView.builder(
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          itemCount: items.length,
          itemBuilder: (context, index) {
            return Dismissible(
              background: Container(
                color: Colors.red,
                alignment: Alignment.centerRight,
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: const Icon(Icons.delete, color: Colors.white),
              ),
              key: Key(items[index].toString()),
              onDismissed: (direction) {
                setState(() {
                  items.removeAt(index);
                });
              },
              child: ListTile(
                title: Text('Item ${items[index]}'),
              ),
            );
          },
        ),
      ],
    );
  }
}
