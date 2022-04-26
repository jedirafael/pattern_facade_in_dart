class SubSystemOne {
  SubSystemOne();

  void methodOne() {
    print("Método do sistema 1");
  }
}

class SubSystemTwo {
  SubSystemTwo();

  void methodTwo() {
    print("Método do sistema 2");
  }
}

class SubSystemThree {
  SubSystemThree();

  void methodThree() {
    print("Método do sistema 3");
  }
}

class Facade {
  final _subSystemOne = SubSystemOne();
  final _subSystemTwo = SubSystemTwo();
  final _subSystemThree = SubSystemThree();

  void execTests() {
    print("iniciando testes...");
    _subSystemOne.methodOne();
    _subSystemTwo.methodTwo();
    _subSystemThree.methodThree();
    print("finalizando testes...");
  }
}

void main() {
  var facade = Facade();
 facade.execTests();
}
