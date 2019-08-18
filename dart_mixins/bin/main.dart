import 'package:dart_mixins/dart_mixins.dart';

main(List<String> arguments) {
  
  var hulk = Hulk();
  print(hulk.helpPersonInNeed());
  hulk.move(); 
  hulk.attack();

  var ironMan = IronMan();
  print(ironMan.helpPersonInNeed());
  ironMan.move();
  ironMan.attack();
  ironMan.compute();
}
