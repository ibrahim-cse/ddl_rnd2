import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Dependent DropDown',
      theme: ThemeData(
        primarySwatch: Colors.teal,
      ),
      home: MyHomePage(title: 'DDL R&D'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  String _selectedDivision = "Barisal";
  var division = {
    'Barisal': 'BAR',
    'Chattogram': 'CTG',
    'Dhaka': 'DHK',
    'Khulna': 'KHL',
    'Rajshahi': 'RAJ',
    'Rangpur': 'RAN',
    'Mymensingh': 'MYM',
    'Sylhet': 'SYL'
  };

  List _division = [];
  divisionDependentDropDown() {
    division.forEach((key, value) {
      _division.add(key);
    });
  }

  String _selectedDistrict = "";
  var district = {
    'Barguna': 'BAR',
    'Barisal': 'BAR',
    'Bhola': 'BAR',
    'Jhalokati': 'BAR',
    'Patuakhali': 'BAR',
    'Pirojpur': 'BAR',
    //End of BAR Districts
    'Bandarban': 'CTG',
    'Brahmanbaria': 'CTG',
    'Chandpur': 'CTG',
    'Chattogram': 'CTG',
    'Comilla': 'CTG',
    'Cox\'s Bazar': 'CTG',
    'Feni': 'CTG',
    'Khagrachari': 'CTG',
    'Lakshmipur': 'CTG',
    'Noakhali': 'CTG',
    'Rangamati': 'CTG',
    //End of CTG Districts
    'Dhaka': 'DHK',
    'Gazipur': 'DHK',
    'Kishoreganj': 'DHK',
    'Manikganj': 'DHK',
    'Munshiganj': 'DHK',
    'Narayanganj': 'DHK',
    'Narsingdi': 'DHK',
    'Tangail': 'DHK',
    'Faridpur': 'DHK',
    'Gopalganj': 'DHK',
    'Madaripur': 'DHK',
    'Rajbari': 'DHK',
    'Shariatpur': 'DHK',
    //End of DHK Districts
    'Bagerhat': 'KHL',
    'Chuadanga': 'KHL',
    'Jashore': 'KHL',
    'Jhenaidah': 'KHL',
    'Khulna': 'KHL',
    'Kushtia': 'KHL',
    'Magura': 'KHL',
    'Meherpur': 'KHL',
    'Narail': 'KHL',
    'Satkhira': 'KHL',
    //End of KHL Districts
    'Bogura': 'RAJ',
    'Chapinawabganj': 'RAJ',
    'Joypurhat': 'RAJ',
    'Naogaon': 'RAJ',
    'Natore': 'RAJ',
    'Pabna': 'RAJ',
    'Rajshahi': 'RAJ',
    'Sirajganj': 'RAJ',
    //End of RAJ Districts
    'Dinajpur': 'RAN',
    'Gaibandha': 'RAN',
    'Kurigram': 'RAN',
    'Lalmonirhat': 'RAN',
    'Nilphamari': 'RAN',
    'Panchagarh': 'RAN',
    'Rangpur': 'RAN',
    'Thakurgaon': 'RAN',
    //End of RAN Districts
    'Jamalpur': 'MYM',
    'Mymensingh': 'MYM',
    'Netrokona': 'MYM',
    'Sherpur': 'MYM',
    //End of MYM Districts
    'Hobiganj': 'SYL',
    'Moulvibazar': 'SYL',
    'Sunamganj': 'SYL',
    'Sylhet': 'SYL'
    //End of SYL Districts
  };

  List _districts = [];
  districtDependentDropDown(divisionShortName) {
    district.forEach((key, value) {
      if (divisionShortName == value) {
        _districts.add(key);
      }
    });
    _selectedDistrict = _districts[0];
  }

  String _selectedUpazila = "";
  var upazila = {
    'Amtali': 'Barguna',
    'Bamna': 'Barguna',
    'Barguna Sadar': 'Barguna',
    'Betagi': 'Barguna',
    'Patharghata': 'Barguna',
    'Taltali': 'Barguna', //End
    'Agailjhara': 'Barisal',
    'Gournadi': 'Barisal',
    'Bakergonj': 'Barisal',
    'Banaripara': 'Barisal',
    'Barisal Sadar': 'Barisal',
    'Mehendigonj': 'Barisal',
    'Muladi': 'Barisal',
    'Wazirpur': 'Barisal',
    'Hizla': 'Barisal', //End
    'Bhola Sadar': 'Bhola',
    'Borhanuddin UPO': 'Bhola',
    'Charfashion': 'Bhola',
    'Doulatkhan': 'Bhola',
    'Hajirhat': 'Bhola',
    'Hatshoshiganj': 'Bhola',
    'Lalmohan UPO': 'Bhola', //End
    'Jhalokathi Sadar': 'Jhalokati',
    'Kathalia': 'Jhalokati',
    'Nalchhiti': 'Jhalokati',
    'Rajapur': 'Jhalokati', //End
    'Bauphal': 'Patuakhali',
    'Dashmina': 'Patuakhali',
    'Galachipa': 'Patuakhali',
    'Khepupara': 'Patuakhali',
    'Patuakhali Sadar': 'Patuakhali',
    'Subidkhali': 'Patuakhali', //End
    'Banaripara': 'Pirojpur',
    'Bhandaria': 'Pirojpur',
    'kaukhali': 'Pirojpur',
    'Mathbaria': 'Pirojpur',
    'Nazirpur': 'Pirojpur',
    'Pirojpur Sadar': 'Pirojpur',
    'Swarupkathi': 'Pirojpur', //End
    'Alikadam': 'Bandarban',
    'Bandarban Sadar': 'Bandarban',
    'Naikhong': 'Bandarban',
    'Roanchhari': 'Bandarban',
    'Ruma': 'Bandarban',
    'Thanchi': 'Bandarban', //End
    'Akhaura': 'Brahamanbaria',
    'Banchharampur': 'Brahamanbaria',
    'Brahamanbaria Sadar': 'Brahamanbaria',
    'Kasba': 'Brahamanbaria',
    'Nabinagar': 'Brahamanbaria',
    'Nasirnagar': 'Brahamanbaria',
    'Sarail': 'Brahamanbaria', //End
    'Chandpur Sadar': 'Chandpur',
    'Faridganj': 'Chandpur',
    'Hajiganj': 'Chandpur',
    'Hayemchar': 'Chandpur',
    'Kachua': 'Chandpur',
    'Matlobganj': 'Chandpur',
    'Shahrasti': 'Chandpur', //End
    'Anwara': 'Chattogram',
    'Banshkhali': 'Chattogram',
    'Boalkhali': 'Chattogram',
    'Chandanaish': 'Chattogram',
    'Fatikchhari': 'Chattogram',
    'Hathazari': 'Chattogram',
    'Lohagara': 'Chattogram',
    'Mirsharai': 'Chattogram',
    'Patiya': 'Chattogram',
    'Rangunia': 'Chattogram',
    'Raozan': 'Chattogram',
    'Sandwip': 'Chattogram',
    'Satkania': 'Chattogram',
    'Sitakunda': 'Chattogram',
    'Karnaphuli': 'Chattogram', //End
    'Dhamrai': 'Dhaka',
    'Dohar': 'Dhaka',
    'Keraniganj': 'Dhaka',
    'Nawabganj': 'Dhaka',
    'Savar': 'Dhaka', //End
    'Gazipur Sadar': 'Gazipur',
    'Kaliakair': 'Gazipur',
    'Kapasia': 'Gazipur',
    'Sreepur': 'Gazipur',
    'Kaligan': 'Gazipur', //End
    'Bagerhat Sadar': 'Bagerhat',
    'Chalna Ankorage': 'Bagerhat',
    'Chitalmari': 'Bagerhat',
    'Fakirhat': 'Bagerhat',
    'Kachua UPO': 'Bagerhat',
    'Mollahat': 'Bagerhat',
    'Morelganj': 'Bagerhat',
    'Rampal': 'Bagerhat',
    'Rayenda': 'Bagerhat', //End
    'Alamdanga': 'Chuadanga',
    'Chuadanga Sadar': 'Chuadanga',
    'Damurhuda': 'Chuadanga',
    'Doulatganj': 'Chuadanga', //End
    'Alamdighi': 'Bogura',
    'Bogura Sadar': 'Bogura',
    'Dhunat': 'Bogura',
    'Dupchachia': 'Bogura',
    'Gabtoli': 'Bogura',
    'Kahalu': 'Bogura',
    'Nandigram': 'Bogura',
    'Sariakandi': 'Bogura',
    'Sherpur': 'Bogura',
    'Shibganj': 'Bogura',
    'Sonatola': 'Bogura', //End
    'Bholahat': 'Chapinawabganj',
    'Chapinawabganj Sadar': 'Chapinawabganj',
    'Nachol': 'Chapinawabganj',
    'Rohanpur': 'Chapinawabganj',
    'Shibganj U.P.O': 'Chapinawabganj', //End
    'Bangla Hili': 'Dinajpur',
    'Biral': 'Dinajpur',
    'Birampur': 'Dinajpur',
    'Birganj': 'Dinajpur',
    'Chrirbandar': 'Dinajpur',
    'Dinajpur Sadar': 'Dinajpur',
    'Khansama': 'Dinajpur',
    'Maharajganj': 'Dinajpur',
    'Nababganj': 'Dinajpur',
    'Osmanpur': 'Dinajpur',
    'Parbatipur': 'Dinajpur',
    'Phulbari': 'Dinajpur',
    'Setabganj': 'Dinajpur', //End
    'Bonarpara': 'Gaibandha',
    'Gaibandha Sadar': 'Gaibandha',
    'Gobindaganj': 'Gaibandha',
    'Palashbari': 'Gaibandha',
    'Phulchhari': 'Gaibandha',
    'Saadullapur': 'Gaibandha',
    'Sundarganj': 'Gaibandha', //End
    'Dewanganj': 'Jamalpur',
    'Baksiganj': 'Jamalpur',
    'Islampur': 'Jamalpur',
    'Jamalpur Sadar': 'Jamalpur',
    'Madarganj': 'Jamalpur',
    'Melandaha': 'Jamalpur',
    'Sarishabari': 'Jamalpur', //End
    'Bhaluka': 'Mymensingh',
    'Trishal': 'Mymensingh',
    'Haluaghat': 'Mymensingh',
    'Muktagacha': 'Mymensingh',
    'Dhobaura': 'Mymensingh',
    'Fulbaria': 'Mymensingh',
    'Gaffargaon': 'Mymensingh',
    'Gauripur': 'Mymensingh',
    'Ishwarganj': 'Mymensingh',
    'Mymensingh Sadar': 'Mymensingh',
    'Nandail': 'Mymensingh',
    'Phulpur': 'Mymensingh',
    'Tarakhanda': 'Mymensingh', //End
    'Azmireeganj': 'Hobiganj',
    'Bahubal': 'Hobiganj',
    'Baniachang': 'Hobiganj',
    'Chunarughat': 'Hobiganj',
    'Hobiganj Sadar': 'Hobiganj',
    'Kalauk': 'Hobiganj',
    'Madhabpur': 'Hobiganj',
    'Nabiganj': 'Hobiganj', //End
    'Baralekha': 'Moulvibazar',
    'Kamalganj': 'Moulvibazar',
    'Kulaura': 'Moulvibazar',
    'Moulvibazar Sadar': 'Moulvibazar',
    'Rajnagar': 'Moulvibazar',
    'Srimangal': 'Moulvibazar', //End
    'Bishamsarpur': 'Sunamganj',
    'Chhatak': 'Sunamganj',
    'Dhirai Chandpur': 'Sunamganj',
    'Duara bazar': 'Sunamganj',
    'Ghungiar': 'Sunamganj',
    'Jagnnathpur': 'Sunamganj',
    'Sachna': 'Sunamganj',
    'Sunamganj Sadar': 'Sunamganj',
    'Tahirpur': 'Sunamganj', //End
    'Balaganj': 'Sylhet',
    'Bianibazar': 'Sylhet',
    'Bishwanath': 'Sylhet',
    'Fenchuganj': 'Sylhet',
    'Goainhat': 'Sylhet',
    'Gopalganj': 'Sylhet',
    'Jaintapur': 'Sylhet',
    'Jakiganj': 'Sylhet',
    'Kanaighat': 'Sylhet',
    'Kompanyganj': 'Sylhet',
    'Sylhet Sadar': 'Sylhet' //End
  };

  List _upazila = [];
  upazilaDependentDropDown(districtShortName) {
    upazila.forEach((key, value) {
      if (districtShortName == value) {
        _upazila.add(key);
      }
    });
    _selectedUpazila = _upazila[0];
  }

  @override
  void initState() {
    super.initState();
    divisionDependentDropDown();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
        centerTitle: true,
      ),
      body: Container(
        margin: EdgeInsets.all(15),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            const SizedBox(
              height: 23,
            ),
            const Align(
              alignment: Alignment.centerLeft,
              child: Text(
                "Division",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
              ),
            ),
            Container(
              width: 400,
              child: DropdownButton(
                value: _selectedDivision,
                onChanged: (newValue) {
                  setState(() {
                    _upazila = [];
                    _districts = [];
                    districtDependentDropDown(division[newValue]);
                    _selectedDivision = "$newValue";
                  });
                },
                items: _division.map((division) {
                  return DropdownMenuItem(
                    child: Text(division),
                    value: division,
                  );
                }).toList(),
              ),
            ),
            const SizedBox(
              height: 23,
            ),
            const Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  "District",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                )),
            Container(
              width: 400,
              child: DropdownButton(
                value: _selectedDistrict,
                onChanged: (newValue) {
                  print(newValue);
                  setState(() {
                    print(newValue);
                    _upazila = [];
                    upazilaDependentDropDown(newValue);

                    _selectedDistrict = "$newValue";
                  });
                },
                items: _districts.map((district) {
                  return DropdownMenuItem(
                    child: Text(district),
                    value: district,
                  );
                }).toList(),
              ),
            ),
            const SizedBox(
              height: 23,
            ),
            const Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  "Upazila",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                )),
            Container(
              width: 400,
              child: DropdownButton(
                value: _selectedUpazila,
                onChanged: (newValue) {
                  setState(() {
                    _selectedUpazila = "$newValue";
                    print('Selected Upazila $_selectedUpazila');
                  });
                },
                items: _upazila.map((upazila) {
                  // print('upazila $upazila');
                  return DropdownMenuItem(
                    child: Text(upazila),
                    value: upazila,
                  );
                }).toList(),
              ),
            )
          ],
        ),
      ),
    );
  }
}
