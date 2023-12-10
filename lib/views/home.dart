import 'package:flutter/material.dart';
import 'package:muzika/consts/colors.dart';
import 'package:muzika/consts/text_style.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bgDarkColor,
      appBar: AppBar(
        backgroundColor: bgDarkColor,
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.search, color: whiteColor),
          )
        ],
        leading: IconButton(
          onPressed: () {
            // Code to execute when the sort icon is pressed
            // Replace this with the functionality you want for the sort icon.
          },
          icon: const Icon(Icons.sort_rounded, color: whiteColor),
        ),
        title: Text(
          "SonicPlay",
          style: ourStyle(
            family: bold,
            size: 18,
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListView.builder(
          physics: const BouncingScrollPhysics(),
          itemCount: 15,
          itemBuilder: (BuildContext context, int index) {
            return Container(
              margin: const EdgeInsets.only(bottom: 4),
              child: ListTile(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
                tileColor: bgColor,
                title: Text(
                  "Music name",
                  style: ourStyle(
                    family: bold,
                    size: 15,
                  ),
                ),
                subtitle: Text(
                  "Artist name",
                  style: ourStyle(
                    family: regular,
                    size: 12,
                  ),
                ),
                leading: const Icon(
                  Icons.music_note,
                  color: Colors.white,
                ),
                trailing: const Icon(
                  Icons.play_arrow,
                  color: Colors.white,
                  size: 26,
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
