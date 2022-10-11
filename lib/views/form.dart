part of '../pages.dart';

class FormPage extends StatefulWidget {
  const FormPage({super.key});

  @override
  State<FormPage> createState() => _FormPageState();
}

class _FormPageState extends State<FormPage> {
  String? _cinemaTimeValue = "Alpha Cinema, Jakarta at 13:00-14:30";
  var _cinemaAndTime = [
    "Alpha Cinema, Jakarta at 13:00-14:30",
    "Beta Cinema, Surabaya at 13:00-14:30",
    "Charlie Cinema, Semarang at 13:00-14:30",
    "Delta Cinema, Malang at 13:00-14:30",
  ];

  Color darkblue = Color(0xFF0c1d37);
  Color brown = Color(0xFF37260c);
  Color light_gray = Color(0xFF727d90);
  Color blue = Color(0xFF153361);

  @override
  void initState() {
    super.initState();
  }

  final _bookKey = GlobalKey<FormState>();

  final emailController = TextEditingController();
  final nameController = TextEditingController();
  final phoneController = TextEditingController();

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: darkblue,
        title: Text("Booking - Hunter x Hunter",
            style: TextStyle(
              color: Colors.white,
              fontSize: 14,
              fontWeight: FontWeight.bold,
              fontFamily: 'Futura',
            )),
      ),
      body: Container(
        decoration: BoxDecoration(
          color: darkblue,
        ),
        child: Column(
          children: [
            Flexible(
                flex: 1,
                child: Container(
                  width: double.infinity,
                  height: double.infinity,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      fit: BoxFit.cover,
                      colorFilter: ColorFilter.mode(
                          Colors.black.withOpacity(0.6), BlendMode.dstATop),
                      image: AssetImage('assets/images/bg.jpg'),
                    ),
                  ),
                )),
            Flexible(
              flex: 2,
              child: Column(
                children: [
                  Flexible(
                      flex: 1,
                      child: Container(
                          width: double.infinity,
                          margin: EdgeInsets.only(top: 24, left: 24),
                          padding: EdgeInsets.only(bottom: 0),
                          child: Text("Book - Hunter x Hunter",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                                fontFamily: 'Futura',
                              )))),
                  Flexible(
                    flex: 5,
                    child: Container(
                      padding: EdgeInsets.only(top: 24, left: 24, right: 24),
                      child: Form(
                          key: _bookKey,
                          child: SingleChildScrollView(
                            child: Column(
                              children: [
                                TextFormField(
                                  keyboardType: TextInputType.name,
                                  autovalidateMode:
                                      AutovalidateMode.onUserInteraction,
                                  validator: (value) {
                                    return value.toString().length < 1
                                        ? "Fill in your full name before booking!"
                                        : null;
                                  },
                                  controller: nameController,
                                  decoration: InputDecoration(
                                    filled: true,
                                    fillColor: Colors.white,
                                    enabledBorder: OutlineInputBorder(
                                      borderSide: BorderSide(
                                          color: Colors.white, width: 1.0),
                                    ),
                                    border: OutlineInputBorder(),
                                    // labelText: "Full Name",
                                    hintText: ("Full Name"),
                                    labelStyle: TextStyle(
                                      color: light_gray,
                                      // fontWeight: FontWeight.w300,
                                      fontSize: 14,
                                      fontFamily: 'Fontspring',
                                    ),
                                  ),
                                ),
                                SizedBox(height: 16),
                                TextFormField(
                                  keyboardType: TextInputType.emailAddress,
                                  validator: (value) {
                                    return !EmailValidator.validate(value!)
                                        ? 'Fill in your valid email before booking!'
                                        : null;
                                  },
                                  autovalidateMode:
                                      AutovalidateMode.onUserInteraction,
                                  controller: emailController,
                                  decoration: InputDecoration(
                                    filled: true,
                                    fillColor: Colors.white,
                                    enabledBorder: OutlineInputBorder(
                                      borderSide: BorderSide(
                                          color: Colors.white, width: 1.0),
                                    ),
                                    border: OutlineInputBorder(),
                                    // labelText: "E-Mail",
                                    hintText: ("E-Mail"),

                                    labelStyle: TextStyle(
                                      color: light_gray,
                                      // fontWeight: FontWeight.w300,
                                      fontFamily: 'Fontspring',
                                      fontSize: 14,
                                    ),
                                  ),
                                ),
                                SizedBox(height: 16),
                                TextFormField(
                                  keyboardType: TextInputType.number,
                                  autovalidateMode:
                                      AutovalidateMode.onUserInteraction,
                                  validator: (value) {
                                    return value.toString().length < 12
                                        ? "Fill in your valid phone number before booking!"
                                        : null;
                                  },
                                  controller: phoneController,
                                  decoration: InputDecoration(
                                    filled: true,
                                    fillColor: Colors.white,
                                    enabledBorder: OutlineInputBorder(
                                      borderSide: BorderSide(
                                          color: Colors.white, width: 1.0),
                                    ),
                                    border: OutlineInputBorder(),
                                    // labelText: "Phone Number",
                                    hintText: ("Phone Number"),
                                    labelStyle: TextStyle(
                                      color: light_gray,
                                      // fontWeight: FontWeight.w300,
                                      fontSize: 14,
                                      fontFamily: 'Fontspring',
                                    ),
                                  ),
                                ),
                                SizedBox(height: 16),
                                DropdownButtonFormField(
                                  isExpanded: true,
                                  decoration: InputDecoration(
                                    filled: true,
                                    fillColor: Colors.white,
                                    enabledBorder: OutlineInputBorder(
                                      borderSide: BorderSide(
                                          color: Colors.white, width: 1.0),
                                    ),
                                    border: OutlineInputBorder(),
                                    // labelText: "Select Your Cinema and Time",
                                    labelStyle: TextStyle(
                                      color: light_gray,
                                      // fontWeight: FontWeight.w300,
                                      fontSize: 14,
                                      fontFamily: 'Fontspring',
                                    ),
                                  ),
                                  hint: Text(
                                      "Select Your Cinema and Time before booking!"),
                                  value: _cinemaTimeValue,
                                  items: _cinemaAndTime
                                      .map((String cinemaAndTime) {
                                    return DropdownMenuItem(
                                      child: Text(cinemaAndTime),
                                      value: cinemaAndTime,
                                    );
                                  }).toList(),
                                  validator: (value) {
                                    return value == null
                                        ? 'Select the cinema and the time to watch'
                                        : null;
                                  },
                                  onChanged: (String? value) {
                                    setState(() {
                                      _cinemaTimeValue = value!;
                                    });
                                  },
                                ),
                                SizedBox(height: 16),
                                Container(
                                  width: double.infinity,
                                  child: ElevatedButton(
                                    style: ElevatedButton.styleFrom(
                                      backgroundColor: brown,
                                    ),
                                    onPressed: () {
                                      if (_bookKey.currentState!.validate()) {
                                        showDialog(
                                            context: context,
                                            builder: (BuildContext context) {
                                              return AlertDialog(
                                                title: Text(
                                                    "Booking Confirmation"),
                                                content: Text(
                                                    "HUNTER x HUNTER\n\n${_cinemaTimeValue.toString()}\n\nCustomer Name: ${nameController.text}\nFree to choose seat.\nMr, Ms, or Mrs. ${nameController.text}, we will remind you of the film schedule again in your email and phone as per information given 1 day before the rolling of the film.\nEmail: ${emailController.text}\nPhone Number: ${phoneController.text}\n Existing issues and customer complaints can be referred to cinemaplex@21.com"),
                                                actions: <Widget>[
                                                  TextButton(
                                                    child:
                                                        const Text('Confirm'),
                                                    onPressed: () {
                                                      Navigator.of(context)
                                                          .popUntil((route) =>
                                                              route.isFirst);
                                                    },
                                                  ),
                                                ],
                                              );
                                            });
                                      } else {
                                        showDialog(
                                            context: context,
                                            builder: (BuildContext context) {
                                              return AlertDialog(
                                                title: Text("Booking Failed"),
                                                content: Text(
                                                    "Please complete and fill all the fields"),
                                                actions: <Widget>[
                                                  TextButton(
                                                    child: const Text('OK'),
                                                    onPressed: () {
                                                      Navigator.of(context)
                                                          .pop();
                                                    },
                                                  ),
                                                ],
                                              );
                                            });
                                      }
                                    },
                                    child: Text("Book Now",
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 10,
                                          fontWeight: FontWeight.bold,
                                          fontFamily: 'Futura',
                                        )),
                                  ),
                                ),
                              ],
                            ),
                          )),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
