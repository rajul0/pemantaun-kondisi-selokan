import 'package:flutter/material.dart';

class LoginPageDinas extends StatefulWidget {
  const LoginPageDinas({super.key});

  @override
  State<LoginPageDinas> createState() => _LoginPageDinasState();
}

class _LoginPageDinasState extends State<LoginPageDinas> {
  String selectedValue = 'Pilihan 1';

  var loginInstansi;
  List<String> instansi = [
    'Dinas Perairan Banda Aceh',
    'Dinas Perairan Aceh Besar',
    'Dinas Perairan Jantho',
    'Dinas Perairan Sabang',
    'Dinas Perairan Sigli'
  ];
  var loginIdInstansi;
  List<String> IdInstansi = [
    '2104111010032',
    '2104111010056',
    '2104111010074',
    '2104111010078',
    '2104111010085'
  ];

  var password;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.center,
            colors: [Color(0xFFFFBE58).withOpacity(0.45), Colors.white],
          ),
        ),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: EdgeInsets.only(
                  left: 33.0,
                  top: 69,
                  right: 33.0,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Haloo,',
                      textAlign: TextAlign.start,
                      style: TextStyle(
                        fontFamily: 'Montserrat',
                        fontSize: 25.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(
                      height: 5.0,
                    ),
                    Text(
                      'silahkan login untuk melanjutkan.',
                      textAlign: TextAlign.start,
                      style: TextStyle(
                          fontFamily: 'Montserrat',
                          fontSize: 15.0,
                          color: Color(0xFF000000).withOpacity(0.5)),
                    ),
                    Center(
                      child: SizedBox(
                        width: 213,
                        child: Image(
                          image: AssetImage(
                            'assets/image/person_login.png',
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Center(
                child: Container(
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: Color(0xFF33AAAA),
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(78.0),
                      topRight: Radius.circular(78.0),
                    ),
                  ),
                  child: Center(
                    child: Padding(
                      padding: EdgeInsets.only(
                          top: 18.0, left: 19.0, right: 19.0, bottom: 165.0),
                      child: Container(
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(70.0),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black.withOpacity(0.25),
                              spreadRadius: 0,
                              blurRadius: 4,
                              offset: Offset(0, 4), // arah bayangan (x, y)
                            ),
                          ],
                        ),
                        child: Padding(
                          padding: const EdgeInsets.only(
                              top: 15.0, left: 33.0, right: 33.0, bottom: 46.0),
                          child: Column(
                            children: [
                              Text(
                                'Masuk',
                                style: TextStyle(
                                    color: Color(0xFF7C868F),
                                    fontFamily: 'Montserrat',
                                    fontSize: 35,
                                    fontWeight: FontWeight.bold),
                              ),
                              SizedBox(
                                height: 31.0,
                              ),
                              Form(
                                child: Column(
                                  children: [
                                    DropdownButtonFormField<String>(
                                      validator: (value) {
                                        if (value == null) {
                                          return 'Pilih instansi';
                                        }
                                        return null;
                                      },
                                      decoration: InputDecoration(
                                        filled: true,
                                        fillColor: Colors.white,
                                        contentPadding: EdgeInsets.only(
                                          top: 13.0,
                                          bottom: 12.0,
                                          left: 18.0,
                                          right: 18.0,
                                        ),
                                        border: UnderlineInputBorder(
                                          borderSide: BorderSide(
                                              color: Color(
                                                  0xFFC9C6BF)), // Warna underline
                                        ),
                                        enabledBorder: UnderlineInputBorder(
                                          borderSide: BorderSide(
                                              color: Color(
                                                  0xFFC9C6BF)), // Warna underline
                                        ),
                                        focusedBorder: UnderlineInputBorder(
                                          borderSide: BorderSide(
                                              color: Color(
                                                  0xFF33AAAA)), // Warna underline
                                        ),
                                      ),
                                      value: loginInstansi,
                                      hint: Text('Instansi'),
                                      onChanged: (value) {
                                        setState(() {});
                                      },
                                      items: instansi
                                          .map<DropdownMenuItem<String>>(
                                              (String value) {
                                        return DropdownMenuItem<String>(
                                          value: value,
                                          child: Text(value),
                                        );
                                      }).toList(),
                                      style: TextStyle(
                                        color: Color(0xFF33AAAA),
                                        fontFamily: 'Poppins',
                                        fontSize: 14.0,
                                        fontWeight: FontWeight.w600,
                                      ),
                                    ),
                                    SizedBox(
                                      height: 25.0,
                                    ),
                                    DropdownButtonFormField<String>(
                                      validator: (value) {
                                        if (value == null) {
                                          return 'ID';
                                        }
                                        return null;
                                      },
                                      decoration: InputDecoration(
                                        filled: true,
                                        fillColor: Colors.white,
                                        contentPadding: EdgeInsets.only(
                                          top: 13.0,
                                          bottom: 12.0,
                                          left: 18.0,
                                          right: 18.0,
                                        ),
                                        border: UnderlineInputBorder(
                                          borderSide: BorderSide(
                                              color: Color(
                                                  0xFFC9C6BF)), // Warna underline
                                        ),
                                        focusedBorder: UnderlineInputBorder(
                                          borderSide: BorderSide(
                                              color: Color(
                                                  0xFF33AAAA)), // Warna underline
                                        ),
                                        enabledBorder: UnderlineInputBorder(
                                          borderSide: BorderSide(
                                              color: Color(
                                                  0xFFC9C6BF)), // Warna underline
                                        ),
                                      ),
                                      value: loginIdInstansi,
                                      hint: Text('ID'),
                                      onChanged: (value) {
                                        setState(() {});
                                      },
                                      items: IdInstansi.map<
                                              DropdownMenuItem<String>>(
                                          (String value) {
                                        return DropdownMenuItem<String>(
                                          value: value,
                                          child: Text(value),
                                        );
                                      }).toList(),
                                      style: TextStyle(
                                        color: Color(0xFF33AAAA),
                                        fontFamily: 'Poppins',
                                        fontSize: 14.0,
                                        fontWeight: FontWeight.w600,
                                      ),
                                    ),
                                    TextFormField(
                                      validator: (value) {
                                        if (value == '') {
                                          return 'Password tidak boleh kosong';
                                        }
                                        return null;
                                      },
                                      keyboardType: TextInputType.number,
                                      onChanged: (value) {
                                        setState(() {
                                          password = value;
                                        });
                                      },
                                      decoration: InputDecoration(
                                        filled: true,
                                        fillColor: Colors.white,
                                        labelText: 'Password',
                                        labelStyle: TextStyle(
                                            color: Color(0xFFC9C6BF),
                                            fontSize: 14.0,
                                            fontFamily: 'Poppins'),
                                        hintStyle: TextStyle(
                                            color: Color(0xFFC9C6BF)
                                                .withOpacity(0.3),
                                            fontSize: 14.0,
                                            fontFamily: 'Poppins'),
                                        contentPadding: EdgeInsets.only(
                                          top: 13.0,
                                          bottom: 12.0,
                                          left: 18.0,
                                          right: 18.0,
                                        ),
                                        border: UnderlineInputBorder(
                                          borderSide: BorderSide(
                                              color: Color(0xFFC9C6BF)),
                                        ),
                                        focusedBorder: UnderlineInputBorder(
                                          borderSide: BorderSide(
                                              color: Color(
                                                  0xFF33AAAA)), // Warna underline
                                        ),
                                        enabledBorder: UnderlineInputBorder(
                                          borderSide: BorderSide(
                                              color: Color(
                                                  0xFFC9C6BF)), // Warna underline
                                        ),
                                      ),
                                      style: TextStyle(
                                        fontSize: 14.0,
                                        color: Color(0xFFC9C6BF),
                                        fontFamily: 'Poppins',
                                      ),
                                    ),
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
