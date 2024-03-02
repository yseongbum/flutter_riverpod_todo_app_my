import 'package:flutter/material.dart';
import 'package:flutter_riverpod_todo_app_my/utils/extensions.dart';

import 'common_container.dart';
 class DisplayListOfTasks extends StatelessWidget {
   const DisplayListOfTasks({super.key});

   final List<Task> tasks;


   @override
   Widget build(BuildContext context) {
     final deviceSize = context.deviceSize;

     return  CommonContainer(
       height: deviceSize.height*0.25,
       child: ListView.builder(
         shrinkWrap: true,
         itemCount: 8,
         padding: EdgeInsets.zero,
         itemBuilder: (ctx, index) {
           return const Text('Home');
         },
       ),
     );
   }
 }
