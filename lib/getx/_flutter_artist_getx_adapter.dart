part of '../flutter_artist_getx_adapter.dart';

class FlutterArtistGetxAdapter
    with ProgressMixin, SnackbarMixin
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
