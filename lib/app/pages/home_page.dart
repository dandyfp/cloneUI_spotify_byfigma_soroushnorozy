import 'package:clonespotify/app/config/app_color.dart';
import 'package:convex_bottom_bar/convex_bottom_bar.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: ConvexAppBar(
        activeColor: AppColor.colorPrimary,
        color: AppColor.colorPrimary,
        backgroundColor: Colors.white,
        items: [
          TabItem(icon: Icons.home, title: 'Home'),
          TabItem(icon: Icons.map, title: 'Discovery'),
          TabItem(icon: Icons.add, title: 'Add'),
          TabItem(icon: Icons.message, title: 'Message'),
          TabItem(icon: Icons.people, title: 'Profile'),
        ],
        onTap: (int i) => print('click index=$i'),
      ),
      body: SafeArea(
        child: Stack(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 50),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      IconButton(
                          onPressed: () {}, icon: Icon(Icons.search_rounded)),
                      const SizedBox(
                        width: 50,
                      ),
                      Image.asset(
                        'assets/logo.png',
                        height: 33,
                        width: 108,
                      ),
                      const SizedBox(
                        width: 50,
                      ),
                      IconButton(
                        onPressed: () {},
                        icon: Icon(
                          Icons.more_vert_outlined,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 24),
                  Container(
                    alignment: Alignment.centerLeft,
                    height: 118,
                    width: 334,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),
                        color: Color(0xff42C83C)),
                    child: Padding(
                      padding: const EdgeInsets.only(left: 20),
                      child: RichText(
                        text: const TextSpan(
                          style: TextStyle(color: Colors.white, fontSize: 19),
                          children: [
                            TextSpan(
                                text: 'New Album\n',
                                style: TextStyle(fontSize: 10)),
                            TextSpan(
                                text: 'Happier Than\nEver\n',
                                style: TextStyle(fontWeight: FontWeight.bold)),
                            TextSpan(
                                text: 'Billie Eilish',
                                style: TextStyle(fontSize: 13))
                          ],
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 41,
                  ),
                  DefaultTabController(
                    length: 4,
                    child: Column(
                      children: [
                        TabBar(
                          isScrollable: true,
                          indicatorColor: Color(0xff42C83C),
                          tabs: [
                            Tab(
                              child: Text(
                                'News',
                                style: TextStyle(
                                    color: Colors.black, fontSize: 20),
                              ),
                            ),
                            Tab(
                              child: Text(
                                'Videos',
                                style: TextStyle(
                                    color: Colors.black, fontSize: 20),
                              ),
                            ),
                            Tab(
                              child: Text(
                                'Artist',
                                style: TextStyle(
                                    color: Colors.black, fontSize: 20),
                              ),
                            ),
                            Tab(
                              child: Text(
                                'Podcast',
                                style: TextStyle(
                                    color: Colors.black, fontSize: 20),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 30,
                        ),
                        SizedBox(
                          width: 500,
                          height: 220,
                          child: TabBarView(children: [
                            SingleChildScrollView(
                              scrollDirection: Axis.horizontal,
                              child: Row(
                                children: [
                                  Column(
                                    children: [
                                      Container(
                                        height: 147,
                                        width: 158,
                                        child: Image.asset(
                                            'assets/foto1homepage.png'),
                                      ),
                                      Text(
                                        'Bad Guy',
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 16),
                                      ),
                                      Text('Billie Eillish'),
                                    ],
                                  ),
                                  Column(
                                    children: [
                                      Container(
                                        height: 147,
                                        width: 158,
                                        child: Image.asset(
                                            'assets/foto1homepage.png'),
                                      ),
                                      Text(
                                        'Bad Guy',
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 16),
                                      ),
                                      Text('Billie Eillish'),
                                    ],
                                  ),
                                  Column(
                                    children: [
                                      Container(
                                        height: 147,
                                        width: 158,
                                        child: Image.asset(
                                            'assets/foto1homepage.png'),
                                      ),
                                      Text(
                                        'Bad Guy',
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 16),
                                      ),
                                      Text('Billie Eillish'),
                                    ],
                                  ),
                                  Column(
                                    children: [
                                      Container(
                                        height: 147,
                                        width: 158,
                                        child: Image.asset(
                                            'assets/foto1homepage.png'),
                                      ),
                                      Text(
                                        'Bad Guy',
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 16),
                                      ),
                                      Text('Billie Eillish'),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                            Center(child: Text('Data kosong')),
                            Text('kosong'),
                            Text('kosong'),
                          ]),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 34),
                    child: Row(
                      children: [
                        Expanded(
                            child: Text(
                          'Playlist',
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 20),
                        )),
                        Text('See more'),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 150,
                    width: 500,
                    child: ListView(
                      scrollDirection: Axis.vertical,
                      children: const [
                        PlaylistSongs(),
                        SizedBox(
                          height: 10,
                        ),
                        PlaylistSongs(),
                        SizedBox(
                          height: 10,
                        ),
                        PlaylistSongs(),
                        SizedBox(
                          height: 10,
                        ),
                        PlaylistSongs(),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 80),
              child: Image.asset(
                'assets/image_homepage.png',
                height: 305,
                width: 305,
              ),
            ),
            SizedBox(height: 41),
          ],
        ),
      ),
    );
  }
}

class PlaylistSongs extends StatelessWidget {
  const PlaylistSongs({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Icon(Icons.play_circle_rounded),
              SizedBox(width: 20),
              Column(
                children: [
                  Text('At Is Was',
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 16)),
                  Text('Harry Styles'),
                ],
              ),
              Text('5:33'),
              Icon(Icons.heart_broken_sharp)
            ],
          ),
        ),
      ],
    );
  }
}
