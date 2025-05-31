import 'package:flutter/material.dart';

class Comment {
  final String name;
  final String date;
  final String comment;
  final int likes;
  final int dislikes;

  Comment({
    required this.name,
    required this.date,
    required this.comment,
    required this.likes,
    required this.dislikes,
  });
}

class CommentList extends StatelessWidget {
  final List<Comment> comments;

  const CommentList({Key? key, required this.comments}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const iconColor = Color.fromARGB(255, 74, 115, 156);

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // Dropdown: Most Relevant
        Container(
          margin: const EdgeInsets.symmetric(vertical: 8),
          padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12),
            color: Colors.grey[200],
          ),
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: const [
              Text('Most Relevant', style: TextStyle(fontWeight: FontWeight.w500)),
              SizedBox(width: 4),
              Icon(Icons.keyboard_arrow_down),
            ],
          ),
        ),
        const SizedBox(height: 12),

        // Comments
        ...comments.asMap().entries.map((entry) {
          final index = entry.key;
          final comment = entry.value;

          // Apply left margin only to second and third items (index 1 and 2)
          final extraLeftMargin = (index == 1 || index == 2) ? 40.0 : 0.0;

          return Padding(
            padding: EdgeInsets.only(bottom: 24, left: extraLeftMargin),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CircleAvatar(
                  radius: 24,
                  backgroundImage: AssetImage('assets/user1.jpg'),
                ),
                const SizedBox(width: 12),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Text(
                            comment.name,
                            style: const TextStyle(
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          const SizedBox(width: 8),
                          Text(
                            comment.date,
                            style: TextStyle(
                              color: Colors.grey[600],
                              fontSize: 13,
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 4),
                      Text(
                        comment.comment,
                        style: const TextStyle(fontSize: 15),
                      ),
                      const SizedBox(height: 8),
                      Row(
                        children: [
                          Icon(Icons.thumb_up_alt_outlined, size: 20, color: iconColor),
                          const SizedBox(width: 4),
                          Text('${comment.likes}', style: TextStyle(color: iconColor)),
                          const SizedBox(width: 16),
                          Icon(Icons.thumb_down_alt_outlined, size: 20, color: iconColor),
                          const SizedBox(width: 4),
                          Text('${comment.dislikes}', style: TextStyle(color: iconColor)),
                        ],
                      ),
                    ],
                  ),
                )
              ],
            ),
          );
        }).toList(),

      ],
    );
  }
}
