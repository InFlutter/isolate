import 'package:url_launcher/url_launcher.dart';

class ProjectService {
  Future<void> launchUlrFunc(urlString) async {
    final Uri url = Uri.parse(urlString);

    if (!await launchUrl(url)) {
      throw ("URl topilmadi!");
    }
  }
}
