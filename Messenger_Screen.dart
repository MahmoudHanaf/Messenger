
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../users/users.dart';



class Messenger_Screen extends StatelessWidget {
List<UserModel> users =[
  UserModel(1, 'Mahmoud Hanafy', 'My name is Mahmoud Hanafy','02.30'),
  UserModel(2, 'Ahmed Elbarbary', 'Hello World','7.10'),
  UserModel(3, 'Sami', 'Welcom','4.5'),
  UserModel(4, 'Osama', 'How are you','8.15'),
  UserModel(1, 'Mahmoud Hanafy', 'My name is Mahmoud Hanafy','02.30'),
  UserModel(2, 'Ahmed Elbarbary', 'Hello World','7.10'),
  UserModel(3, 'Sami', 'Welcom','4.5'),
  UserModel(4, 'Osama', 'How are you','8.15'),
];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
       backgroundColor: Colors.white,
       appBar: AppBar(
         titleSpacing: 20,
         backgroundColor: Colors.white,
         elevation: 0,
         title: Row(

           children: [
             CircleAvatar(
                 backgroundImage: NetworkImage('https://avatars.githubusercontent.com/u/94074275?v=4'),
                 radius: 25,
             ),
             SizedBox(
               width: 15,
             ),
             Text(
               'Chats',
               style: TextStyle(
                 fontSize: 23,
                 fontWeight: FontWeight.bold,
                 color: Colors.black,
               ),
             ),
           ],
         ),
         actions: [
           CircleAvatar(
             backgroundColor: Colors.black12,
             radius: 18,
             child: IconButton(onPressed: (){
             },
                 icon: Icon(
                   Icons.camera_alt_rounded,
                   color: Colors.black,
                   size: 20,
                 ),
             ),
           ),
           SizedBox(
             width: 16,
           ),
           CircleAvatar(
             backgroundColor: Colors.black12,
             radius: 18,
             child: IconButton(onPressed: (){
             },
               icon: Icon(
                 Icons.edit,
                 color: Colors.black,
                 size: 20,
               ),
             ),
           ),
           SizedBox(
             width: 8,
           ),
         ],
       ),
       body: Padding(
         padding: const EdgeInsets.all(20),
         child: SingleChildScrollView(
           child: Column(
             crossAxisAlignment: CrossAxisAlignment.start,
             children: [
               Container(
                 height: 45,
                 decoration: BoxDecoration(
                   borderRadius: BorderRadius.circular(18),
                   color: Colors.black12,

                 ),

                 child: Row(
                   children: [
                     IconButton(onPressed: (){},
                         icon: Icon(
                           Icons.search,
                           size: 28,
                         ),
                     ),
                     Text(
                       'Search',
                       style: TextStyle(
                         fontSize: 18,
                       ),
                     ),
                   ],
                 ),

               ),

               Container(
                 height: 100,
                 child: ListView.separated(
                   shrinkWrap: true,
                   scrollDirection: Axis.horizontal,
                     itemBuilder: (context, index) => buildStoryItem(),
                   separatorBuilder: (context,index)=> SizedBox(
                     width: 15,
                   ),
                   itemCount: 6,
                 ),
               ),
               ListView.separated(
                   shrinkWrap: true,
                   physics: NeverScrollableScrollPhysics(),
                   itemBuilder: (context, index) => buildChatItem(users[index]),
                   itemCount: users.length,
                   separatorBuilder: (context,index) => SizedBox(
                     height:5,
                   ),
               )

             ],
           ),
         ),
       ),

    );
  }

  Widget buildChatItem(UserModel user) =>  Padding(
    padding: const EdgeInsetsDirectional.only(
        top: 20
    ),
    child: Row(
      children: [
        Stack(
          alignment: Alignment.bottomRight,
          children: [
            CircleAvatar(
              backgroundImage: NetworkImage('https://avatars.githubusercontent.com/u/94074275?v=4'),
              radius: 26,
            ),
            CircleAvatar(
              backgroundColor: Colors.white,
              radius: 8,
            ),
            CircleAvatar(
              backgroundColor: Colors.green,
              radius: 7,
            ),
          ],
        ),
        SizedBox(
          width: 8,
        ),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                '${user.name}',
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
                style: TextStyle(
                    fontSize: 14,
                    color: Colors.black,
                    fontWeight: FontWeight.w800
                ),
              ),
              SizedBox(
                height: 3,
              ),
              Text(
                '${user.text}',
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
                style: TextStyle(
                  fontSize: 14,
                  color: Colors.black,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsetsDirectional.only(
              top: 15
          ),
          child: Text(
            '${user.date}',
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
            style: TextStyle(
              fontSize: 15,
              color: Colors.black,
              fontWeight: FontWeight.w500,
            ),
          ),
        ),
      ],
    ),
  );
  Widget buildStoryItem ()=>     Container(
    width: 60,
    child: Column(
      children: [
        SizedBox(
          height: 15,
        ),

        Stack(
          alignment: Alignment.bottomRight,
          children: [
            CircleAvatar(
              backgroundImage: NetworkImage('https://avatars.githubusercontent.com/u/94074275?v=4'),
              radius: 26,
            ),
            CircleAvatar(
              backgroundColor: Colors.white,
              radius: 8,
            ),
            CircleAvatar(
              backgroundColor: Colors.green,
              radius: 7,
            ),
          ],
        ),
        SizedBox(
          height: 5,
        ),
        Text(
          'Mahmoud Hanafy',
          maxLines: 2,
          overflow: TextOverflow.ellipsis,
          style: TextStyle(
            fontSize: 12,
            color: Colors.black,
            fontWeight: FontWeight.w800,
          ),
        ),
      ],
    ),
  );
}
