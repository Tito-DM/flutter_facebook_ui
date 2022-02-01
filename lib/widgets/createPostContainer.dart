import 'package:flutter/material.dart';
import 'package:flutter_facebook_responsive_ui/models/user_model.dart';

import 'widgets.dart';

class CreatePostContainer extends StatelessWidget {
  final User currentUser;

  const CreatePostContainer({Key key, this.currentUser}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100.0,
      color: Colors.white,
      padding: EdgeInsets.fromLTRB(12.0, 8.0, 12.0, 0.0),
      child: Column(
        children: [
          Row(
            children: [
             ProfileAvatar(imgUrl: currentUser.imageUrl),
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
            color: Colors.grey
          ),
         Container(
           height: 40.0,
           child:  Row(
             mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                TextButton.icon(
                  onPressed: () => {},
                  icon: Icon(Icons.video_call),
                  label: const Text("live"),
                ),
                const VerticalDivider(width: 8.0, color: Colors.grey),
                TextButton.icon(
                    onPressed: () => {},
                    icon: const Icon(
                      Icons.photo_library,
                      color: Colors.green,
                    ),
                    label: const Text("gallery")),
                const VerticalDivider(width: 8.0, color: Colors.grey),
                TextButton.icon(
                    onPressed: () => {},
                    icon: const Icon(
                      Icons.video_call,
                      color: Colors.purple,
                    ),
                    label: const Text("room")),
              ],
            ),
          )
        ],
      ),
    );
  }
}
