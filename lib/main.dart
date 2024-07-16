import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: AlbumListPage(),
      theme: ThemeData(
        textTheme: GoogleFonts.poppinsTextTheme(
          Theme.of(context).textTheme,
        ),
      ),
    );
  }
}

class AlbumListPage extends StatelessWidget {
  final List<Album> albums = [
    Album("-(Subtract)", "Ed Sheeran", "May 5, 2023", "assets/subtract.jpg"),
    Album("Lego House", "Ed Sheeran", "November 13, 2011",
        "assets/lego_house.jpg"),
    Album("=(Equals)", "Ed Sheeran", "November 4, 2022", "assets/equals.jpg"),
    Album("Don't", "Ed Sheeran", "August 12, 2014", "assets/dont.jpg"),
    Album("÷(Divide)", "Ed Sheeran", "March 3, 2017", "assets/divide.jpg"),
    Album("Bad Habits (The Remixes)", "Ed Sheeran", "August 6, 2021",
        "assets/bad_habits_remixes.jpg"),
    // Add more albums here
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("All Albums"),
        backgroundColor: Colors.black,
      ),
      body: ListView.builder(
        itemCount: albums.length,
        itemBuilder: (context, index) {
          return AlbumTile(album: albums[index]);
        },
      ),
      backgroundColor: Colors.black,
    );
  }
}

class Album {
  final String title;
  final String artist;
  final String releaseDate;
  final String imagePath;

  Album(this.title, this.artist, this.releaseDate, this.imagePath);
}

class AlbumTile extends StatelessWidget {
  final Album album;

  const AlbumTile({Key? key, required this.album}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.asset(album.imagePath),
          SizedBox(height: 8.0),
          Text(
            album.title,
            style: const TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontSize: 18.0,
            ),
          ),
          Text(
            album.artist,
            style: const TextStyle(
              color: Colors.white70,
              fontSize: 16.0,
            ),
          ),
          Text(
            album.releaseDate,
            style: const TextStyle(
              color: Colors.white70,
              fontSize: 14.0,
            ),
          ),
        ],
      ),
    );
  }
}
