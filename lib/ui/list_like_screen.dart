import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../controllers/like_controller.dart';

class ListLikeScreen extends StatefulWidget {
  const ListLikeScreen({super.key});

  @override
  State<ListLikeScreen> createState() => _ListLikeScreenState();
}

class _ListLikeScreenState extends State<ListLikeScreen> {
  LikeController likeController = Get.put(LikeController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("List Like"),
        centerTitle: true,
      ),
      body: SafeArea(
        child: ListView.builder(
          padding: EdgeInsets.symmetric(horizontal: 15),
          itemCount: likeController.lists.length,
          primary: false,
          shrinkWrap: true,
          itemBuilder: (context, index) {
            return Card(
              child: ListTile(
                title: Text(likeController.lists[index].toString()),
                onTap: () {
                  if (likeController.tempList
                      .contains(likeController.lists[index].toString())) {
                    likeController
                        .removeLike(likeController.lists[index].toString());
                  } else {
                    likeController
                        .addLike(likeController.lists[index].toString());
                  }
                },
                trailing: Obx(() => Icon(
                  Icons.favorite,
                  color: likeController.tempList
                          .contains(likeController.lists[index].toString())
                      ? Colors.red
                      : Colors.grey,
                ),)
              ),
            );
          },
        ),
      ),
    );
  }
}
