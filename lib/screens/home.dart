import 'package:colorluminance/common/colors.dart';
import 'package:colorluminance/common/strings.dart';
import 'package:flutter/material.dart';
import 'package:colorluminance/utils/color_utils.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Color Luminance"),
        actions: <Widget>[
          IconButton(
            icon: const Icon(Icons.list),
//            onPressed: () => _goToNamedColorsScreen(context),
          )
        ],
      ),
      body: Center(
        child: GridView.count(
          physics: BouncingScrollPhysics(),
          shrinkWrap: true,
          crossAxisCount: 2,
          padding: const EdgeInsets.all(20),
          crossAxisSpacing: 10,
          mainAxisSpacing: 10,
          children: <Widget>[
            makeDashboardItem(context, "Color Value", Icons.border_color, Colors.indigoAccent, '/'),
            makeDashboardItem(context, "Color Picker", Icons.linear_scale, Colors.purple, '/'),
            makeDashboardItem(
                context, AppStrings.dashboardBasic, Icons.view_list, AppColors.dashboardBasic, '/'),
            makeDashboardItem(context, AppStrings.dashboardWeb, Icons.view_list,
                AppColors.dashboardWeb, AppStrings.routeWeb),
            makeDashboardItem(context, AppStrings.dashboardMaterial, Icons.view_list,
                AppColors.dashboardMaterial, '/'),
            makeDashboardItem(context, AppStrings.dashboardWikipedia, Icons.view_list,
                AppColors.dashboardWikipedia, '/'),
          ],
        ),
      ),
    );
  }

  Card makeDashboardItem(
      BuildContext context, String title, IconData icon, Color color, String routeName) {
    final contrastColor = color.contrastOf();

    return Card(
      child: Material(
        color: color,
        textStyle: TextStyle(color: contrastColor),
        child: InkWell(
            splashColor: Colors.white,
            onTap: () => Navigator.pushNamed(context, routeName),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Icon(
                  icon,
                  color: contrastColor,
                  size: 40.0,
                ),
                Text(title),
              ],
            )),
      ),
    );
  }
}
