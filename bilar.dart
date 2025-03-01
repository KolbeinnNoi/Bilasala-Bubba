import 'dart:io';
// Litir til að velja úr 
String raudur = '\u001b[31m';
String graenn = '\u001b[32m';
String gulur = '\u001b[33m';
String blar = '\u001b[34m';
String endir = '\u001b[0m'; 
// Búa til bílasölu. Leita af upplýsingum um bíl.
// Hafa tvo mismunandi klassa fyrir bíl og týpur.
// Þarf að vera til fyrir bíl:
// Nafn - Land Rover
// Módel - Defender
// Árgerð - 2007
// Litur - Blue
// Fyrir týpu:
// Gerð - rafmagn, diesel
// Týpan sjálf - Jeppi, fólksbíll
// Það þurfa að vera til 4 bílar og 2 týpur:
//  - Land rover - Defender og Discovery
//  - Polestar - 2 & 3
//  - Subaru ---- || -----
//  - Mercedes ---- || -----


class BilTegund {
  String? tegund;
  String? gerd;
  int? argerd;
  String? litur;
  Typa? typa;
  // Set ekki required fyrir framan eins og í dæminu úr tíma því fólk á að geta séð alla bílana sem eru á sölu jafnvel þótt input sé tómt.
  BilTegund ({
    this.tegund,
    // gerð = gerd
    this.gerd,  
    this.argerd,
    this.litur,
    this.typa
  });
  
  // svo listinn verði notendavænni þegar hann er prentaður út
  @override
  String toString() {
    return "${graenn}$tegund $gerd, Árg: $argerd, ${typa?.eldsneytisTegundir} ${typa?.typur?.join(", ")}, $litur á litinn${endir}";
  }


}

class Typa {
  String? eldsneytisTegundir;
  // Vildi bara testa hvernig maður myndir gera þetta með fleirri en eina týpa per bíl. Flestir bílar á bilasolur eru skráðir með 2-3 týpur.
  List<String>? typur;

  Typa ({
    this.eldsneytisTegundir,
    this.typur
  });

  }



List<BilTegund> bilarTilSolu = [
    BilTegund(tegund: "Toyota", gerd: "Land Cruiser", argerd: 2017, litur: "Hvítur", typa: Typa(eldsneytisTegundir: "Dísel", typur: ["Jeppi"])),
    BilTegund(tegund: "Audi", gerd: "RS6", argerd: 2018, litur: "Svartur", typa: Typa(eldsneytisTegundir: "Bensín", typur: ["Skutbíll", "Sportbíll", "Fólksbíll"])),
    BilTegund(tegund: "Volkswagen", gerd: "Golf Gti", argerd: 2015, litur: "Blár", typa: Typa(eldsneytisTegundir: "Bensín", typur: ["Fólksbíll", "Sportbíll"])),
    BilTegund(tegund: "Hyundai", gerd: "Tucson", argerd: 2019, litur: "Svartur", typa: Typa(eldsneytisTegundir: "Dísel", typur: ["Jeppi"])),
    BilTegund(tegund: "Subaru", gerd: "Forester", argerd: 2022, litur: "Grænn", typa: Typa(eldsneytisTegundir: "Bensín", typur: ["Jeppi"])),
    BilTegund(tegund: "Mitsubishi", gerd: "Outlander", argerd: 2018, litur: "Rauður", typa: Typa(eldsneytisTegundir: "Hybrid", typur: ["Jeppi"])),
    BilTegund(tegund: "Suzuki", gerd: "Vitara", argerd: 2014, litur: "Silfur", typa: Typa(eldsneytisTegundir: "Bensín", typur: ["Jeppi"])),
    BilTegund(tegund: "Kia", gerd: "Sportage", argerd: 2016, litur: "Hvítur", typa: Typa(eldsneytisTegundir: "Dísel", typur: ["Jeppi"])),
    BilTegund(tegund: "Toyota", gerd: "Hilux", argerd: 2021, litur: "Grár", typa: Typa(eldsneytisTegundir: "Dísel", typur: ["Pallbíll"])),
    BilTegund(tegund: "Nissan", gerd: "Qashqai", argerd: 2020, litur: "Svartur", typa: Typa(eldsneytisTegundir: "Bensín", typur: ["Jeppi"])),
    BilTegund(tegund: "Ford", gerd: "Ranger", argerd: 2013, litur: "Blár", typa: Typa(eldsneytisTegundir: "Dísel", typur: ["Pallbíll"])),
    BilTegund(tegund: "Jeep", gerd: "Wrangler", argerd: 2019, litur: "Appelsínugulur", typa: Typa(eldsneytisTegundir: "Bensín", typur: ["Jeppi"])),
    BilTegund(tegund: "Dacia", gerd: "Duster", argerd: 2022, litur: "Silfur", typa: Typa(eldsneytisTegundir: "Dísel", typur: ["Jeppi"])),
    BilTegund(tegund: "Toyota", gerd: "Yaris", argerd: 2016, litur: "Rauður", typa: Typa(eldsneytisTegundir: "Bensín", typur: ["Fólksbíll"])),
    BilTegund(tegund: "Land Rover", gerd: "Discovery", argerd: 2017, litur: "Svartur", typa: Typa(eldsneytisTegundir: "Dísel", typur: ["Jeppi"])),
    BilTegund(tegund: "Tesla", gerd: "Model 3", argerd: 2021, litur: "Hvítur", typa: Typa(eldsneytisTegundir: "Rafmagn", typur: ["Skutbíll"])),
];




void skilabod() {
  print("${blar}Ýttu á '1' ef þú vilt sjá alla bílana sem eru til sölu hjá okkur");
  print("Ýttu á '2' til að finna bíla til sölu hjá okkur með ýmsum síum, svo sem tegund, gerð, eða hvaða orkugjafa bíllinn hefur og fleira.");
  print("Ýttu á '3' ef þú vilt fara út af bílasölunni${endir}");
  print("------------------------------------------------------------------------------------------------------------------------------------");
}

void synaAllaBila () {
  for(int i = 0; i < bilarTilSolu.length; i++) {
    print("${graenn}Bíll númer: ${i + 1}");
    print("${bilarTilSolu[i]}${endir}");
    print("--------------------------------------------------------------------------------");
  }
  print("${blar}Ef þú vilt prufa velja bíla með ýmsum síum, svo sem tegund, gerð, eða hvaða orkugjafa bíllinn hefur og fleira.");
  print("Ýttu þá á ${gulur}'2'");
  print("${blar}annars til að fara út af bílasölunni");
  print("ýttu á ${gulur}'3'${endir}");
 
  String? synaAllaInput = stdin.readLineSync();

  switch (synaAllaInput) {
    case '2':
      synaBilaEftirSium();
      break;
    
    case '3':
      exit(0);
    
    default:
    print("${raudur}$synaAllaInput virkar ekki hérna þú verður að velja annaðhvort ${gulur}'2'${endir}${raudur} eða ${gulur}'3'${endir}");
  }   
  }




// Stytting á kóða, getur séð hvernig kóðinn var neðst niðri
int? processInput(String prompt, List<String> options, String optionType) {
  print(prompt);
  String result = options
    .asMap()
    .entries
    .map((entry) => "${gulur}${entry.key + 1}:${endir} ${entry.value}")
    .join(" ");
  print(result);
  
  String? input = stdin.readLineSync();
  int? selectedOption = input != null ? int.tryParse(input) : null;
  if (selectedOption != null && selectedOption > 0 && selectedOption <= options.length) {
    print("${blar}Þú valdir $selectedOption sem er ${options[selectedOption - 1]}${endir}");
    return selectedOption;
  } else {
    print("{${blar}Þú valdir enga $optionType${endir}");
    return null;
  }
}


BilTegund? synaBilaEftirSium () {

  List<String> tegund = ["Toyota", "Audi", "Volkswagen", "Hyundai", "Subaru", "Mitsubishi", "Suzuki", "Kia", "Nissan", "Ford", "Jeep", "Dacia", "Land Rover", "Tesla", "Volvo", "Renault", "Mazda", "Skoda", "Peugeot", "Honda"];
  List<String> gerd = ["Land Cruiser", "RS6", "Gti", "Tucson", "Forester", "Outlander", "Vitara", "Sportage", "Hilux", "Qashqai", "Ranger", "Wrangler", "Duster", "Yaris", "Discovery", "Model 3"];
  List<String> eldsneyti = ["Dísel", "Bensín", "Hybrid", "Rafmagn"];
  List<String> gerdAfBil = ["Jeppi", "Fólksbíll", "Sportbíll", "Skutbíll", "Pallbíll"];
  List<String> litur = ["Hvítur", "Svartur", "Blár", "Grænn", "Rauður", "Silfur", "Grár", "Appelsínugulur"];

  print("${gulur}Til þess að velja, skrifaru inn númerið sem er fyrir framan það sem þú vilt velja${endir}");
  int? selectedTegund = processInput("${blar}Veldu tegund af bíl:${endir}", tegund, "tegund");
  int? selectedGerd = processInput("${blar}Veldu gerð af bíl:${endir}", gerd, "gerð");
  int? selectedEldsneyti = processInput("${blar}Veldu orkugjafa:${endir}", eldsneyti, "orkugjafa");
  int? selectedGerdAfBil = processInput("${blar}Veldu gerð af bíl:${endir}", gerdAfBil, "gerð af bíl");
  int? selectedLitur = processInput("${blar}Veldu lit:${endir}", litur, "liti");
  

List<BilTegund> filteredBilar = bilarTilSolu.where((bil) {
  return (selectedTegund == null || bil.tegund == tegund[selectedTegund - 1]) &&
         (selectedGerd == null || bil.gerd == gerd[selectedGerd - 1]) &&
         (selectedEldsneyti == null || bil.typa?.eldsneytisTegundir == eldsneyti[selectedEldsneyti - 1]) &&
         (selectedGerdAfBil == null || bil.typa?.typur?.contains(gerdAfBil[selectedGerdAfBil - 1]) == true) &&
         (selectedLitur == null || bil.litur == litur[selectedLitur - 1]);
}).toList();


  // Check if any cars matched the filter
  if (filteredBilar.isNotEmpty) {
    print("${graenn}Bílar sem passa við leitarskilyrði þín:${endir}");
    print("---------------------------------------------------------------");
    for (var bil in filteredBilar) {
      print(bil);
      print("---------------------------------------------------------------");
    }
  } else {
    print("${raudur}Enginn bíll fannst sem passar við leitarskilyrðin.${endir}");
  }
  print("---------------------------------------------------------------------------------");
  print("${blar}Ef þú vilt prufa að breyta síunum þínum ýttu þá aftur á ${gulur}'2'${endir}");
  print("---------------------------------------------------------------------------------");
  print("${blar}en ef þú vilt sýna alla bíla sem eru til sölu ýtir þú á ${gulur}'1'${endir}");
  print("---------------------------------------------------------------------------------");
  print("${blar}annars til að fara út af bílasölunni ýtir þú á ${gulur}'3'${endir}");
  String? bilarEftirSium = stdin.readLineSync();
  
  switch(bilarEftirSium) {
    case '1':
      synaAllaBila();
      break;

    case '2':
      synaBilaEftirSium();
      break;

    case '3':
      exit(0);

    default:
    print("${raudur}$bilarEftirSium virkar ekki hérna þú verður að velja annaðhvort ${gulur}'1'${raudur},${gulur} '2'${raudur}eða ${gulur}'3'${endir}");
  }
  return null;

  
  


}  

void main () {
 print("Velkominn á bílasölu Bubba!");
 bool bilasalaBubba = true;
 skilabod();
 while(bilasalaBubba) {
 
 
 String? veljaSkilabod = stdin.readLineSync();

 switch (veljaSkilabod) {
   case '1':
     synaAllaBila();
     break;
   
   case '2':
     synaBilaEftirSium();
     break;

   case '3':
     bilasalaBubba = false;
   default:
   print("${raudur}$veljaSkilabod virkar ekki hérna þú verður að velja annaðhvort ${gulur}'1'${raudur},${gulur} '2'${raudur}eða ${gulur}'3'${endir}");
   break;
 }
 
 }
}



  // String resultTegund = tegund
  //    .asMap()
  //    .entries
  //    .map((entry) => "${gulur}${entry.key + 1}:${endir} ${entry.value}")
  //    .join(" ");
  // List<String> gerd = ["Land Cruiser", "RS6", "Golf Gti", "Tucson", "Forester", "Outlander", "Vitara", "Sportage", "Hilux", "Qashqai", "Ranger", "Wrangler", "Duster", "Yaris", "Discovery", "Model 3"];
  //   String resultGerd = gerd
  //    .asMap()
  //    .entries
  //    .map((entry) => "${gulur}${entry.key + 1}:${endir} ${entry.value}")
  //    .join(" ");
  // List<String> eldsneyti = ["Dísel", "Bensín", "Hybrid", "Rafmagn"];
  //   String resultOrkugjafi = eldsneyti
  //    .asMap()
  //    .entries
  //    .map((entry) => "${gulur}${entry.key + 1}:${endir} ${entry.value}")
  //    .join(" ");
  // List<String> gerdAfBil = ["Jeppi", "Fólksbíll", "Sportbíll", "Skutbíll", "Pallbíll"];
  //   String resultGerdAfBil = gerdAfBil
  //    .asMap()
  //    .entries
  //    .map((entry) => "${gulur}${entry.key + 1}:${endir} ${entry.value}")
  //    .join(" ");
  // List<String> litur = ["Hvítur", "Svartur", "Blár", "Grænn", "Rauður", "Silfur", "Grár", "Appelsínugulur"];
  //   String resultLitur = litur
  //    .asMap()
  //    .entries
  //    .map((entry) => "${gulur}${entry.key + 1}:${endir} ${entry.value}")
  //    .join(" ");


    // Hérna látum við notandann velja úr hverjum flokki fyrir sig
  // String? inpTeg = stdin.readLineSync();
  // int? inputTegund = inpTeg != null ? int.tryParse(inpTeg) : null;
  // if (inputTegund != null && inputTegund > 0 && inputTegund <= tegund.length) {
  //   print("Þú valdir $inputTegund sem er ${tegund[inputTegund -1]}");
  // } else {
  //   print("${blar}{Þú valdir enga tegund${endir}");
  // }
  
  // String? inpGe = stdin.readLineSync();
  // int? inputGerd = inpGe != null ? int.tryParse(inpGe) : null;
  // if (inputGerd != null && inputGerd > 0 && inputGerd <= gerd.length) {
  //   print("Þú valdir $inputTegund sem er ${gerd[inputGerd -1]}");
  // } else {
  //   print("${blar}{Þú valdir enga gerð af bíl${endir}");
  // }
  
  // String? inpEldsneyti = stdin.readLineSync();
  // int? inputEldsneyti = inpEldsneyti != null ? int.tryParse(inpEldsneyti) : null;
  // if (inputEldsneyti != null && inputEldsneyti > 0 && inputEldsneyti <= eldsneyti.length) {
  //   print("Þú valdir $inputEldsneyti sem er ${eldsneyti[inputEldsneyti - 1]}");
  // } else {
  //   print("${blar}{Þú valdir engan orkugjafa${endir}");
  // }

  
  // String? inpGerdAfBil = stdin.readLineSync();
  // int? inputGerdAfBil = inpGerdAfBil != null ? int.tryParse(inpGerdAfBil) : null;
  // if (inputGerdAfBil != null && inputGerdAfBil > 0 && inputGerdAfBil <= gerdAfBil.length) {
  //   print("Þú valdir $inputGerdAfBil sem er ${gerdAfBil[inputGerdAfBil - 1]}");
  // } else {
  //   print("${blar}{Þú valdir enga gerð af bíl${endir}");
  // }

  
  // String? inpLitur = stdin.readLineSync();
  // int? inputLitur = inpLitur != null ? int.tryParse(inpLitur) : null;
  // if (inputLitur != null && inputLitur > 0 && inputLitur <= litur.length) {
  //   print("Þú valdir $inputLitur sem er ${litur[inputLitur - 1]}");
  // } else {
  //   print("${blar}{Þú valdir engan lit${endir}");
  // }