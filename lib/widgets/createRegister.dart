import "package:flutter/material.dart";

Widget createRegister(arvoreNome, arvoreFoto, idArvore, infoArvore) {
  return Column(
    children: [
      Container(
        margin: EdgeInsets.only(
          left: 30,
          right: 30,
        ),
        height: 80,
        decoration: BoxDecoration(
            color: Colors.green,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(15),
              topRight: Radius.circular(15),
            )),
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
                )),
            Padding(
              padding: const EdgeInsets.only(left: 32),
              child: IconButton(
                  icon: Icon(
                    Icons.remove_circle_outline,
                    size: 30,
                    color: Colors.red,
                  ),
                  onPressed: null),
            )
          ],
        ),
      ),
      Card(
        color: Colors.green,
        margin: EdgeInsets.only(left: 30, right: 30, bottom: 30),
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(15),
          bottomRight: Radius.circular(15),
        )),
        child: ExpansionTile(
          childrenPadding: EdgeInsets.all(8),
          title: Text("Mais Informações"),
          children: [
            Text(infoArvore),
          ],
        ),
      ),
    ],
  );
}
