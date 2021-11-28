import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:spotify_mobile_clone/Controllers/singerProfileControllers.dart';
import 'package:spotify_mobile_clone/Models/Musics.dart';

class mainSingerProfile extends StatefulWidget {

  musics singer;
  mainSingerProfile(this.singer);

  @override
  _mainSingerProfileState createState() => _mainSingerProfileState();
}

class _mainSingerProfileState extends State<mainSingerProfile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: ConstrainedBox(
            constraints: BoxConstraints(
              maxWidth: MediaQuery.of(context).size.width,
              maxHeight: (MediaQuery.of(context).size.height+
                  (popularMusicsHeight+popularAlbumsHeight+aboutSingerHeight+AlbumsImagesHeight).toDouble()),
            ),
          child: Container(
            color: Colors.grey,
            child: Column(
              children: <Widget>[
                Expanded(
                  flex: 1,
                  child: Stack(
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          color: Colors.blue,
                          image: DecorationImage(
                              image: AssetImage(widget.singer.avatarPath),
                              fit: BoxFit.cover),
                        ),
                      ),
                      Positioned(
                        top: 20,
                        left: 20,
                        child: Icon(Icons.backspace),
                      ),
                      Positioned(
                        bottom: 0,
                        left: 20,
                        child: Text(widget.singer.singerName,
                            style: TextStyle(
                                fontSize: 50, fontWeight: FontWeight.bold)),
                      ),
                    ],
                  ),
                ),
                Expanded(
                  flex: 4,
                  child: Container(
                    margin: EdgeInsets.only(left: 20, right: 10),
                    child: Column(
                      children: <Widget>[
                        SizedBox(height: 20),
                        Align(
                            alignment: Alignment.topLeft,
                            child: Text("Aylık 992.189 dinleyici")),
                        SizedBox(height: 10),
                        Container(
                          child: Row(
                            children: <Widget>[
                              OutlinedButton(
                                onPressed: () {},
                                style: OutlinedButton.styleFrom(
                                  side: BorderSide(width: 2.0, color: Colors.white),
                                ),
                                child: Center(
                                    child: Text(
                                  "Takip Et",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold),
                                )),
                              ),
                              SizedBox(width: 20),
                              IconButton(
                                icon: Icon(Icons.more),
                                onPressed: () {},
                              ),
                              SizedBox(
                                width: 125,
                              ),
                              ElevatedButton(
                                onPressed: () {},
                                child: Icon(
                                  Icons.play_arrow,
                                  color: Colors.black,
                                ),
                                style: ElevatedButton.styleFrom(
                                  primary: Colors.green,
                                  shape: CircleBorder(),
                                  padding: EdgeInsets.all(15),
                                ),
                              ),
                            ],
                          ),
                        ),
                        /// Liked songs
                        Container(
                          child: widget.singer.description == " "? Container() : Container(),
                        ),
                        SizedBox(height: 20,),
                        Align(
                          alignment: Alignment.centerLeft,
                            child: Text("Popüler",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),)),
                        Container(
                          height: popularMusicsHeight,
                            child: ListView.builder(
                              padding: EdgeInsets.only(top: 10),
                              physics: NeverScrollableScrollPhysics(),
                              itemCount: 5,
                              itemExtent: 50,
                              itemBuilder: (context,index){
                                return ListTile(
                                  leading: Text((index+1).toString()),
                                );
                              },
                            ),
                        ),
                        SizedBox(height: 20,),
                        Align(
                            alignment: Alignment.centerLeft,
                            child: Text("Popüler Yayınlar",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),)),
                        Container(
                          height: popularAlbumsHeight,
                          child: ListView.builder(
                            itemExtent: 50,
                            padding: EdgeInsets.only(top: 10),
                            physics: NeverScrollableScrollPhysics(),
                            itemCount: 4,
                            itemBuilder: (context,index){
                              return ListTile(
                                leading: Text((index+1).toString()),
                              );
                            },
                          ),
                        ),
                        SizedBox(height: 25,),
                        Align(
                            alignment: Alignment.centerLeft,
                            child: Text("Karşınızda "+widget.singer.singerName,style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),)),
                        Container(
                          height: AlbumsImagesHeight,
                          child: ListView.builder(
                            itemExtent: 50,
                            padding: EdgeInsets.only(top: 10),
                            scrollDirection: Axis.horizontal,
                            itemCount: 24,
                            itemBuilder: (context,index){
                              return ListTile(
                                leading: Text((index+1).toString()),
                              );
                            },
                          ),
                        ),
                        SizedBox(height: 20,),
                        Align(
                            alignment: Alignment.centerLeft,
                            child: Text("Hayranların beğendiği diğer sanatçılar ",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),)),
                        Container(
                          height: AlbumsImagesHeight,
                          child: ListView.builder(
                            itemExtent: 50,
                            padding: EdgeInsets.only(top: 10),
                            scrollDirection: Axis.horizontal,
                            itemCount: 24,
                            itemBuilder: (context,index){
                              return ListTile(
                                leading: Text((index+1).toString()),
                              );
                            },
                          ),
                        ),
                        SizedBox(height: 20,),
                        Align(
                            alignment: Alignment.centerLeft,
                            child: Text("Hakkında ",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),)),
                        SizedBox(height: 20,),
                        Container(
                          height: aboutSingerHeight,
                          color: Colors.red,
                        ),
                      ],
                    ),
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
