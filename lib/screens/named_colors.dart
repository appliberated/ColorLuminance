import 'package:colorluminance/data/named_colors.dart';
import 'package:colorluminance/utils/color_utils.dart';
import 'package:flutter/material.dart';

class NamedColorsScreen extends StatelessWidget {
  NamedColors namedColors = NamedColors();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Named Colors"),
      ),
      body: ListView.builder(
        itemCount: namedColors.webColors.length,
        itemBuilder: (context, index) {
          Color color =
              Color(namedColors.webColors[index].value).withAlpha(0xFF);
          final Color textColor =
              ThemeData.estimateBrightnessForColor(color) == Brightness.light
                  ? Colors.black
                  : Colors.white;
          final TextStyle textStyle = TextStyle(color: textColor);

          return Card(
            color: color,
            child: ListTile(

              title: Text(
                namedColors.webColors[index].name,
                style: textStyle,
              ),
              subtitle: Text(
                color.toHexTriplet(),
                style: textStyle,
              ),
            ),
          );
        },
      ),
    );
  }
}
