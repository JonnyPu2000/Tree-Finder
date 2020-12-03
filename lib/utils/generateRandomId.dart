//Aqui fica a função que gera um id aleatório para o marker no mapa
import 'dart:convert';
import 'dart:math';

generateRandomId(json) async {
  List ids = await json;
  Random random = new Random();
  String randomIdToString;
  int randomId = random.nextInt(1000);
  if (ids.contains(randomId)) {
    generateRandomId(json);
  } else {
    randomIdToString = randomId.toString();
    print(randomIdToString);
    return randomIdToString;
  }
}
