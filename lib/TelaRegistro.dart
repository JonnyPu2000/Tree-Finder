import 'package:flutter/material.dart';
import 'widgets/createSearchBar.dart';
import "widgets/createRegister.dart";

class Registro extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          title: Text(
            "Registros",
            style: TextStyle(fontSize: 24),
          ),
          centerTitle: true,
          backgroundColor: Colors.black,
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            createSearchBar("Procurar..."),
            SizedBox(
              height: 10,
            ),
            Expanded(
                child: ListView(
              children: [
                Container(
                  margin: EdgeInsets.only(left: 30, right: 30, bottom: 30),
                  height: 80,
                  decoration: BoxDecoration(
                      color: Colors.green,
                      borderRadius: BorderRadius.circular(15)),
                  child: Row(
                    children: [
                      IconButton(
                        icon: Icon(Icons.add_box_rounded),
                        onPressed: () {},
                        iconSize: 40,
                      ),
                      Text(
                        "Adicionar Novo Registro",
                        style: TextStyle(fontSize: 18),
                      )
                    ],
                  ),
                ),
                createRegister("Araucaria", "assets/images/araucaria.jpg", "20",
                    "Observações: Podar em 26/10/2020 \nAltura: 15.0m \nIdade: 20 anos"),
              ],
            ))
          ],
        ),
        drawer: Column(
          children: [
            Container(
              margin: EdgeInsets.only(right: 150),
              height: 250,
              decoration: BoxDecoration(
                  color: Colors.black87,
                  border: Border(
                      bottom:
                          BorderSide(color: Colors.blueGrey.withOpacity(0.4)))),
              child: Row(
                children: [
                  Padding(
                    padding: EdgeInsets.only(top: 70, left: 60),
                    child: Column(
                      children: [
                        Container(
                            height: 80,
                            width: 80,
                            decoration: BoxDecoration(
                                border:
                                    Border.all(color: Colors.black, width: 1.5),
                                borderRadius: BorderRadius.circular(100),
                                image: DecorationImage(
                                    image: AssetImage(
                                        "assets/images/araucaria.jpg"),
                                    fit: BoxFit.cover))),
                        Padding(
                          padding: const EdgeInsets.only(top: 10.0),
                          child: Text("Rudney Eduardo",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 15,
                              )),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 5.0),
                          child: Text("Fazenda",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 15,
                              )),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(right: 150),
              height: 250,
              decoration: BoxDecoration(
                  color: Colors.black87,
                  border: Border(
                      bottom:
                          BorderSide(color: Colors.blueGrey.withOpacity(0.4)))),
              child: Column(children: [
                Padding(
                  padding: const EdgeInsets.only(left: 8, top: 15.0),
                  child: Row(
                    children: [
                      Icon(
                        Icons.map_rounded,
                        color: Colors.white,
                        size: 50,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 10.0),
                        child: InkWell(
                          onTap: () {
                            print("Rudney da o cu");
                          },
                          child: Text(
                            "Abrir Mapa",
                            style: TextStyle(color: Colors.white, fontSize: 18),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 8, top: 15.0),
                  child: Row(
                    children: [
                      Icon(
                        Icons.qr_code_scanner_rounded,
                        color: Colors.white,
                        size: 50,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 10.0),
                        child: InkWell(
                          onTap: () {
                            print("Rudney da o cu");
                          },
                          child: Text(
                            "Abrir Leitor QR",
                            style: TextStyle(color: Colors.white, fontSize: 18),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 8, top: 15.0),
                  child: Row(
                    children: [
                      Icon(
                        Icons.qr_code_rounded,
                        color: Colors.white,
                        size: 50,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 10.0),
                        child: InkWell(
                          onTap: () {
                            print("Rudney da o cu");
                          },
                          child: Text(
                            "Registrar QR",
                            style: TextStyle(color: Colors.white, fontSize: 18),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ]),
            ),
            Container(
              margin: EdgeInsets.only(right: 150),
              height: 343,
              decoration: BoxDecoration(
                  color: Colors.black87,
                  border: Border(
                      bottom:
                          BorderSide(color: Colors.blueGrey.withOpacity(0.4)))),
            )
          ],
        ));
  }
}
