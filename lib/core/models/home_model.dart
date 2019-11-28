import 'base_model.dart';

class HomeModel extends BaseModel {
  
  waitFourSeconds() async {
    changeState(ViewState.Busy);
    await Future.delayed(Duration(seconds: 4));
    changeState(ViewState.Idle);
  }
}