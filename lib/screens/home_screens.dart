import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_facebook_responsive_ui/config/palette.dart';
import 'package:flutter_facebook_responsive_ui/data/data.dart';
import 'package:flutter_facebook_responsive_ui/models/models.dart';
import 'package:flutter_facebook_responsive_ui/widgets/widgets.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class HomeScreen extends StatelessWidget {
 
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            backgroundColor: Colors.white,
            title: const Text(
              "FaceBook",
              style: const TextStyle(
                  color: Palette.facebookBlue,
                  fontSize: 28.0,
                  fontWeight: FontWeight.bold,
                  letterSpacing: -1.2),
            ),
            systemOverlayStyle: SystemUiOverlayStyle.light,
            centerTitle: false,
            floating: true,
            actions: [
              CircleButton(
                iconSize: 30.0,
                onpressed: () => print("search"),
                icon: Icons.search,
              ),
              CircleButton(
                iconSize: 30.0,
                onpressed: () => print("messager"),
                icon: MdiIcons.facebookMessenger,
              )
            ],
          ),
          SliverToBoxAdapter(
            child: CreatePostContainer(currentUser: currentUser),
          ),
          SliverPadding(
              padding: const EdgeInsets.fromLTRB(0.0, 10.0, 0.0, 5.0),
              sliver: SliverToBoxAdapter(
                child: Rooms(onlineUsers: onlineUsers),
              )),
              SliverPadding(
                padding: const EdgeInsets.fromLTRB(0.0, 5.0, 0.0, 5.0),
                sliver: SliverToBoxAdapter(child: Stories(currentUser: currentUser,stories: stories),),
              ),

              SliverList(delegate: SliverChildBuilderDelegate(
                (context,index){
                  final Post post = posts[index];
                  return PostContainer(post: post);
                },
                childCount: posts.length
              ))

        ],
      ),
    );
  }
}
