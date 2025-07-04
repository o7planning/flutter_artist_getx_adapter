part of '../flutter_artist_getx_adapter.dart';

class FlutterArtistGetxLocaleAdapter implements ILocaleAdapter {
  final List<Locale> _supportedLocales;

  FlutterArtistGetxLocaleAdapter({required List<Locale> supportedLocales})
      : _supportedLocales = supportedLocales;

  @override
  Future<void> updateLocale(Locale locale) async {
    await Get.updateLocale(locale);
  }

  @override
  List<Locale> supportedLocales() {
    return _supportedLocales;
  }
}
