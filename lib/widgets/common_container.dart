import 'package:flutter/material.dart';
import 'package:flutter_riverpod_todo_app_my/utils/utils.dart';

class CommonContainer extends StatelessWidget {
  const CommonContainer({super.key, this.child, this.height});
  final Widget? child;
  final double? height;

  @override
  Widget build(BuildContext context) {
    final deviceSize = context.deviceSize;
    final colors = context.colorScheme;

    return Container(
        width: deviceSize.width,
        height: height,
        ///위의 패딩값인 상하좌우 20뺀 넓이
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: context.colorScheme.primaryContainer,
        ),
        child:child ,
    );
  }
}
