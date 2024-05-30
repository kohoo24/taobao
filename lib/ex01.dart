import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Expandable Container with Text'),
        ),
        body: const ExpandableContainer(),
      ),
    );
  }
}

class ExpandableContainer extends StatefulWidget {
  const ExpandableContainer({super.key});

  @override
  _ExpandableContainerState createState() => _ExpandableContainerState();
}

class _ExpandableContainerState extends State<ExpandableContainer> {
  bool _isExpanded = false;

  void _toggleExpand() {
    setState(() {
      _isExpanded = !_isExpanded;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: GestureDetector(
        onTap: _toggleExpand,
        child: AnimatedContainer(
          duration: const Duration(milliseconds: 300),
          width: 300,
          height: _isExpanded ? 300 : 50,
          color: Colors.grey,
          padding: const EdgeInsets.all(10),
          alignment: Alignment.topCenter,
          child: SingleChildScrollView(
            child: Column(
              children: <Widget>[
                Row(
                  children: [
                    const Text(
                      '收起更多订单信息',
                      style: TextStyle(color: Colors.white, fontSize: 16),
                    ),
                    Icon(
                      _isExpanded
                          ? Icons.keyboard_arrow_up
                          : Icons.keyboard_arrow_down,
                    ),
                  ],
                ),
                if (_isExpanded)
                  Padding(
                    padding: const EdgeInsets.only(top: 20),
                    child: Text(
                      'This is the expanded text. ' * 10,
                      style: const TextStyle(color: Colors.white),
                    ),
                  ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
