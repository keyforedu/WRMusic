import 'package:flutter/material.dart';

class ItemsPage extends StatelessWidget {
  final List<Album> albums = [
    Album("-(Subtract)", "Ed Sheeran", "May 5, 2023",
        "lib/assets/- (Deluxe).jpg"),
    Album("Lego House", "Ed Sheeran", "November 13, 2011",
        "lib/assets/Lego House.jpg"),
    Album("=(Equals)", "Ed Sheeran", "November 4, 2022",
        "lib/assets/= (Tour Edition).jpg"),
    Album("Don't", "Ed Sheeran", "August 12, 2014", "lib/assets/Don't.jpg"),
    Album("÷(Divide)", "Ed Sheeran", "March 3, 2017",
        "lib/assets/÷ (Deluxe).jpg"),
    Album("Bad Habits (The Remixes)", "Ed Sheeran", "August 6, 2021",
        "lib/assets/Bad Habits (The Remixes).jpg"),
    // Add more albums here
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("All Albums"),
        backgroundColor: Colors.black,
      ),
      body: GridView.builder(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2, // Number of columns
          crossAxisSpacing: 10.0,
          mainAxisSpacing: 10.0,
          childAspectRatio: 0.75, // Adjust this to control item height
        ),
        itemCount: albums.length,
        itemBuilder: (context, index) {
          return AlbumTile(album: albums[index]);
        },
        padding: const EdgeInsets.all(10.0),
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
    return Container(
      decoration: BoxDecoration(
        color: Colors.black,
        borderRadius: BorderRadius.circular(10.0),
      ),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              child: Image.asset(album.imagePath, fit: BoxFit.cover),
            ),
            SizedBox(height: 8.0),
            Text(
              album.title,
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
              style: const TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 14.0,
              ),
            ),
            Text(
              album.artist,
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
              style: const TextStyle(
                color: Colors.white70,
                fontSize: 12.0,
              ),
            ),
            Text(
              album.releaseDate,
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
              style: const TextStyle(
                color: Colors.white70,
                fontSize: 10.0,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
