class Tool {
  // attributes
  double weight;
  String material;

  // constructor
  Tool(this.weight, this.material);
}

class Hammer extends Tool {
  // attributes
  double? handleLength;

  // constructor
  Hammer(super.weight, super.material, {this.handleLength});

  // methods
  void hammer() {
    print('Hammer!');
  }
}

class Saw extends Tool {
  // attributes
  String typeOfSaw;

  // constructor
  Saw(super.weight, super.material, this.typeOfSaw);

  // methods
  void saw() {
    print('Saw!');
  }
}

void main() {
  Hammer hammer = Hammer(1.0, 'steel', handleLength: 33.0);
  Saw saw = Saw(0.5, 'Steel', 'woodsaw');
}
