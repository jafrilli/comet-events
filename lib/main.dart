import 'package:comet_events/locator.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'core/services/services.dart';
import 'ui/screens/screens.dart';

void main() { 
  setupLocator();
  runApp(CometEvents());
}

class CometEvents extends StatelessWidget {
  const CometEvents({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        //StreamProvider.value(value: locator<Auth>().user,)
      ],
          child: MaterialApp(
            theme: ThemeData.dark(),
            home: LoginScreen(),
          ),
    );
  }
}