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

  // adding commands
  parser.addCommand(gtocp.createProjectCommand).addFlag('help',
      abbr: 'h',
      negatable: false,
      help: 'Create a new project idea with the given techstack');
  parser.addCommand(gtocp.gnerateRandomTechStackCommand)
    ..addFlag('help',
        abbr: 'h', negatable: false, help: 'Generate a random techstack')
    ..addOption('name', abbr: 'pr', help: 'Name of the project')
    ..addOption('describe',
        abbr: 'd', help: 'Describe the project you are going to build');

  ArgResults argResults = parser.parse(arguments);
  final command = argResults.command;

  gtocp.app(command, argResults);
}
