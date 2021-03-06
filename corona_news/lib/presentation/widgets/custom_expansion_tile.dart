import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_html/flutter_html.dart';

class CustomExpansionTile extends StatelessWidget {
  final String title;
  final String body;

  CustomExpansionTile({
    this.title,
    this.body,
  });

  @override
  Widget build(BuildContext context) {
    return ExpansionTile(
      title: Text(
        utf8.decode(title.runes.toList()),
        style: TextStyle(
          fontSize: 18,
        ),
      ),
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Html(
            defaultTextStyle: TextStyle(
              fontSize: 18,
            ),
            data: utf8.decode(
              body.runes.toList(),
            ),
          ),
        )
      ],
    );
  }
}
