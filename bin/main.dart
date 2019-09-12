import 'dart:io';

import 'package:mon_application/src/md2html.dart';
import 'package:mon_application/src/options.dart';

main(List<String> args) async {
  var options = parseOptions(args);
  String path = options.inputPath;
  String html = await md2Html(path);
  await File("result.html").writeAsString(html);
}
