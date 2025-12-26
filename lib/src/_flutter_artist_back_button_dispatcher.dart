part of '../flutter_artist_getx_adapter.dart';

// Google Search: How to use BackButtonDispatcher with Getx.
class FaBackButtonDispatcher extends RootBackButtonDispatcher {
  @override
  Future<bool> invokeCallback(Future<bool> defaultValue) async {
    // Implement your custom logic here
    // For example, show a confirmation dialog before exiting
    // if (Get.currentRoute == '/home') {
    // Example: only show dialog on home page
    bool? confirmExit = await Get.dialog<bool>(
      AlertDialog(
        title: const Text('Exit App?'),
        content: const Text('Do you want to exit the application?'),
        actions: <Widget>[
          TextButton(
            onPressed: () => Get.back(result: false),
            child: const Text('No'),
          ),
          TextButton(
            onPressed: () => Get.back(result: true),
            child: const Text('Yes'),
          ),
        ],
      ),
    );
    return confirmExit ?? false; // If dialog is dismissed, don't exit
    // }
    // Let GetX handle the default back button behavior for other routes
    //  return defaultValue;
  }
}
