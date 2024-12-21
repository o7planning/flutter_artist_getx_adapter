part of '../flutter_artist_getx_adapter.dart';

mixin ProgressMixin {
  Future<dynamic> showOverlay({
    required Future<dynamic> Function() asyncFunction,
    double opacity = 0.2,
  }) async {
    return await Get.showOverlay(
      asyncFunction: asyncFunction,
      opacityColor: Colors.black,
      opacity: opacity,
      loadingWidget: const Center(
        child: CircularProgressIndicator(),
      ),
    );
  }

  bool isOverlaysOpen() {
    return Get.isOverlaysOpen;
  }

  void closeAllDialogs() {
    Get.closeAllDialogs();
  }
}
