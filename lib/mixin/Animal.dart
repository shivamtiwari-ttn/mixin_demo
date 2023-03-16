
class Animal{
  String walk(){
    return 'can walk';
  }
}

class Bird{
String fly(){
  return 'can fly';
}
}


mixin Eat {
  String eat() => 'Eat';
}

mixin Sleep {
  String sleep() => 'Sleep';
}

mixin Drink {
  String drink() => 'Drink';
}

mixin Bark {
  String bark() => 'Bark';
}

class Parrot extends Bird with Eat, Sleep, Drink {

  String perfromActivity(){
    return '---> Parrot ${fly()}, ${eat()}, ${drink()}, ${sleep()}';
  }
}

class Dog extends Animal with Eat, Sleep, Drink, Bark {
  String perfromActivity(){
    return '---> Dog ${walk()}, ${eat()}, ${drink()}, ${sleep()} and ${bark()}';
  }
}

main() {
  var dog = Dog();
  dog.perfromActivity();
  dog.bark();

  var parrot = Parrot();
  parrot.perfromActivity();

}