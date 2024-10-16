import 'dart:io';
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
  // Set ekki required fyrir framan eins og í dæminu úr tíma því fólk á að geta séð alla bílana sem eru á sölu jafnvel þótt þau velja ekkert.
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
    return "Tegund: $tegund, Gerð: $gerd, Árg: $argerd, Litur: $litur, Orkugjafi: ${typa?.eldsneytisTegundir}, Týpur: ${typa?.typur?.join(", ")}";
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

  @override 
    String toString() {
      return "Orkugjafi: $eldsneytisTegundir, Týpur: ${typur?.join(", ")}";
    }
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

// dæmi um gerð  dæmi um tegund etc


void skilabod() {
  print("Ýttu á '1' ef þú vilt sjá alla bílana sem eru til sölu hjá okkur");
  print("Ýttu á '2' ef þú vilt leita að bílum til sölu hjá okkur með síum, svo sem tegund, gerð, eða hvaða orkugjafa bíllinn hefur og fleira.");
  print("Ýttu á '3' ef þú vilt fara út af bílasölunni");
}

void synaAllaBila () {
  for(int i = 0; i < bilarTilSolu.length; i++) {
    print("Bíll númer: ${i + 1}");
    print(bilarTilSolu[i]);
    print("--------------------------------------------------------------------------------");
  }
  }

BilTegund? synaBilaEftirSium () {
  List<String> tegund = ["Toyota", "Audi", "Volkswagen", "Hyundai", "Subaru", "Mitsubishi", "Suzuki", "Kia", "Nissan", "Ford", "Jeep", "Dacia", "Land Rover", "Tesla", "Volvo", "Renault", "Mazda", "Skoda", "Peugeot", "Honda"];
  List<String> gerd = ["Land Cruiser", "RS6", "Golf Gti", "Tucson", "Forester", "Outlander", "Vitara", "Sportage", "Hilux", "Qashqai", "Ranger", "Wrangler", "Duster", "Yaris", "Discovery", "Model 3"];
  List<String> eldsneyti = ["Dísel", "Bensín", "Hybrid", "Rafmagn"];
  List<String> gerdAfBil = ["Jeppi", "Fólksbíll", "Sportbíll", "Skutbíll", "Pallbíll"];
  List<String> litur = ["Hvítur", "Svartur", "Blár", "Grænn", "Rauður", "Silfur", "Grár", "Appelsínugulur"];
  
  print("Veldu tegund af bíl með því að velja númerið sem er fyrir framan tegundina eða ýttu á 'Enter' til að sleppa");
  print("Tegundir sem þú getur valið úr eru");
  print(tegund);
  
}  

void main () {
 synaBilaEftirSium();
}

