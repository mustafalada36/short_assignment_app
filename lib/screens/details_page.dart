import 'package:flutter/material.dart';
import '../models/models.dart';

class DetailPage extends StatelessWidget {
  final Post post;

  const DetailPage({Key? key, required this.post}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const iconColor = Color.fromARGB(255, 74, 115, 156);

    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Post',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              post.title,
              style: const TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Color.fromARGB(255, 32, 38, 46),
              ),
            ),
            const SizedBox(height: 12),
            Text(
              post.body,
              style: const TextStyle(
                fontSize: 16,
                // color: Color.fromARGB(255, 76, 116, 157),
              ),
            ),
            const SizedBox(height: 20),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
           child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                Row(
                  children: [
                    Icon(Icons.favorite_border, color: iconColor),
                    SizedBox(width: 4),
                    Text('67', style: TextStyle(color: iconColor)),
                  ],
                ),
                Row(
                  children: [
                    Icon(Icons.comment, color: iconColor),
                    SizedBox(width: 4),
                    Text('32', style: TextStyle(color: iconColor)),
                  ],
                ),
                Row(
                  children: [
                    Icon(Icons.share, color: iconColor),
                    SizedBox(width: 4),
                    Text('5', style: TextStyle(color: iconColor)),
                  ],
                ),
              ],
            ),
        ),
          ],
        ),
      ),
    );
  }
}
