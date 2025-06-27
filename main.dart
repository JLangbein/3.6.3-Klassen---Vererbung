import 'dart:math';

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

class Grocery {
  // attributes
  String name;
  String supplier;
  double weight;
  double price;

  // constructor
  Grocery(this.name, this.supplier, this.weight, this.price);

  // methods
  void printInfo() {
    print('Name: $name');
    print('Supplier: $supplier');
    print('Weight: $weight');
    print('Price: $price');
  }
}

class Milk extends Grocery {
  // attributes
  String expDate;

  // constructor
  Milk(super.name, super.supplier, super.weight, super.price, this.expDate);

  // override methods
  @override
  void printInfo() {
    print('Name: $name');
    print('Supplier: $supplier');
    print('Weight: $weight');
    print('Price: $price');
    print('Expiration Date: $expDate');
  }
}

class Butter extends Grocery {
  // attributes
  bool isHalfFat;

  // constructor
  Butter(super.name, super.supplier, super.weight, super.price, this.isHalfFat);

  // override methods
  @override
  void printInfo() {
    print('Name: $name');
    print('Supplier: $supplier');
    print('Weight: $weight');
    print('Price: $price');
    print('Half fat: $isHalfFat');
  }
}

void main() {
  Hammer hammer = Hammer(1.0, 'steel', handleLength: 33.0);
  Saw saw = Saw(0.5, 'Steel', 'woodsaw');

  Butter butter = Butter(
    'ButterGalore',
    'Milk & Butter Inc.',
    250.0,
    4.00,
    false,
  );
  Milk milk = Milk('TurboMilk', 'Milk & Butter Inc.', 1.0, 3.50, '12.06.2025');

  butter.printInfo();
  milk.printInfo();
}
