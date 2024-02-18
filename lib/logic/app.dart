import 'package:args/args.dart';

import '../utils/commands.dart';

void toolInfoMessage() {
  print('Usage: gtocp [options] COMMAND\n');
  print('Provide a random techstack for the developer to build their project');
  print("\n");
  print('Commands:');
  print('$createProjectCommand: Create a new project with the given techstack');
  print('$gnerateRandomTechStackCommand: Generate a random techstack');
  print("\n");
  print('Options:');
  print('  -h, --help: Show this help message and exit.');
  print('  -v, --version: Show program\'s version number and exit.');
  print('  -o, --output: Output file name.');
}

Future<void> app(ArgResults? commands, ArgResults results) async {
  if (commands == null) {
    toolInfoMessage();
    return;
  } else {
    switch (commands.name) {
      case createProjectCommand:
        print('Create a new project with the given techstack');
        if (results['name'] != null) {
          print(results['name']);
        }
        break;
      case gnerateRandomTechStackCommand:
        print('Generate a random techstack');
        break;
      default:
        toolInfoMessage();
    }
  }
}
