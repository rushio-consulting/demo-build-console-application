// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'options.dart';

// **************************************************************************
// CliGenerator
// **************************************************************************

Options _$parseOptionsResult(ArgResults result) =>
    Options(result['inputPath'] as String);

ArgParser _$populateOptionsParser(ArgParser parser) => parser
  ..addOption('inputPath', abbr: 'i', help: 'Required. Le path vers le .md');

final _$parserForOptions = _$populateOptionsParser(ArgParser());

Options parseOptions(List<String> args) {
  final result = _$parserForOptions.parse(args);
  return _$parseOptionsResult(result);
}
