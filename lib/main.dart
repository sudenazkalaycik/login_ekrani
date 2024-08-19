import 'package:flutter/material.dart';

// ctrl + alt + L ile kod formatlıyoruz

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // butonun dekorasyonu
    ButtonStyle style = ElevatedButton.styleFrom(
      backgroundColor: Colors.black,
      foregroundColor: Colors.white,// Butonun arka plan rengi
      padding: EdgeInsets.all(20), // Butonun iç padding'i
      textStyle: TextStyle(fontSize: 20),
    ).copyWith(
      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
        RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15.0), // Köşe yuvarlama miktarı
        ),
      ),
    );



    return MaterialApp(
        home: Scaffold(

            // Arkaplan Resmi
            body: SafeArea(
                // bu kaymaları engeller ve tasarımı çerçevenin içine alır
                child: Align(
      child: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage("images/odevArkaPlan.png"), fit: BoxFit.cover),
        ),

        // şeffaf kısım
        child: Align(
          alignment: Alignment.bottomCenter,
          child: Container(
            //width: 350,
            //height: 560,
            decoration: BoxDecoration(
              color: Colors.grey.withOpacity(0.32),
              // renk
              borderRadius:
                  BorderRadius.circular(20.00), // kenarları yuvarlıyor
            ),

            margin: EdgeInsets.only(bottom: 40, left: 40, right: 40),
            //padding: EdgeInsets.all(20),
            // containerın dışındaki boşuklar için

            // header
            child: Column(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(

                  //height: 100,
                  // buna bir yükseklik vermeme gerek yok çünkü bunu margin padding ile ayarlayıp  yapının  boyutunu ayarlamış oluyoruz
                  decoration: BoxDecoration(
                    //color: Colors.amber,
                      ),
                  margin: EdgeInsets.only(top: 30, bottom: 30),
                  //padding: EdgeInsets.all(20),

                  // header > metinler
                  child: const Column(
                    children: [
                      Text("Login",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 65,
                            //fontFamily: ,  fontu en son yapıcaz
                            fontWeight: FontWeight.bold,
                          )
                          //letterSpacing: 1),
                          ),
                      //SizedBox(height: 0),
                      // Metinler arasına boşluk eklemek için kullandık
                      Text(
                        "Sign in to continue",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 17,
                            fontWeight: FontWeight.w500,
                            letterSpacing: 1),
                      ),
                    ],
                  ),
                ),

                // kullanıcıdan veri girişi alıyoruz
                Container(
                  width: 350,
                  decoration: BoxDecoration(
                      //color: Colors.blue,
                      ),
                  margin: EdgeInsets.only(),
                  child: Column(
                    children: [
                      Container(
                        width: 300,
                        child: Column(
                          children: [
                            Align(
                              alignment: Alignment.topLeft,
                              child: Text(
                                "NAME",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 15,
                                  fontWeight: FontWeight.w500,
                                  letterSpacing: 2,
                                ),
                              ),
                            ),
                            TextFormField(
                              style: TextStyle(color: Colors.white),
                              decoration: InputDecoration(
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.all(
                                    Radius.circular(22),
                                  ),
                                ),
                              ),
                              textInputAction: TextInputAction.next,
                            ),
                          ],
                        ),
                      ),

                      Container(
                        width: 300,
                        child: Column(
                          children: [
                            Align(
                              alignment: Alignment.topLeft,
                              child: Text(
                                "PASSWORD",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 15,
                                  fontWeight: FontWeight.w500,
                                  letterSpacing: 2,
                                ),
                              ),
                            ),
                            TextFormField(
                              style: TextStyle(color: Colors.white),
                              decoration: InputDecoration(
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.all(
                                    Radius.circular(22),
                                  ),
                                ),
                              ),
                              textInputAction: TextInputAction.done,
                            ),
                          ],
                        ),
                      ),

                      // şifre veri girişi kısmı
                      TextButton(
                        onPressed: () {
                          // Butona tıklandığında yapılacak işlemler
                          //print('Butona tıklandı!');
                        },
                        child: Align(
                          alignment: Alignment.centerRight,
                          child: Text(
                            'Forgot Password?',
                            style: TextStyle(
                              fontSize: 15,
                              color: Colors.white,
                              letterSpacing: 2,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),

                // butonlar
                Container(
                  margin: EdgeInsets.only(bottom: 20, top: 15),
                  //color: Colors.blue,
                  child: Column(
                    children: [
                      Container(
                        //color: Colors.yellow,
                        margin: EdgeInsets.only(bottom: 17, left: 16, right: 16),
                        // Adjust margin as needed
                        child: SizedBox( // boyutlandırmak için kullanıyoruz container gibi
                          width: double.infinity,
                          child: ElevatedButton(
                            style: style,
                            onPressed: () {},
                            child: const Text('Login'),
                          ),
                        ),
                      ),
                      Container(
                          margin: EdgeInsets.only(left: 16, right: 16),
                          // Adjust margin as needed

                          child: SizedBox(
                            width: double.infinity,
                            child: ElevatedButton(
                              style: style,
                              onPressed: () {
                                // Implement any other button logic here
                              },
                              child: const Text('Signup'),
                            ),
                          ))
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    ))));
  }
}
