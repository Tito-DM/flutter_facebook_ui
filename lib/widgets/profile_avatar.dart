import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_facebook_responsive_ui/config/palette.dart';

class ProfileAvatar extends StatelessWidget {
  final String imgUrl;
  final bool isActive;

  const ProfileAvatar({Key key, @required this.imgUrl, this.isActive = false})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        CircleAvatar(
          radius: 20.0,
          backgroundColor: Colors.grey[200],
          backgroundImage: CachedNetworkImageProvider(imgUrl),
        ),
       isActive ? Positioned(
          bottom: 10.0,
          right: 2.0,
          child: Container(
            height: 15.0,
            width: 15.0,
            decoration:
                BoxDecoration(color:
                 Palette.online, 
                 shape: BoxShape.circle,
                 border: Border.all(width: 2.0,color: Colors.white)),
          ),
        ) : const SizedBox.shrink(),
      ],
    );
  }
}
