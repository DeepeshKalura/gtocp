import 'dart:io';

import 'package:gtocp/gtocp.dart' as gtocp;
import 'package:args/args.dart';

void main(List<String> arguments) {
  // One Command will be there
  final parser = ArgParser()
    ..addFlag('help',
        abbr: 'h', negatable: false, help: 'Show this help message and exit.')
    ..addFlag('version',
        abbr: 'v',
        negatable: false,
        help: 'Show program\'s version number and exit.');

  ArgResults argResults = parser.parse(arguments);
  final paths = argResults.rest;
  gtocp.app(paths);
}
