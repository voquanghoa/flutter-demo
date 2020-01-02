import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:package_info/package_info.dart';

class PackageInfoScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _PackageInfoState();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.debug}) {
    return "App package";
  }
}

class _PackageInfoState extends State<PackageInfoScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Package Info"),
        ),
        body: Center(
            child: FutureBuilder(
          future: PackageInfo.fromPlatform(),
          builder: (BuildContext c, AsyncSnapshot<PackageInfo> o) {
            if (o.hasData) {
              return Column(
                children: <Widget>[
                  Text("App name: ${o.data.appName}"),
                  Text("Package name: ${o.data.packageName}"),
                  Text("App version: ${o.data.version}"),
                  Text("Build number: ${o.data.buildNumber}"),
                ],
              );
            }

            if (o.hasError) {
              return ErrorWidget.withDetails(message: "Something went wrong", error: o.error);
            }

            return CircularProgressIndicator();
          },
        )));
  }
}
