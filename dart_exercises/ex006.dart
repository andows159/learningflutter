//learning the List, Set, Map;

main() {
  //this is a lista, represented by keys
  List aproveds = ['josé', 'Gabriel', 'João'];
  print(aproveds);
  //one alternative to acess the list
  print(aproveds.elementAt(2));
  //other alternative
  print(aproveds[2]);
// this is map, marked by colchets
//work in key:value system
  var phones = {
    "João": "+55 (32) 98988-238",
    "Maria": "+55 (21) 98876-3623",
  };
  //how to acess
  print(phones['João'][0]);
  print(phones.values);
  print(phones.keys);
  //get keys and values;
  print(phones.entries);

  //this is set

  var teams = {"Vasco", "flamengo", "Fortaleza"};
  //the set is not indexed, don't acess by index
  //how to acess
  print(teams.contains('Vasco'));
  print(teams.first);
  print(teams.last);
  //how to add itens;
  teams.add("Sp");
}
