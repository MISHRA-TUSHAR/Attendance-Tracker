import 'package:attendance/utils/page_layout.dart';
import 'package:flutter/material.dart';

class Calender extends StatefulWidget {
  final String subName;
  const Calender({super.key, required this.subName});

  @override
  State<Calender> createState() => _CalenderState();
}

class _CalenderState extends State<Calender> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFE1DEDE),
      body: Center(
        child: PageView.builder(
          itemCount: 12,
          itemBuilder: ((context, index) {
            return MonthsLayout(
              subName: widget.subName,
              indexofMonth: index,
            );
          }),
        ),
      ),
    );
  }
}
