void main(List<String> args) {

//1.string
  String isString = "Hello World"; 
  print(isString);

//2.int
  int isInteger = 96;
  print(isInteger);

//3.numb
  num isNumber = 42.7;
  print(isNumber);

//4.double
  double isDouble = 1.25;
  print(isDouble);

//5.runes
  const nama = 'Gunawan Aji Mulyadi';
  final isRunes = nama.runes.toList();
  print(isRunes);

//6.dynamic
  dynamic isDynamic = 24;
  isDynamic = "dua puluh empat";
  print(isDynamic);

//7.symbol
  Symbol isSymbol=new Symbol("symbol baru");
  print(isSymbol);
  print(#Fathan);

//8.boolean
  bool isBoolean = true;
  print(!isBoolean);

//9.null
  String? isNull;
  print("$isNull");

}