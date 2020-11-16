import 'package:flutter/material.dart';
import 'package:flutter_html/flutter_html.dart';
import 'package:flutter_html/style.dart';
import 'package:flutter_svg/flutter_svg.dart';

class MyWidget extends StatefulWidget {
  final String _title;
  final String _answer;

  @override
  _MyWidgetState createState() => _MyWidgetState();

  MyWidget(String title, String answer)
      : assert(title != null),
        assert(answer != null),
        _title = title,
        _answer = answer;
}

class _MyWidgetState extends State<MyWidget> {
  bool isExpanded = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(5),
        boxShadow: [
          BoxShadow(
            spreadRadius: 0.1,
            color: Colors.grey.shade200,
            blurRadius: 10,
            offset: Offset(0, 20),
          )
        ],
      ),
      child: ExpansionTile(
        title: Container(
          color: isExpanded ? Color.fromRGBO(244, 214, 76, 1) : Colors.white,
          child: Text(
            widget._title,
            style: TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.w700,
              color: Colors.black,
            ),
          ),
        ),
        children: [
          Padding(
            padding: const EdgeInsets.all(10),
            child: Html(
              data: widget._answer,
            ),
          ),
        ],
        trailing: Transform.rotate(
          angle: isExpanded ? (180 * 3.14 / 90) : (270 * 3.14 / 180),
          child: Container(
            // transform: isExpanded ? Matrix4.rotationZ(1.6) : Matrix4.rotationZ(0),
            child: SvgPicture.asset(
              "assets/images/icon-arrow-open.svg",
              color: isExpanded
                  ? Color.fromRGBO(88, 133, 89, 1)
                  : Color.fromRGBO(0, 0, 0, 1),
            ),
          ),
        ),
        onExpansionChanged: (bool expanding) =>
            setState(() => this.isExpanded = expanding),
      ),
    );
  }
}
