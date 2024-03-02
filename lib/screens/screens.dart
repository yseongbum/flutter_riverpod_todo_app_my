export 'home_screen.dart';



/*
플러터(Flutter)에서 "export"는 다른 파일이나 패키지에서 현재 파일의 기능이나 클래스 등을 사용할 수 있도록 하는 키워드입니다. 이는 코드의 모듈화와 재사용성을 증가시키는 데 도움이 됩니다.

일반적으로 Dart 언어에서 export는 다른 Dart 파일에서 현재 파일의 내용을 가져다 사용할 수 있도록 하는 역할을 합니다. 다른 파일에서 현재 파일에 있는 함수, 클래스, 변수 등을 필요한 경우 export를 사용하여 공개(public)할 수 있습니다.

예를 들어, 다음과 같이 사용할 수 있습니다:

dart
Copy code
// 파일: utils.dart
void someFunction() {
// 함수 내용
}

// 파일: main.dart
export 'utils.dart';

void main() {
someFunction(); // utils.dart 파일의 함수를 사용할 수 있음
}
위의 예제에서 main.dart 파일에서 export 'utils.dart';를 통해 utils.dart 파일의 내용을 가져와 사용할 수 있게 되었습니다.

이러한 모듈화된 접근은 코드의 유지보수성과 가독성을 향상시키며, 여러 파일 간의 협업이나 코드 재사용을 쉽게 만듭니다.

 */