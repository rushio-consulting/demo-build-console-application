import 'package:mon_application/src/md2html.dart';
import 'package:test/test.dart';

final htmlExpected = '''
<h1>Example Formation</h1>
<h2>Name</h2>
<p>Boris-Wilfried </p>
<pre><code>sudo developer-dart
</code></pre>
''';

void main() {
  test('md2html', () async {
    final path = '/Users/bwnyasse/gr/gitlab/rushio-consulting/formations/mon-application/doc/doc.md';
    final result = await md2Html(path);
    expect(result, htmlExpected);
  });
}
