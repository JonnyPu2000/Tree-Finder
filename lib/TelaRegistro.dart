import 'package:flutter/material.dart';

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
                createRegister(
                    "Araucaria", "assets/images/araucaria.jpg", "20"),
              ],
            ))
          ],
        ),
        drawer: Container(
            margin: EdgeInsets.only(right: 150), color: Colors.grey[700]));
  }
}

Widget createRegister(arvoreNome, arvoreFoto, idArvore) {
  return Container(
    margin: EdgeInsets.only(left: 30, right: 30, bottom: 30),
    height: 80,
    decoration: BoxDecoration(
        color: Colors.green, borderRadius: BorderRadius.circular(15)),
    child: Row(
      children: [
        Container(
            margin: EdgeInsets.only(
              left: 15,
              right: 15,
            ),
            height: 65,
            width: 65,
            decoration: BoxDecoration(
                border: Border.all(color: Colors.black, width: 1.5),
                borderRadius: BorderRadius.circular(100),
                image: DecorationImage(
                    image: AssetImage(arvoreFoto), fit: BoxFit.cover))),
        Text("$arvoreNome - $idArvore",
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.w400,
            ))
      ],
    ),
  );
}

Widget createSearchBar(hint) {
  return Container(
      height: 60,
      margin: EdgeInsets.all(40),
      child: TextField(
        style: TextStyle(
          fontSize: 16,
          color: Colors.white,
        ),
        decoration: InputDecoration(
          prefixIcon: Icon(Icons.search_rounded, color: Colors.white),
          hintText: hint,
          hintStyle: TextStyle(color: Colors.grey),
          filled: true,
          fillColor: Colors.black87.withOpacity(0.9),
          enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(30),
              borderSide: BorderSide(color: Colors.greenAccent[700])),
          focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(30),
              borderSide: BorderSide(color: Colors.greenAccent[700])),
        ),
      ));
}
