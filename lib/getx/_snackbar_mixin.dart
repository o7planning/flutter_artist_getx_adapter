part of '../flutter_artist_getx_adapter.dart';

mixin SnackbarMixin {
  void showErrorSnackbar({
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

  void showMessageSnackbar({
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
}
