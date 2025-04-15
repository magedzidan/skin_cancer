import 'package:flutter/material.dart';

class symptoms extends StatefulWidget {
  @override
  _symptoms createState() => _symptoms();
}

class _symptoms extends State<symptoms> {
  bool? abdominalpain = false;
  bool? acidity = false;
  bool? blurredvision = false;
  bool? breathlessness = false;
  bool? burningmicturition = false;
  bool? chestpain = false;
  bool? chills = false;
  bool? congestion = false;
  bool? continuoussneezing = false;
  bool? cough = false;
  bool? dehydration = false;
  bool? depression = false;
  bool? diarrhoea = false;
  bool? dizziness = false;
  bool? excessivehunger = false;
  bool? extramaritalcontacts = false;
  bool? fatigue = false;
  bool? headache = false;
  bool? highfever = false;
  bool? increasedappetite = false;
  bool? indigestion = false;
  bool? internalitching = false;
  bool? irregularsugarlevel = false;
  bool? irritability = false;
  bool? itching = false;
  bool? lackofconcentration = false;
  bool? lethargy = false;
  bool? lossofappetite = false;
  bool? lossofbalance = false;
  bool? lossofsmell = false;
  bool? malaise = false;
  bool? mildfever = false;
  bool? musclepain = false;
  bool? musclewasting = false;
  bool? nodalskineruptions = false;
  bool? obesity = false;
  bool? passageofgases = false;
  bool? patchesinthroat = false;
  bool? phlegm = false;
  bool? polyuria = false;
  bool? rednessofeyes = false;
  bool? redspotsoverbody = false;
  bool? restlessness = false;
  bool? runnynose = false;
  bool? shivering = false;
  bool? sinuspressure = false;
  bool? skinrash = false;
  bool? spottingurination = false;
  bool? stiffneck = false;
  bool? stomachpain = false;
  bool? sunkeneyes = false;
  bool? sweating = false;
  bool? swelledlymphnodes = false;
  bool? throatirritation = false;
  bool? ulcersontongue = false;
  bool? visualdisturbances = false;
  bool? vomiting = false;
  bool? wateringfromeyes = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue[900],
        title: Text("Symptoms"),
        centerTitle: true,
      ),
      body: Padding(
          padding: EdgeInsets.all(20),
          child: SingleChildScrollView(
            child: Container(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    transform: Matrix4.translationValues(-5, -1, 0.0),
                    child: Image(
                      image: AssetImage("assets/WhatsApp1.jpg"),
                      alignment: Alignment.center,
                      height: 200,
                      width: 200,
                      fit: BoxFit.cover,
                    ),
                  ),
                  const SizedBox(height: 5),
                  Row(children: [
                    Expanded(
                        child: Text("Help us know how do you feel?",
                            style: TextStyle(
                                fontSize: 40, fontWeight: FontWeight.bold))),
                    Icon(Icons.check, size: 70)
                  ]),
                  Text(
                    "Some diseases can be diagnosed based on common known symptoms of it. (check yours)",
                    style: TextStyle(
                        fontSize: 15, color: Colors.black, height: 1.6),
                  ),
                  const SizedBox(height: 10),
                  SizedBox(
                    width: 370,
                    child: TextField(
                      decoration: InputDecoration(
                        hintText: "Search",
                        fillColor: const Color(0xFFf5f6f8),
                        filled: true,
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(15),
                            borderSide: BorderSide(color: Colors.transparent)),
                        prefixIcon: const Icon(Icons.search_rounded),
                      ),
                    ),
                  ),
                  CheckboxListTile(
                    value: abdominalpain,
                    onChanged: (bool? val) {
                      setState(() {
                        abdominalpain = val;
                      });
                    },
                    activeColor: Colors.blue,
                    title: Text("abdominal_pain"),
                    subtitle: Text("وجع بطن"),
                  ),
                  CheckboxListTile(
                    value: acidity,
                    onChanged: (bool? val) {
                      setState(() {
                        acidity = val;
                      });
                    },
                    activeColor: Colors.blue,
                    title: Text("acidity"),
                    subtitle: Text("حموضة"),
                  ),
                  CheckboxListTile(
                    value: blurredvision,
                    onChanged: (bool? val) {
                      setState(() {
                        blurredvision = val;
                      });
                    },
                    activeColor: Colors.blue,
                    title: Text("blurred_and_distorted_vision"),
                    subtitle: Text("رؤية ضبابية و مشوهة"),
                  ),
                  CheckboxListTile(
                    value: breathlessness,
                    onChanged: (bool? val) {
                      setState(() {
                        breathlessness = val;
                      });
                    },
                    activeColor: Colors.blue,
                    title: Text("breathlessness"),
                    subtitle: Text("ضيق التنفس"),
                  ),
                  CheckboxListTile(
                    value: burningmicturition,
                    onChanged: (bool? val) {
                      setState(() {
                        burningmicturition = val;
                      });
                    },
                    activeColor: Colors.blue,
                    title: Text("burning_micturition"),
                    subtitle: Text("حرق في التبول"),
                  ),
                  CheckboxListTile(
                    value: chestpain,
                    onChanged: (val) {
                      setState(() {
                        chestpain = val;
                      });
                    },
                    activeColor: Colors.blue,
                    title: Text("chest_pain"),
                    subtitle: Text("ألم الصدر"),
                  ),
                  CheckboxListTile(
                    value: chills,
                    onChanged: (bool? val) {
                      setState(() {
                        chills = val;
                      });
                    },
                    activeColor: Colors.blue,
                    title: Text("chills"),
                    subtitle: Text("قشعريرة"),
                  ),
                  CheckboxListTile(
                    value: congestion,
                    onChanged: (bool? val) {
                      setState(() {
                        congestion = val;
                      });
                    },
                    activeColor: Colors.blue,
                    title: Text("congestion"),
                    subtitle: Text("ازدحام"),
                  ),
                  CheckboxListTile(
                    value: continuoussneezing,
                    onChanged: (bool? val) {
                      setState(() {
                        continuoussneezing = val;
                      });
                    },
                    activeColor: Colors.blue,
                    title: Text("continuous_sneezing"),
                    subtitle: Text("العطس المستمر"),
                  ),
                  CheckboxListTile(
                    value: cough,
                    onChanged: (bool? val) {
                      setState(() {
                        cough = val;
                      });
                    },
                    activeColor: Colors.blue,
                    title: Text("cough"),
                    subtitle: Text("سعال"),
                  ),
                  CheckboxListTile(
                    value: dehydration,
                    onChanged: (bool? val) {
                      setState(() {
                        dehydration = val;
                      });
                    },
                    activeColor: Colors.blue,
                    title: Text("dehydration"),
                    subtitle: Text("جفاف"),
                  ),
                  CheckboxListTile(
                    value: depression,
                    onChanged: (bool? val) {
                      setState(() {
                        depression = val;
                      });
                    },
                    activeColor: Colors.blue,
                    title: Text("depression"),
                    subtitle: Text("اكتئاب"),
                  ),
                  CheckboxListTile(
                    value: diarrhoea,
                    onChanged: (bool? val) {
                      setState(() {
                        diarrhoea = val;
                      });
                    },
                    activeColor: Colors.blue,
                    title: Text("diarrhoea"),
                    subtitle: Text("إسهال"),
                  ),
                  CheckboxListTile(
                    value: dizziness,
                    onChanged: (bool? val) {
                      setState(() {
                        dizziness = val;
                      });
                    },
                    activeColor: Colors.blue,
                    title: Text("dizziness"),
                    subtitle: Text("دوخة"),
                  ),
                  CheckboxListTile(
                    value: excessivehunger,
                    onChanged: (bool? val) {
                      setState(() {
                        excessivehunger = val;
                      });
                    },
                    activeColor: Colors.blue,
                    title: Text("excessive_hunger"),
                    subtitle: Text("الجوع المفرط"),
                  ),
                  CheckboxListTile(
                    value: extramaritalcontacts,
                    onChanged: (bool? val) {
                      setState(() {
                        extramaritalcontacts = val;
                      });
                    },
                    activeColor: Colors.blue,
                    title: Text("extra_marital_contacts"),
                    subtitle: Text("اتصالات خارج الزوجية"),
                  ),
                  CheckboxListTile(
                    value: fatigue,
                    onChanged: (bool? val) {
                      setState(() {
                        fatigue = val;
                      });
                    },
                    activeColor: Colors.blue,
                    title: Text("fatigue"),
                    subtitle: Text("ارهاق"),
                  ),
                  CheckboxListTile(
                    value: headache,
                    onChanged: (bool? val) {
                      setState(() {
                        headache = val;
                      });
                    },
                    activeColor: Colors.blue,
                    title: Text("headache"),
                    subtitle: Text("صداع"),
                  ),
                  CheckboxListTile(
                    value: highfever,
                    onChanged: (bool? val) {
                      setState(() {
                        highfever = val;
                      });
                    },
                    activeColor: Colors.blue,
                    title: Text("high_fever"),
                    subtitle: Text("ارتفاع درجة الحرارة"),
                  ),
                  CheckboxListTile(
                    value: increasedappetite,
                    onChanged: (bool? val) {
                      setState(() {
                        increasedappetite = val;
                      });
                    },
                    activeColor: Colors.blue,
                    title: Text("increased_appetite"),
                    subtitle: Text("زيادة الشهية"),
                  ),
                  CheckboxListTile(
                    value: indigestion,
                    onChanged: (bool? val) {
                      setState(() {
                        indigestion = val;
                      });
                    },
                    activeColor: Colors.blue,
                    title: Text("indigestion"),
                    subtitle: Text("عسر هضم"),
                  ),
                  CheckboxListTile(
                    value: internalitching,
                    onChanged: (bool? val) {
                      setState(() {
                        internalitching = val;
                      });
                    },
                    activeColor: Colors.blue,
                    title: Text("internal_itching"),
                    subtitle: Text("حكة داخلية"),
                  ),
                  CheckboxListTile(
                    value: irregularsugarlevel,
                    onChanged: (bool? val) {
                      setState(() {
                        irregularsugarlevel = val;
                      });
                    },
                    activeColor: Colors.blue,
                    title: Text("irregular_sugar_level"),
                    subtitle: Text("مستوي السكر غير منتظم"),
                  ),
                  CheckboxListTile(
                    value: irritability,
                    onChanged: (bool? val) {
                      setState(() {
                        irritability = val;
                      });
                    },
                    activeColor: Colors.blue,
                    title: Text("irritability"),
                    subtitle: Text("هيجان"),
                  ),
                  CheckboxListTile(
                    value: itching,
                    onChanged: (bool? val) {
                      setState(() {
                        itching = val;
                      });
                    },
                    activeColor: Colors.blue,
                    title: Text("itching"),
                    subtitle: Text("حكة"),
                  ),
                  CheckboxListTile(
                    value: lackofconcentration,
                    onChanged: (bool? val) {
                      setState(() {
                        lackofconcentration = val;
                      });
                    },
                    activeColor: Colors.blue,
                    title: Text("lack_of_concentration"),
                    subtitle: Text("قلة التركيز"),
                  ),
                  CheckboxListTile(
                    value: lethargy,
                    onChanged: (bool? val) {
                      setState(() {
                        lethargy = val;
                      });
                    },
                    activeColor: Colors.blue,
                    title: Text("lethargy"),
                    subtitle: Text("الخمول"),
                  ),
                  CheckboxListTile(
                    value: lossofappetite,
                    onChanged: (bool? val) {
                      setState(() {
                        lossofappetite = val;
                      });
                    },
                    activeColor: Colors.blue,
                    title: Text("loss_of_appetite"),
                    subtitle: Text("فقدان الشهية"),
                  ),
                  CheckboxListTile(
                    value: lossofbalance,
                    onChanged: (bool? val) {
                      setState(() {
                        lossofbalance = val;
                      });
                    },
                    activeColor: Colors.blue,
                    title: Text("loss_of_balance"),
                    subtitle: Text("فقدان التوازن"),
                  ),
                  CheckboxListTile(
                    value: lossofsmell,
                    onChanged: (bool? val) {
                      setState(() {
                        lossofsmell = val;
                      });
                    },
                    activeColor: Colors.blue,
                    title: Text("loss_of_smell"),
                    subtitle: Text("فقدان الشم"),
                  ),
                  CheckboxListTile(
                    value: malaise,
                    onChanged: (bool? val) {
                      setState(() {
                        malaise = val;
                      });
                    },
                    activeColor: Colors.blue,
                    title: Text("malaise"),
                    subtitle: Text("توعك"),
                  ),
                  CheckboxListTile(
                    value: mildfever,
                    onChanged: (bool? val) {
                      setState(() {
                        mildfever = val;
                      });
                    },
                    activeColor: Colors.blue,
                    title: Text("mild_fever"),
                    subtitle: Text("حمي خفيفة"),
                  ),
                  CheckboxListTile(
                    value: musclepain,
                    onChanged: (bool? val) {
                      setState(() {
                        musclepain = val;
                      });
                    },
                    activeColor: Colors.blue,
                    title: Text("muscle_pain"),
                    subtitle: Text("ألم عضلي"),
                  ),
                  CheckboxListTile(
                    value: musclewasting,
                    onChanged: (bool? val) {
                      setState(() {
                        musclewasting = val;
                      });
                    },
                    activeColor: Colors.blue,
                    title: Text("muscle_wasting"),
                    subtitle: Text("الهزال العضلي"),
                  ),
                  CheckboxListTile(
                    value: nodalskineruptions,
                    onChanged: (bool? val) {
                      setState(() {
                        nodalskineruptions = val;
                      });
                    },
                    activeColor: Colors.blue,
                    title: Text("nodal_skin_eruptions"),
                    subtitle: Text("الطفح الجلدي العقدي"),
                  ),
                  CheckboxListTile(
                    value: obesity,
                    onChanged: (bool? val) {
                      setState(() {
                        obesity = val;
                      });
                    },
                    activeColor: Colors.blue,
                    title: Text("obesity"),
                    subtitle: Text("بدانة"),
                  ),
                  CheckboxListTile(
                    value: passageofgases,
                    onChanged: (bool? val) {
                      setState(() {
                        passageofgases = val;
                      });
                    },
                    activeColor: Colors.blue,
                    title: Text("passage_of_gases"),
                    subtitle: Text("مرور الغازات"),
                  ),
                  CheckboxListTile(
                    value: patchesinthroat,
                    onChanged: (bool? val) {
                      setState(() {
                        patchesinthroat = val;
                      });
                    },
                    activeColor: Colors.blue,
                    title: Text("patches_in_throat"),
                    subtitle: Text("بقع في الحلق"),
                  ),
                  CheckboxListTile(
                    value: phlegm,
                    onChanged: (bool? val) {
                      setState(() {
                        phlegm = val;
                      });
                    },
                    activeColor: Colors.blue,
                    title: Text("phlegm"),
                    subtitle: Text("البلغم"),
                  ),
                  CheckboxListTile(
                    value: polyuria,
                    onChanged: (bool? val) {
                      setState(() {
                        polyuria = val;
                      });
                    },
                    activeColor: Colors.blue,
                    title: Text("polyuria"),
                    subtitle: Text("بوال"),
                  ),
                  CheckboxListTile(
                    value: rednessofeyes,
                    onChanged: (bool? val) {
                      setState(() {
                        rednessofeyes = val;
                      });
                    },
                    activeColor: Colors.blue,
                    title: Text("redness_of_eyes"),
                    subtitle: Text("احمرار العين"),
                  ),
                  CheckboxListTile(
                    value: redspotsoverbody,
                    onChanged: (bool? val) {
                      setState(() {
                        redspotsoverbody = val;
                      });
                    },
                    activeColor: Colors.blue,
                    title: Text("red_spots_over_body"),
                    subtitle: Text("بقع حمراء علي الجسم"),
                  ),
                  CheckboxListTile(
                    value: restlessness,
                    onChanged: (bool? val) {
                      setState(() {
                        restlessness = val;
                      });
                    },
                    activeColor: Colors.blue,
                    title: Text("restlessness"),
                    subtitle: Text("الأرق"),
                  ),
                  CheckboxListTile(
                    value: runnynose,
                    onChanged: (bool? val) {
                      setState(() {
                        runnynose = val;
                      });
                    },
                    activeColor: Colors.blue,
                    title: Text("runny_nose"),
                    subtitle: Text("سيلان الأنف"),
                  ),
                  CheckboxListTile(
                    value: shivering,
                    onChanged: (bool? val) {
                      setState(() {
                        shivering = val;
                      });
                    },
                    activeColor: Colors.blue,
                    title: Text("shivering"),
                    subtitle: Text("الارتجاف"),
                  ),
                  CheckboxListTile(
                    value: sinuspressure,
                    onChanged: (bool? val) {
                      setState(() {
                        sinuspressure = val;
                      });
                    },
                    activeColor: Colors.blue,
                    title: Text("sinus_pressure"),
                    subtitle: Text("ضغط الجيوب الأنفية"),
                  ),
                  CheckboxListTile(
                    value: skinrash,
                    onChanged: (bool? val) {
                      setState(() {
                        skinrash = val;
                      });
                    },
                    activeColor: Colors.blue,
                    title: Text("skin_rash"),
                    subtitle: Text("الطفح الجلدي"),
                  ),
                  CheckboxListTile(
                    value: spottingurination,
                    onChanged: (bool? val) {
                      setState(() {
                        spottingurination = val;
                      });
                    },
                    activeColor: Colors.blue,
                    title: Text("spotting_urination"),
                    subtitle: Text("التنقيط"),
                  ),
                  CheckboxListTile(
                    value: stiffneck,
                    onChanged: (bool? val) {
                      setState(() {
                        stiffneck = val;
                      });
                    },
                    activeColor: Colors.blue,
                    title: Text("stiff_neck"),
                    subtitle: Text("تصلب الرقبة"),
                  ),
                  CheckboxListTile(
                    value: stomachpain,
                    onChanged: (bool? val) {
                      setState(() {
                        stomachpain = val;
                      });
                    },
                    activeColor: Colors.blue,
                    title: Text("stomach_pain"),
                    subtitle: Text("آلام المعدة"),
                  ),
                  CheckboxListTile(
                    value: sunkeneyes,
                    onChanged: (bool? val) {
                      setState(() {
                        sunkeneyes = val;
                      });
                    },
                    activeColor: Colors.blue,
                    title: Text("sunken_eyes"),
                    subtitle: Text("العيون الغارقة"),
                  ),
                  CheckboxListTile(
                    value: sweating,
                    onChanged: (bool? val) {
                      setState(() {
                        sweating = val;
                      });
                    },
                    activeColor: Colors.blue,
                    title: Text("sweating"),
                    subtitle: Text("التعرق"),
                  ),
                  CheckboxListTile(
                    value: swelledlymphnodes,
                    onChanged: (bool? val) {
                      setState(() {
                        swelledlymphnodes = val;
                      });
                    },
                    activeColor: Colors.blue,
                    title: Text("swelled_lymph_nodes"),
                    subtitle: Text("تورم الغدد الليمفاوية"),
                  ),
                  CheckboxListTile(
                    value: throatirritation,
                    onChanged: (bool? val) {
                      setState(() {
                        throatirritation = val;
                      });
                    },
                    activeColor: Colors.blue,
                    title: Text("throat_irritation"),
                    subtitle: Text("تهيج الحلق"),
                  ),
                  CheckboxListTile(
                    value: ulcersontongue,
                    onChanged: (bool? val) {
                      setState(() {
                        ulcersontongue = val;
                      });
                    },
                    activeColor: Colors.blue,
                    title: Text("ulcers_on_tongue"),
                    subtitle: Text("القرحة علي اللسان"),
                  ),
                  CheckboxListTile(
                    value: visualdisturbances,
                    onChanged: (bool? val) {
                      setState(() {
                        visualdisturbances = val;
                      });
                    },
                    activeColor: Colors.blue,
                    title: Text("visual_disturbances"),
                    subtitle: Text("اضرابات بصرية"),
                  ),
                  CheckboxListTile(
                    value: vomiting,
                    onChanged: (bool? val) {
                      setState(() {
                        vomiting = val;
                      });
                    },
                    activeColor: Colors.blue,
                    title: Text("vomiting"),
                    subtitle: Text("التقيؤ"),
                  ),
                  CheckboxListTile(
                    value: wateringfromeyes,
                    onChanged: (bool? val) {
                      setState(() {
                        wateringfromeyes = val;
                      });
                    },
                    activeColor: Colors.blue,
                    title: Text("watering_from_eyes/سقي من العيون"),
                  ),
                  const SizedBox(height: 20),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(minimumSize: Size(370, 40)),
                    child: Text(
                      'Confirm',
                      style: TextStyle(fontSize: 16),
                    ),
                    onPressed: () {},
                  ),
                ],
              ),
            ),
          )),
    );
  }
}
