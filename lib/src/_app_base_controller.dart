part of '../flutter_artist_getx_adapter.dart';

class AppBaseController extends GetxController {
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

  void showErrorSnackBar({
    required String message,
    required List<String>? errorDetails,
    Duration duration = const Duration(seconds: 4),
  }) {
    Get.closeCurrentSnackbar(); // TODO
    //
    Get.showSnackbar(
      GetSnackBar(
        padding: const EdgeInsets.all(5),
        messageText: Theme(
          data: ThemeData().copyWith(dividerColor: Colors.transparent),
          child: ExpansionTile(
            initiallyExpanded: true,
            expandedCrossAxisAlignment: CrossAxisAlignment.start,
            tilePadding: const EdgeInsets.all(0),
            dense: true,
            visualDensity: const VisualDensity(
              vertical: -3,
              horizontal: -3,
            ),
            leading: const Icon(
              Icons.error,
              color: Colors.red,
            ),
            title: Text(
              message,
              style: const TextStyle(
                color: Colors.white,
                fontSize: 13,
              ),
            ),
            children: errorDetails == null || errorDetails!.isEmpty
                ? []
                : errorDetails
                    .map(
                      (errorDetail) => ListTile(
                        contentPadding: EdgeInsets.zero,
                        dense: true,
                        visualDensity: const VisualDensity(
                          vertical: -3,
                          horizontal: -3,
                        ),
                        leading: const Padding(
                          padding: EdgeInsets.only(left: 10),
                          child: Icon(
                            Icons.arrow_circle_right_outlined,
                            color: Colors.white,
                            size: 16,
                          ),
                        ),
                        title: Text(
                          errorDetail,
                          style: const TextStyle(
                            color: Colors.white,
                            fontSize: 12,
                          ),
                        ),
                      ),
                    )
                    .toList(),
          ),
        ),
        duration: duration,
      ),
    );
  }

  void showMessageSnackBar({
    required String message,
    Duration duration = const Duration(seconds: 4),
  }) {
    Get.closeCurrentSnackbar();
    //
    Get.showSnackbar(
      GetSnackBar(
        padding: const EdgeInsets.all(5),
        messageText: Theme(
          data: ThemeData().copyWith(dividerColor: Colors.transparent),
          child: ExpansionTile(
            initiallyExpanded: true,
            expandedCrossAxisAlignment: CrossAxisAlignment.start,
            tilePadding: const EdgeInsets.all(0),
            dense: true,
            visualDensity: const VisualDensity(
              vertical: -3,
              horizontal: -3,
            ),
            leading: const Icon(
              Icons.info_outlined,
              color: Colors.blue,
            ),
            title: Text(
              message,
              style: const TextStyle(
                color: Colors.white,
                fontSize: 13,
              ),
            ),
          ),
        ),
        duration: duration,
      ),
    );
  }

  @override
  void showSavedSnackBar({Duration duration = const Duration(seconds: 2)}) {
    Get.closeCurrentSnackbar();
    //
    Get.showSnackbar(
      GetSnackBar(
        padding: const EdgeInsets.all(5),
        backgroundColor: Colors.transparent,
        messageText: Theme(
          data: ThemeData().copyWith(
            dividerColor: Colors.transparent,
            canvasColor: Colors.transparent,
          ),
          child: SizedBox(
            height: 60,
            child: Center(
              child: Container(
                padding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                width: 220,
                decoration: BoxDecoration(
                  color: Colors.green.shade300,
                  borderRadius: BorderRadius.only(
                    topRight: Radius.circular(20.0),
                    bottomRight: Radius.circular(20.0),
                    topLeft: Radius.circular(20.0),
                    bottomLeft: Radius.circular(20.0),
                  ),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.check,
                      color: Colors.white,
                    ),
                    SizedBox(width: 5),
                    Text(
                      "Successfully Saved!",
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
        ),
        duration: duration,
      ),
    );
  }

  @override
  void showDeletedSnackBar({Duration duration = const Duration(seconds: 2)}) {
    Get.closeCurrentSnackbar();
    //
    Get.showSnackbar(
      GetSnackBar(
        padding: const EdgeInsets.all(5),
        backgroundColor: Colors.transparent,
        messageText: Theme(
          data: ThemeData().copyWith(
            dividerColor: Colors.transparent,
            canvasColor: Colors.transparent,
          ),
          child: SizedBox(
            height: 60,
            child: Center(
              child: Container(
                padding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                width: 220,
                decoration: BoxDecoration(
                  color: Colors.deepOrange.shade200,
                  borderRadius: BorderRadius.only(
                    topRight: Radius.circular(20.0),
                    bottomRight: Radius.circular(20.0),
                    topLeft: Radius.circular(20.0),
                    bottomLeft: Radius.circular(20.0),
                  ),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.check,
                      color: Colors.white,
                    ),
                    SizedBox(width: 5),
                    Text(
                      "Successfully Deleted!",
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
        ),
        duration: duration,
      ),
    );
  }
}
