import 'package:comet_events/core/models/base_model.dart';
import 'package:comet_events/locator.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class BaseWidget<T extends BaseModel> extends StatefulWidget {

  final Widget child;
  final Widget Function(BuildContext context, T model, Widget child) builder;
  final Function(T) onModelReady;

  const BaseWidget({Key key, this.builder, this.onModelReady, this.child}) : super(key: key);

  @override
  _BaseWidgetState<T> createState() => _BaseWidgetState<T>();
}

class _BaseWidgetState<T extends BaseModel> extends State<BaseWidget<T>> {

  T model = locator<T>();

  @override
  void initState() {
    // TODO: implement initState
    if(widget.onModelReady != null) {
      widget.onModelReady(model);
    }
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<T>(
      create: (context) => model,
      child: Consumer<T>(
        builder: widget.builder,
        child: widget.child,
      ),
    );
  }
}