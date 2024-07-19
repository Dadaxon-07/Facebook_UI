import 'package:flutter/material.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(
            "Facebook",
            style: TextStyle(
                fontWeight: FontWeight.bold, color: Colors.blue, fontSize: 25),
          ),
          actions: [
            IconButton(onPressed: () {}, icon: Icon(Icons.search)),
            IconButton(onPressed: () {}, icon: Icon(Icons.camera_alt)),
          ],
        ),
        body: Container(
          child: ListView(children: [
            Column(
              children: [
                Container(
                  height: 80,
                  color: Colors.white12,
                  child: Row(
                    children: [
                      Container(
                          margin: EdgeInsets.only(left: 15, top: 5),
                          height: 63,
                          width: 63,
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                  image: AssetImage("assets/img.png"),
                                  fit: BoxFit.cover),
                              borderRadius: BorderRadius.circular(30))),
                      Container(
                          padding: EdgeInsets.all(6),
                          height: 70,
                          width: 290,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              border: Border.all(width: 1, color: Colors.grey),
                              borderRadius: BorderRadius.circular(20)),
                          margin: EdgeInsets.all(15),
                          child: TextField(
                            decoration: InputDecoration(
                                border: InputBorder.none,
                                hintText: "What's on your mind ?",
                                hintStyle: TextStyle(fontSize: 17)),
                          )),
                    ],
                  ),
                ),
                Container(
                  padding: EdgeInsets.symmetric(vertical: 16),
                  margin: EdgeInsets.only(top: 8),
                  height: 70,
                  child: Row(
                    children: [
                      Expanded(
                          child: Container(
                        height: 70,
                        color: Colors.white12,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              Icons.video_call_rounded,
                              color: Colors.red,
                              size: 28,
                            ),
                            Container(
                                margin: EdgeInsets.all(10),
                                child: Text(
                                  "Live",
                                  style: TextStyle(fontSize: 16),
                                ))
                          ],
                        ),
                      )),
                      VerticalDivider(
                        width: 5,
                        color: Colors.black45,
                      ),
                      Expanded(
                          child: Container(
                        height: 70,
                        color: Colors.white12,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              Icons.video_call_rounded,
                              color: Colors.green,
                              size: 28,
                            ),
                            Container(
                                margin: EdgeInsets.all(10),
                                child: Text(
                                  "Photo",
                                  style: TextStyle(fontSize: 16),
                                ))
                          ],
                        ),
                      )),
                      VerticalDivider(
                        width: 5,
                        color: Colors.black45,
                      ),
                      Expanded(
                          child: Container(
                        height: 70,
                        color: Colors.white12,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              Icons.video_call_rounded,
                              color: Colors.red,
                              size: 28,
                            ),
                            Container(
                                margin: EdgeInsets.all(10),
                                child: Text(
                                  "Check in",
                                  style: TextStyle(fontSize: 16),
                                ))
                          ],
                        ),
                      )),
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.all(14),
                  height: 220,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: [
                      itemStories(
                          img: "assets/img_1.png",
                          image2: "assets/img.png",
                          text: "User five"),
                      itemStories(
                          img: "assets/img_2.png",
                          image2: "assets/img_4.png",
                          text: "User five"),
                      itemStories(
                          img: "assets/img_3.png",
                          image2: "assets/img_5.png",
                          text: "User five"),
                    ],
                  ),
                ),
                Container(
                  height: 550,
                  child: itemPost(
                      img: "assets/img_5.png",
                      name: "User two ",
                      title: "1 hour ago",
                      description:
                          "All the Lorem Ipsum generators on the internet tend yo repeat predifened",
                      backimg: "assets/img_6.png"),
                )
              ],
            ),
          ]),
        ));
  }

  Widget itemStories({img, image2, text}) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 5),
      height: 200,
      width: 145,
      decoration: BoxDecoration(
          color: Colors.red,
          borderRadius: BorderRadius.circular(17),
          image: DecorationImage(image: AssetImage(img), fit: BoxFit.cover)),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            margin: EdgeInsets.all(10),
            height: 53,
            width: 53,
            decoration: BoxDecoration(
              border: Border.all(width: 2, color: Colors.blue),
              image:
                  DecorationImage(image: AssetImage(image2), fit: BoxFit.cover),
              borderRadius: BorderRadius.circular(50),
            ),
          ),
          Container(
            margin: EdgeInsets.all(10),
            child: Text(
              text,
              style:
                  TextStyle(color: Colors.white, fontWeight: FontWeight.w500),
            ),
          ),
        ],
      ),
    );
  }

  Widget itemPost({
    img,
    name,
    title,
    description,
    backimg,
    icon,
  }) {
    return Container(
        color: Colors.white,
        height: 550,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  margin: EdgeInsets.all(15),
                  height: 70,
                  width: 70,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage(img), fit: BoxFit.cover),
                      shape: BoxShape.circle),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      margin: EdgeInsets.only(top: 25),
                      child: Text(
                        name,
                        style: TextStyle(
                            fontSize: 19, fontWeight: FontWeight.w900),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 5),
                      child: Text(
                        title,
                        style: TextStyle(
                          fontSize: 15,
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  width: 160,
                ),
                Container(
                    margin: EdgeInsets.only(top: 30),
                    child: Icon(Icons.menu_rounded))
              ],
            ),
            Container(
              height: 55,
                margin: EdgeInsets.all(8),
                child: Text(
                  description,
                  style: TextStyle(fontSize: 16, color: Colors.black),
                )),
            Container(
              height: 260,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage(backimg), fit: BoxFit.cover)),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(margin: EdgeInsets.all(8), child: Row(
                  children: [
                    Icon(Icons.favorite, color: Colors.red,),
                    Container(margin: EdgeInsets.all(5), child: Text("Like", style: TextStyle(color: Colors.red, fontWeight: FontWeight.w500),))
                  ],
                )),
                Container(margin: EdgeInsets.all(8), child: Row(
                  children: [
                    Icon(Icons.comment,  color: Colors.blue[600],),
                    Container(margin: EdgeInsets.all(5), child: Text("Comment", style: TextStyle(color: Colors.blue[800], fontWeight: FontWeight.w500),))
                  ],
                )),
                Container(margin: EdgeInsets.all(8), child: Row(
                  children: [
                    Icon(Icons.share, color: Colors.grey[600],),
                    Container(margin: EdgeInsets.all(12), child: Text("Share", style: TextStyle(color: Colors.grey[800], fontWeight: FontWeight.w500),))
                  ],
                )),
              ],
            )
          ],
        ));
  }
}
