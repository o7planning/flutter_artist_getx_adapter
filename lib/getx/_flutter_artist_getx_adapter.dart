part of '../flutter_artist_getx_adapter.dart';

class FlutterArtistGetxAdapter
    with ProgressMixin, SnackBarMixin
    implements FlutterArtistAdapter {
  @override
  BuildContext getCurrentContext() {
    return Get.context!;
  }

  @override
  void navigationBack() {
    Get.back();
  }
}
