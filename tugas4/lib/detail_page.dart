import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:tugas4/donut_model.dart';
import 'package:tugas4/list_page.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class DetailPage extends StatelessWidget {
  final Donut donut;
  const DetailPage({
    super.key,
    required this.donut,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
          child: Container(
        height: MediaQuery.of(context).size.height,
        child: Stack(
          children: [
            Container(
              height: double.infinity,
              color: Color(0xFE221F1F),
            ),
            Image.asset(
              donut.image,
              width: double.infinity,
              height: MediaQuery.of(context).size.height * 5,
              fit: BoxFit.cover,
            ),
            Positioned.fill(
              child: DecoratedBox(
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    colors: [
                      Colors.transparent,
                      Color(0xFE221F1F),
                    ],
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    stops: [0.3, 0.5],
                  ),
                ),
                child: BackdropFilter(
                  filter: ImageFilter.blur(sigmaX: 500, sigmaY: 800),
                ),
              ),
            ),
            Positioned(
              top: MediaQuery.of(context).size.height * 4,
              width: MediaQuery.of(context).size.width,
              child: Padding(
                padding: const EdgeInsets.all(20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Container(
                      child: Text(
                        "${donut.rating}",
                        style: GoogleFonts.poppins(
                            color: Colors.white,
                            fontWeight: FontWeight.w500,
                            fontSize: 11),
                      ),
                    ),
                    Positioned(
                        child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          donut.title,
                          style: GoogleFonts.poppins(
                            fontSize: 18,
                            fontWeight: FontWeight.w600,
                            color: Colors.white,
                          ),
                        )
                      ],
                    )),
                    Container(
                      margin: EdgeInsets.only(bottom: 3, left: 5),
                      child: Icon(FontAwesomeIcons.solidStar,
                          size: 12, color: Colors.yellow),
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      )),
    );
  }
}
