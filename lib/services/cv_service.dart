import 'package:dio/dio.dart';
import 'package:lesson_89/services/permission_service.dart';
import 'package:path_provider/path_provider.dart';

class CvService {
  Future<void> downloadCv(String url) async {
    try {
      if (await PermissionService.requestStoragePermission()) {
        final dio = Dio();
        final dir = await getApplicationDocumentsDirectory();
        final fullPath = '${dir.path}/cv.pdf';
        print("PDF fayl yuklanmoqda...");
        await dio.download(
          url,
          fullPath,
          onReceiveProgress: (count, total) {
            print((count / total) * 100);
          },
        );

        print("PDF fayl yuklandi $fullPath");
      } else {
        print("Ruhsat berilmagan");
      }
    } catch (e) {
      print(e.toString());
    }
  }
}
