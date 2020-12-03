import "package:flutter/material.dart";

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
