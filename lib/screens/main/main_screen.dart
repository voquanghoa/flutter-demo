import 'package:flutter/material.dart';
import 'package:flutter_demo/screens/package_info/package_info_screen.dart';

class MainPageScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _MainPageState();
}

class _MainPageState extends State<MainPageScreen> {
  var features = [PackageInfoScreen()];

  void navigate(Widget widget) {
    Navigator.of(context).push(MaterialPageRoute<void>(builder: (BuildContext context) {
      return widget;
    }));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Flutter Demo"),
      ),
      body: ListView.separated(
          separatorBuilder: (context, index) {
            return Divider();
          },
          itemCount: features.length,
          itemBuilder: (c, i) {
            var feature = features[i];
            return GestureDetector(
              child: ListTile(title: Text(feature.toString())),
              onTap: () {
                navigate(feature);
              },
            );
          }),
    );
  }
}
