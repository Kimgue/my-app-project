import 'package:flutter/material.dart';

class AppUtils {
  // 거리 포맷팅 (미터 → 킬로미터)
  static String formatDistance(int meters) {
    if (meters < 1000) {
      return '${meters}m';
    } else {
      double km = meters / 1000;
      return '${km.toStringAsFixed(1)}km';
    }
  }

  // 평점 포맷팅
  static String formatRating(double rating) {
    return rating.toStringAsFixed(1);
  }

  // 가격 포맷팅
  static String formatPrice(int price) {
    if (price < 10000) {
      return '${price}원';
    } else {
      double tenThousand = price / 10000;
      return '${tenThousand.toStringAsFixed(1)}만원';
    }
  }

  // 스낵바 표시
  static void showSnackBar(BuildContext context, String message) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(content: Text(message), duration: const Duration(seconds: 2)),
    );
  }

  // 로딩 다이얼로그 표시
  static void showLoadingDialog(BuildContext context) {
    showDialog(
      context: context,
      barrierDismissible: false,
      builder: (context) => const Center(child: CircularProgressIndicator()),
    );
  }

  // 로딩 다이얼로그 닫기
  static void hideLoadingDialog(BuildContext context) {
    Navigator.of(context).pop();
  }
}
