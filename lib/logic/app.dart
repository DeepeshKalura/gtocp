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

Future<void> app(List<String> paths) async {
  if (paths.isEmpty) {
    toolInfoMessage();
    return;
  } else {
    for (final path in paths) {
      print(path);
    }
  }
}
