import 'package:beats_app/consts/colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../consts/text style.dart';

class Player extends StatelessWidget {
  const Player({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: bgColor,
        appBar: AppBar(),
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
          Expanded(child: Container
          (
          decoration: const BoxDecoration(shape: BoxShape.circle,
            color: Colors.red,),
          alignment: Alignment.center,


          child: const Icon(Icons.music_note),)),
    const SizedBox(height:12 ,),
    Expanded(child: Container
    (
    padding: EdgeInsets.all(8),
    alignment: Alignment.center,

    decoration: const BoxDecoration(
    color: whiteColor,
    borderRadius: BorderRadius.vertical(top: Radius.circular(16))
    ),

    child: Column(
    children: [
    Text("Music name",
    style:ourStyle(
    color: bgDarkColor,
    family: bold,
    size: 24,
    ),
    ),
    Text("Artist name",
    style:ourStyle(
    color: bgDarkColor,
    family: regular,
    size: 20,
    ),
    ),
    const SizedBox(
    height: 12,
    ),
    Row(
    children: [
    Text("0:0",style: ourStyle(
    color: bgDarkColor,
    ),),
    Expanded(child: Slider(
    thumbColor:slideColor,
    activeColor: slideColor,
    inactiveColor:bgColor ,
    value: 0.0, onChanged: (newValue){}
    ),),
    Text("04:00",style: ourStyle(color: bgDarkColor,),),
    ],
    ),

    SizedBox(
    height: 12,
    ),
    Row(
      mainAxisAlignment:MainAxisAlignment.spaceAround ,
    children: [
    IconButton(onPressed: (){}, icon: Icon(Icons.skip_previous_rounded,size: 40,color: bgDarkColor,)),

    CircleAvatar(
      radius: 35,
    backgroundColor: bgDarkColor,
    child:Transform.scale(
    scale: 2.5,

    child: IconButton(onPressed: (){}, icon: Icon(Icons.play_arrow_rounded,color: whiteColor,)
    )
    ),
    ),
    IconButton(onPressed: (){}, icon: Icon(Icons.skip_next_rounded,size: 40,color: bgDarkColor,)),
    ],
    )
    ],
    ),

    )
    ),
    ],
    ),
    )
    ,
    );
  }
}
