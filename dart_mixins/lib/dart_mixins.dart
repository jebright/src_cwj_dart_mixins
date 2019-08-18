import 'dart:math';

abstract class Hero {
  final String _name;
  int health;
  Hero(this._name);
  String helpPersonInNeed() => '$_name is helping a person in need!';
  Point move();
  int attack();
}

mixin flying {
  Point fly() {
    return Point(10, 10);
  }
}

mixin jumping {
  Point jump() {
    return Point(5, 5);
  }
}

mixin superHealing {  
  int heal() {
    return 100;
  }
}

mixin superHumanStrength {
  int smash() {
    return 100;
  }
  int punch() {
    return 60;
  }
}

mixin technology {
  int lasers() {
    return 60;
  }

  double compute() {
    var result = pi;
    print('Computing pi... computation complete: $result');
    return result;
  }
}

class Hulk extends Hero with jumping, superHealing, superHumanStrength {
  Hulk() : super("Hulk");

  @override
  Point move() {
    var p = jump();
    print('$_name has jumped to position $p');
    return p;
  }

  @override
  int attack() {
    var damage = smash();
    print('$_name has smashed resulting in damage to opponent of $damage');
    return damage;
  }
}

class IronMan extends Hero with flying, technology {
  IronMan() : super("Iron Man");

  @override
  Point move() {
    var p = fly();
    print('$_name has flown to position $p');
    return p;
  }

  @override
  int attack() {
    var damage = lasers();
    print('$_name has fired lasers resulting in damage to opponent of $damage');
    return null;
  }
}

class Thor extends Hero with flying, superHumanStrength {
  Thor() : super("Thor");

  @override
  Point move() {
    return null; //TODO implement
  }

  @override
  int attack() {
    return null; //TODO implement
  }
}