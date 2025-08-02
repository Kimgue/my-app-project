class AppConstants {
  // 앱 정보
  static const String appName = '카페잇';
  static const String appDescription = '내 주변의 분위기 좋은 카페, 함께 나누는 이야기';

  // 네비게이션
  static const int homeIndex = 0;
  static const int mapIndex = 1;
  static const int reviewIndex = 2;
  static const int profileIndex = 3;

  // 검색 반경 (미터)
  static const int searchRadius = 1000;

  // 페이지네이션
  static const int pageSize = 20;

  // 이미지
  static const String defaultCafeImage = 'assets/images/default_cafe.png';

  // 애니메이션
  static const Duration defaultAnimationDuration = Duration(milliseconds: 300);

  // API
  static const String baseUrl = 'https://api.cafeit.com';
  static const Duration requestTimeout = Duration(seconds: 30);
}
