import 'package:flutter/material.dart';
import 'package:flutter_expansion_app/expansion.dart';
import 'package:flutter_html/flutter_html.dart';
import 'package:flutter_svg/flutter_svg.dart';

void main() => runApp(FlutterExpansionTileApp());

class FlutterExpansionTileApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        floatingActionButton: FloatingActionButton.extended(
          backgroundColor: Colors.teal,
          onPressed: () {},
          label: Text("Кнопка внизу"),
        ),
        appBar: AppBar(
          title: Text("Что делать если я получил отказ?"),
          centerTitle: true,
          backgroundColor: Colors.greenAccent,
        ),
        body: ListView(
          padding: EdgeInsets.all(20),
          children: [
            MyWidget("Необходимо гражданство Украины",
                "<p>Давно выяснено, что при оценке дизайна и композиции читаемый текст мешает сосредоточиться. Lorem Ipsum используют потому, что тот обеспечивает более или менее стандартное заполнение шаблона, а также реальное распределение букв и пробелов в абзацах, которое не получается при простой дубликации. Здесь ваш текст.. Здесь ваш текст.. Здесь ваш текст.. Многие программы электронной вёрстки и редакторы HTML используют Lorem Ipsum в качестве текста по умолчанию, так что поиск по ключевым словам lorem ipsum сразу показывает</p>")
          ],
        ),
      ),
    );
  }
}
