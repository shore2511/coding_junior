import 'package:flutter/material.dart';

class CourseDetails extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // AppBar-like row with back and options button
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  IconButton(
                    icon: Icon(Icons.arrow_back_ios),
                    onPressed: () {
                      Navigator.pop(context);
                    },
                  ),
                  Text(
                    "Details",
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  IconButton(
                    icon: Icon(Icons.more_vert),
                    onPressed: () {
                      // More options action
                    },
                  ),
                ],
              ),
              SizedBox(height: 20),
              // Course Info Card
              Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8),
                ),
                elevation: 1,
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Our School",
                        style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(height: 2,),
                      // Students Avatars
                      Row(
                        children: [

                          CircleAvatar(
                            backgroundImage: NetworkImage(
                                'https://randomuser.me/api/portraits/women/1.jpg'),
                          ),
                          SizedBox(width: 5),
                          CircleAvatar(
                            backgroundImage: NetworkImage(
                                'https://randomuser.me/api/portraits/men/1.jpg'),
                          ),
                          SizedBox(width: 5),
                          CircleAvatar(
                            backgroundImage: NetworkImage(
                                'https://randomuser.me/api/portraits/women/2.jpg'),
                          ),
                          SizedBox(width: 5),
                          CircleAvatar(
                            backgroundImage: NetworkImage(
                                'https://randomuser.me/api/portraits/men/2.jpg'),
                          ),
                          SizedBox(width: 5),
                          CircleAvatar(
                            backgroundImage: NetworkImage(
                                'https://randomuser.me/api/portraits/women/3.jpg'),
                          ),
                        ],
                      ),
                      SizedBox(height: 20),
                      // Course Title
                      Text(
                        "Photoshop Editing Course",
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(height: 10),
                      // Course Description
                      Text(
                        "A representation that can convey the three-dimensional aspect of a design through a two-dimensional medium.",
                        style: TextStyle(
                          fontSize: 14,
                          color: Colors.grey[600],
                        ),
                      ),
                      SizedBox(height: 10),
                      // Lessons and Time Info
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Icon(Icons.play_circle_outline, size: 16),
                              SizedBox(width: 5),
                              Text(
                                "30 Lessons",
                                style: TextStyle(fontSize: 12),
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              Icon(Icons.access_time, size: 16),
                              SizedBox(width: 5),
                              Text(
                                "13h 30min",
                                style: TextStyle(fontSize: 12),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 20),
              // Video Section
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Video",
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    "View All",
                    style: TextStyle(
                      fontSize: 14,
                      color: Colors.green,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 10),
              // Lessons List
              LessonTile(
                title: "Introduction",
                duration: "3h 30min",
                isUnlocked: true,
              ),
              LessonTile(
                title: "Install Software",
                duration: "1h 30min",
                isUnlocked: false,
              ),
              LessonTile(
                title: "Learn Tools",
                duration: "2h 30min",
                isUnlocked: false,
              ),
              LessonTile(
                title: "Tracing Sketsa",
                duration: "2h 30min",
                isUnlocked: false,
              ),
              SizedBox(height: 30),
            ],
          ),
        ),
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.green,
            padding: EdgeInsets.symmetric(vertical: 15),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(30),
            ),
          ),
          onPressed: () {
            // Enroll Now button action
          },
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(Icons.check_circle, color: Colors.white),
              SizedBox(width: 10),
              Text(
                "Enroll Now",
                style: TextStyle(fontSize: 18, color: Colors.white),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

// LessonTile widget for each video lesson
class LessonTile extends StatelessWidget {
  final String title;
  final String duration;
  final bool isUnlocked;

  LessonTile({
    required this.title,
    required this.duration,
    required this.isUnlocked,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 3,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
      child: ListTile(
        leading: Icon(
          isUnlocked ? Icons.play_circle_fill : Icons.lock,
          color: isUnlocked ? Colors.green : Colors.grey,
        ),
        title: Text(title),
        subtitle: Text(duration),
        trailing: ElevatedButton(
          onPressed: isUnlocked ? () {} : null, // Disable if locked
          style: ElevatedButton.styleFrom(
            backgroundColor: isUnlocked ? Colors.green : Colors.grey[400],
            padding: EdgeInsets.symmetric(vertical: 5, horizontal: 10),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20),
            ),
          ),
          child: Text(
            "Play Video",
            style: TextStyle(
              fontSize: 12,
              color: isUnlocked ? Colors.white : Colors.black54,
            ),
          ),
        ),
      ),
    );
  }
}
