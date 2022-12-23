import 'package:flutter/material.dart';
import 'package:tugas4/detail_page.dart';
import 'package:tugas4/donut_model.dart';
import 'package:tugas4/donut_model.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
//import 'package:tugas4/detail_page.dart';

class ListPage extends StatelessWidget {
  ListPage({super.key});
  double height = 0;
  double width = 0;

  @override
  Widget build(BuildContext context) {
    height = MediaQuery.of(context).size.height;
    width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Colors.grey[300],
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        centerTitle: true,
        toolbarHeight: 50,
        elevation: 0.0,
        backgroundColor: Colors.transparent,
        title: Text(
          'DonutBASE',
          style: GoogleFonts.poppins(
            color: Colors.white,
            fontSize: 28,
            fontWeight: FontWeight.bold,
          ),
        ),
        flexibleSpace: Container(
            decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
                color: Color.fromARGB(248, 29, 38, 64),
                spreadRadius: 5,
                blurRadius: 10,
                offset: Offset(0, 1)),
          ],
          borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(10),
              bottomRight: Radius.circular(10)),
          gradient: LinearGradient(
            colors: [
              Colors.white,
              Color.fromARGB(252, 99, 130, 235),
            ],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
        )),
      ),
      body: SafeArea(
          child: Center(
        child: Container(
          child: Column(
            children: [
              Expanded(
                child: ListView.builder(
                    itemCount: ListDonut.length,
                    itemBuilder: (context, index) {
                      final donut = ListDonut[index];
                      return Container(
                        margin: EdgeInsets.symmetric(vertical: 10),
                        child: Container(
                          height: height / 5,
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                colorFilter: new ColorFilter.mode(
                                    Color.fromARGB(252, 99, 130, 235),
                                    BlendMode.dstATop),
                                image: AssetImage(donut.image),
                                fit: BoxFit.cover,
                              ),
                              boxShadow: [
                                BoxShadow(
                                  color: Color.fromARGB(252, 99, 130, 235),
                                  spreadRadius: 2,
                                  blurRadius: 7,
                                  offset: Offset(0, 3),
                                )
                              ],
                              borderRadius: BorderRadius.circular(10)),
                          child: ListTile(
                            title: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  donut.title,
                                  style: GoogleFonts.poppins(
                                    color: Color.fromARGB(255, 248, 245, 245),
                                    fontSize: 18,
                                    fontWeight: FontWeight.w700,
                                  ),
                                ),
                                Row(
                                  children: [
                                    Text(
                                      donut.topping,
                                      style: GoogleFonts.poppins(
                                          color: Colors.white, fontSize: 14),
                                    ),
                                    Text(" | ",
                                        style: GoogleFonts.poppins(
                                            color: Colors.white, fontSize: 14)),
                                  ],
                                ),
                                Row(
                                  children: [
                                    Text("${donut.rating}",
                                        style: GoogleFonts.poppins(
                                            color: Colors.white,
                                            fontWeight: FontWeight.w700,
                                            fontSize: 14)),
                                    Icon(
                                      FontAwesomeIcons.solidStar,
                                      size: 14,
                                      color: Colors.amber,
                                    ),
                                  ],
                                ),
                              ],
                            ),
                            onTap: () => Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => DetailPage(donut: donut),
                              ),
                            ),
                          ),
                        ),
                      );
                    }),
              )
            ],
          ),
        ),
      )),
    );
  }
}
