import 'package:flutter/material.dart';

enum ViewState {
  Idle,
  Busy,
  NoConnection,
  Error
}

class BaseModel extends ChangeNotifier {
  
  ViewState _state = ViewState.Idle;

  ViewState get state => _state;
  
  void changeState(ViewState newState) {
    _state = newState;
    notifyListeners();
  }
}