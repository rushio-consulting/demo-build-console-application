import 'package:build_cli_annotations/build_cli_annotations.dart';

part 'options.g.dart';

@CliOptions()
class Options {
  @CliOption(name: 'inputPath' , abbr: 'i', help: 'Required. Le path vers le .md')
  final String inputPath;

  Options(this.inputPath);
}
