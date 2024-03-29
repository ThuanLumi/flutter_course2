import 'package:flutter/material.dart';
import 'models/location.dart';
import 'styles.dart';
import 'mocks/mock_location.dart';

class LocationDetail extends StatelessWidget {
  final int locationID;

  LocationDetail(this.locationID);

  @override
  Widget build(BuildContext context) {
    var location = MockLocation.fetch(this.locationID);
    return Scaffold(
      appBar: AppBar(
        title: Text(location.name, style: Styles.navBarTitle),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: _renderBody(context, location),
      ),
    );
  }

  List<Widget> _renderBody(BuildContext context, Location location) {
    var result = <Widget>[];
    result.add(_bannerImage(location.url, 170.0));
    result.addAll(_renderFacts(context, location));
    return result;
  }

  List<Widget> _renderFacts(BuildContext context, Location location) {
    var result = <Widget>[];
    for (int i = 0; i < location.facts.length; i++) {
      result.add(_selectionTitle(location.facts[i].title));
      result.add(_selectionText(location.facts[i].text));
    }
    return result;
  }

  Widget _selectionTitle(String text) {
    return Container(
      padding: EdgeInsets.fromLTRB(25.0, 25.0, 25.0, 10.0),
      child: Text(text, textAlign: TextAlign.left, style: Styles.headerLarge),
    );
  }

  Widget _selectionText(String text) {
    return Container(
      padding: EdgeInsets.fromLTRB(25.0, 15.0, 25.0, 15.0),
      child: Text(text, style: Styles.textDefault),
    );
  }
}

Widget _bannerImage(String url, double height) {
  return Container(
    constraints: BoxConstraints.tightFor(height: height),
    child: Image.network(
      url,
      fit: BoxFit.fitWidth,
    ),
  );
}
