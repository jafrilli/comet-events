import 'package:comet_events/core/models/base_model.dart';
import 'package:comet_events/core/models/home_model.dart';
import 'package:comet_events/ui/size_config.dart';
import 'package:comet_events/ui/widgets/base_widget.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      body: Center(
        child: BaseWidget<HomeModel>(
          builder: (context, model, child) {
            return model.state == ViewState.Busy ? CircularProgressIndicator() :
            Container(
              child: Center(
                child: FlatButton(
                  child: Text("Idle"),
                  onPressed: () {
                    model.waitFourSeconds();
                  },
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}