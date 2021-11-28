import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/rendering.dart';
import 'package:spotify_mobile_clone/Models/Musics.dart';
import 'package:spotify_mobile_clone/Pages/singerProfile.dart';

class mainHome extends StatefulWidget {
  @override
  _mainHomeState createState() => _mainHomeState();
}

class _mainHomeState extends State<mainHome> {
  List captions = ["İyi günler","Listenizdekiler","Daha Sonra İzleyecekleriniz","Beğendiğiniz şarkılar","Sevdiğiniz Şarkılar","En Çok dinledikleriniz"];
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primaryTextTheme: Typography(platform: TargetPlatform.iOS).white,
        textTheme: Typography(platform: TargetPlatform.iOS).white,
      ),
      home: Scaffold(
        backgroundColor: Color(0xF191414),
        appBar: AppBar(
          title: Text("İyi Günler"),
          actions: [
            IconButton(
              icon: Icon(Icons.notifications_outlined),
            ),
            IconButton(
              icon: Icon(Icons.replay_outlined),
            ),
            IconButton(
              icon: Icon(Icons.settings_outlined),
            ),
          ],
        ),
        body: SingleChildScrollView(
          physics: BouncingScrollPhysics(),
          child: Container(
            height: (singers.length * 232).toDouble(),
            margin: EdgeInsets.only(top: 10, bottom: 10, left: 15, right: 10),
            child: Column(
              children: <Widget>[
                Expanded(
                  flex: (1 / 2).toInt(),
                  child: Container(
                    child: GridView.count(
                        childAspectRatio: (20 / 8),
                        shrinkWrap: true,
                        primary: true,
                        crossAxisCount: 2,
                        physics: NeverScrollableScrollPhysics(),
                        children: List.generate(6, (index) {
                          return Container(
                            margin:
                                EdgeInsets.only(top: 10, bottom: 10, right: 5),
                            child: Material(
                                color: Colors.grey,
                                borderRadius:
                                    BorderRadius.all(Radius.circular(5)),
                                child: InkWell(
                                  onTap: () {
                                    print("arab");
                                  },
                                  child: Row(
                                    children: [
                                      Image(
                                        fit: BoxFit.cover,
                                        image: AssetImage(
                                          singers[index].avatarPath,
                                        ),
                                      ),
                                      SizedBox(
                                        width: 10,
                                      ),
                                      Text(
                                        singers[index].songName,
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold),
                                      )
                                    ],
                                  ),
                                )),
                          );
                        })),
                  ),
                ),
                Expanded(
                  flex: 3,
                  child: Container(
                    height: 200,
                    /// Bottom ListView.Builders
                    child: ListView.builder(
                        itemExtent: 270,
                        physics: NeverScrollableScrollPhysics(),
                        scrollDirection: Axis.vertical,
                        itemCount: 6,
                        itemBuilder: (context, i) {
                          return Container(
                            child: Column(
                              children: [
                                SizedBox(height: 30),
                                Align(
                                    alignment: Alignment.centerLeft,
                                    child: Text(
                                      captions[i],
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 20),
                                    )),
                                SizedBox(height: 10),
                                Expanded(
                                  flex: 1,
                                  child: ListView.builder(
                                    physics: BouncingScrollPhysics(),
                                    scrollDirection: Axis.horizontal,
                                    itemCount: singers.length,
                                    itemBuilder: (context, index) {
                                      return Container(
                                        margin:
                                            EdgeInsets.symmetric(horizontal: 5),
                                        child: Material(
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(5)),
                                          color: Colors.grey,
                                          child: InkWell(
                                            onTap: () {
                                              Navigator.push(
                                                  context,
                                                  MaterialPageRoute(
                                                      builder: (context) =>
                                                          mainSingerProfile(
                                                              singers[index])));
                                            },
                                            child: Column(
                                              children: [
                                                Expanded(
                                                  flex: 3,
                                                  child: Align(
                                                    alignment:
                                                        Alignment.topCenter,
                                                    child: Container(
                                                      decoration: BoxDecoration(
                                                        borderRadius:
                                                            BorderRadius.only(
                                                                topLeft: Radius
                                                                    .circular(
                                                                        5),
                                                                topRight: Radius
                                                                    .circular(
                                                                        5)),
                                                        image: DecorationImage(
                                                            image: AssetImage(
                                                                singers[index]
                                                                    .avatarPath),
                                                            fit: BoxFit.cover),
                                                      ),
                                                      width: 155,
                                                      height: 155,
                                                    ),
                                                  ),
                                                ),
                                                SizedBox(height: 10),
                                                Expanded(
                                                  flex: 1,
                                                  child: Container(
                                                      width: 150,
                                                      child: Column(
                                                        children: [
                                                          Align(
                                                              alignment:
                                                                  Alignment
                                                                      .topLeft,
                                                              child: Text(
                                                                singers[index]
                                                                    .singerName,
                                                                style: TextStyle(
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .bold),
                                                              )),
                                                          SizedBox(height: 5),
                                                          Align(
                                                              alignment:
                                                                  Alignment
                                                                      .topLeft,
                                                              child: Text(
                                                                singers[index]
                                                                    .songName,
                                                                style:
                                                                    TextStyle(),
                                                              )),
                                                        ],
                                                      )),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                      );
                                    },
                                  ),
                                ),
                              ],
                            ),
                          );
                        }),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
