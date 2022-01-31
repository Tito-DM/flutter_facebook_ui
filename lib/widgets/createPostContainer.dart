import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_facebook_responsive_ui/models/user_model.dart';

class CreatePostContainer extends StatelessWidget {
  final User currentUser;

  const CreatePostContainer({Key key, this.currentUser}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100.0,
      color: Colors.orange,
      padding: EdgeInsets.fromLTRB(12.0, 8.0, 12.0, 0.0),
      child: Column(
        children: [
          Row(
            children: [
              CircleAvatar(
                radius: 20.0,
                backgroundColor: Colors.grey[200],
                backgroundImage:
                    CachedNetworkImageProvider(currentUser.imageUrl),
              ),
              const SizedBox(width: 8.9),
              Expanded(
                  // expend the textField
                  child: TextField(
                decoration: InputDecoration.collapsed(
                    hintText:
                        "what\'s on your mind"), //.collapsed remove the line under the text
              ))
            ],
          ),
          Divider(
            height: 10.0,
            thickness: 0.5,
          ),
          Row(
            children: [
              TextButton.icon(
                onPressed: () => {},
                icon: Icon(Icons.video_call),
                label: const Text("live"),
              ),
            ],
          )
        ],
      ),
    );
  }
}
