import 'package:flutter/material.dart';

class MainPage extends StatefulWidget {
  final String? title;
  MainPage({Key? key, this.title}) : super(key: key);

  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  bool fill = false;

  @override
  Widget build(BuildContext context) {
    AppBar appBar = AppBar(
      title: Text(widget.title!),
      actions: <Widget>[
        TextButton(
          child: Text(
            fill ? 'Unfill' : 'Fill',
            style: TextStyle(color: Theme.of(context).secondaryHeaderColor),
          ),
          onPressed: () {
            setState(() {
              fill = !fill;
            });
          },
        )
      ],
    );

    return Scaffold(
      appBar: appBar,
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            AnimatedContainer(
              duration: Duration(seconds: 5),
              curve: Curves.linear,
              width: fill ? MediaQuery.of(context).size.width : 0,
              height: fill ? MediaQuery.of(context).size.height - appBar.preferredSize.height : 0,
              child: Container(
                color: Colors.black,
              ),
            ),
            ListTile(
              title: Text('Height'),
              subtitle: Text(MediaQuery.of(context).size.height.toString()),
            ),
            ListTile(
              title: Text('Width'),
              subtitle: Text(MediaQuery.of(context).size.width.toString()),
            ),
            ListTile(
              title: Text('Size'),
              subtitle: Text(MediaQuery.of(context).size.flipped.toString()),
            ),
            ListTile(
              title: Text('Aspect Radio'),
              subtitle: Text((1 / MediaQuery.of(context).size.aspectRatio).toString()),
            ),
            ListTile(
              title: Text('Accessible Navigation'),
              subtitle: Text(MediaQuery.of(context).accessibleNavigation.toString()),
            ),
            ListTile(
              title: Text('Always 24 hours'),
              subtitle: Text(MediaQuery.of(context).alwaysUse24HourFormat.toString()),
            ),
            ListTile(
              title: Text('Pixel ratio'),
              subtitle: Text(MediaQuery.of(context).devicePixelRatio.toString()),
            ),
            ListTile(
              title: Text('Orientation'),
              subtitle: Text(MediaQuery.of(context).orientation.toString()),
            ),
          ],
        ),
      ),
    );
  }
}
