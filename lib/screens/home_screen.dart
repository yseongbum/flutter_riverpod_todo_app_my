import 'package:flutter/material.dart';
import 'package:flutter_riverpod_todo_app_my/utils/utils.dart';
import 'package:flutter_riverpod_todo_app_my/widgets/common_container.dart';
import 'package:flutter_riverpod_todo_app_my/widgets/display_white_text.dart';
import 'package:gap/gap.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final deviceSize = context.deviceSize;
    final colors = context.colorScheme;

    ///extensions.dart파일에 있는 ColorScheme get colorScheme => _theme.colorScheme; 이 구문이 있었기에 위처럼 할수 있게 됨\
    ///deviceSize도 더욱 간소화된 코드로 구성이 가능한거지
    ///아래의 textTheme의 경우에도 위에 변수 생성하면 간소화할 수 있겠지.

    return Scaffold(
        body: Stack(
      children: [
        Column(
          children: [
            Container(
              height: deviceSize.height * 0.3,
              width: deviceSize.width,
              color: colors.primary,
              child: const Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  DisplayWhiteText(
                    text: 'Aug 7,2023',
                    fontSize: 20,
                    fontWeight: FontWeight.normal,
                  ),
                  DisplayWhiteText(
                    text: 'My Todo List',
                    fontSize: 40,
                  ),
                ],
              ),
            ),
          ],
        ),
        Positioned(
          top: 170,
          left: 0,
          right: 0,
          child: SingleChildScrollView(
            ///이를 통해서 내부 listview가 스크롤이 가능해짐
            ///아래의 경우 항상 스크롤가능하게 했는데 정확히 어떤 기능인지는 모름
            ///아래 자식 위젯의 경우 20의 padding 안에 들어가야 한다는 것을 알 수 있지.
            physics: const AlwaysScrollableScrollPhysics(),
            padding: const EdgeInsets.all(20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              ///stretch를 해주면 start같은 느낌이긴 한데 text 위젯은 그대로 그냥 start와 같은 느낌인데
              ///버튼은 패딩 내 벜위로 쫙 땡겨져서 넓어지는 느낌
              children: [
                CommonContainer(
                  height: deviceSize.height*0.3,
                  child: ListView.builder(
                    ///단순 listview를 만들어주는것. 리스트 뷰
                    ///shrinkWrap을 true로 설정하면 ListView.builder의 높이가 자식 위젯들의 콘텐츠에 맞춰져서 적절하게 축소됩니다.
                    ///만약 shrinkWrap을 false로 설정하면 ListView는 자식 위젯들의 크기에 관계없이 자체적으로 확장될 것입니다.
                    ///shrinkWrap은 주로 ListView를 다른 스크롤 가능한 위젯 안에 넣을 때나, ListView가 화면에서 차지하는 공간을 최소화해야 할 때 유용합니다.
                    shrinkWrap: true,
                    itemCount: 8,
                    padding: EdgeInsets.zero,
                    itemBuilder: (ctx, index) {
                      return const Text('Home');
                    },
                  ),
                ),
                const Gap(20),
                Text(
                  'Completed',
                  style: context.textTheme.headlineMedium,
                ),
                const Gap(20),
                CommonContainer(
                  height: deviceSize.height*0.25,
                  child: ListView.builder(
                    shrinkWrap: true,
                    itemCount: 8,
                    padding: EdgeInsets.zero,
                    itemBuilder: (ctx, index) {
                      return const Text('Home');
                    },
                  ),
                ),
                const Gap(20),
                ElevatedButton(
                  onPressed: () {},
                  child: const Padding(
                    padding: EdgeInsets.all(8.0),
                    child: DisplayWhiteText(text: 'Add New Task'),
                  ),
                )
              ],
            ),
          ),
        )
      ],
    ));
  }
}

//app dependencies that we will use in this project
