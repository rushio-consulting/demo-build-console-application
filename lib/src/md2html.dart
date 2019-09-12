import 'dart:io';
import 'package:markdown/markdown.dart';

String customResult(final html)=> '''
<html>
<head>
<link href='https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css'/>
</head>
<body>
<div class='container'>
<button type="button" class="btn btn-primary">
  Notifications <span class="badge badge-light">4</span>
</button>
$html
</div>
</body>
</html>

''';
// Converti un fichier .md 
// return [html]
// 
Future<String> md2Html(String inputPath) async {
  String content = await File(inputPath).readAsString();
  return customResult(_callNativeLib(content));
} 

String _callNativeLib(String content) => markdownToHtml(content);

