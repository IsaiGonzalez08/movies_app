import 'package:flutter/cupertino.dart';
import 'package:movies_app/res/resources.dart';


extension AppContext on BuildContext {
  Resources get resources => Resources.of(this);
}