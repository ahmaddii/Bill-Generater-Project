import 'dart:io';

void main() {
  print('                           ---Wapda Bill Generater---');
  test();
}

Future<int> test() async {
  await Future.delayed(Duration(seconds: 4));

  stdout.write('Enter the Consumed Units:');
  int? ConsumedUnits = int.parse(stdin.readLineSync()!);
  int FinalPrice;

  if (ConsumedUnits < 100) {
    FinalPrice = ConsumedUnits * 20;
    print('Consumed Units : $ConsumedUnits');
    print('Final Price: $FinalPrice');
    print('per Unit Cost : 20 Rs');
  } else if (ConsumedUnits > 100 && ConsumedUnits < 200) {
    FinalPrice = ConsumedUnits * 30;
    print('Consumed Units :$ConsumedUnits');
    print('Final Price : $FinalPrice');
    print('Per unit Cost : 30 Rs');
  } else if (ConsumedUnits > 200 && ConsumedUnits < 300) {
    FinalPrice = ConsumedUnits * 40;
    print('Consumed Units: $ConsumedUnits');
    print('Final Price : $FinalPrice');
    print('Per Unit Cost: 40 Rs');
  } else {
    FinalPrice = ConsumedUnits * 50;
    print('Consumed Units :$ConsumedUnits');
    print('Final Price :$FinalPrice');
    print('Per Unit Cost: 50 Rs');
  }

  return 1;
}
