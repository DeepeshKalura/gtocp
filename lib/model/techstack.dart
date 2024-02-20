class Frontend {
  final String applicationTypes; // web, mobile, desktop, firmware etc // enum
  final String language;
  final String framework;

  Frontend(
      {required this.applicationTypes,
      required this.language,
      required this.framework});
}

class Backend {
  final String language;
  final String framework;
  final String server;

  Backend(
      {required this.language,
      required this.framework,
      required this.server}); // Only things API will be created
}

class Database {
  final String local; // caching the databse
  final String server;
  final String type;

  Database(
      {required this.local,
      required this.server,
      required this.type}); // SQL, NoSQL etc // enum
}

class Testing {
  final String types; // Unit, Integration, System, Acceptance etc
  final String tools;

  Testing(
      {required this.types,
      required this.tools}); // JUnit, Mockito, Selenium etc
}

/// Represents a technology stack for a project.
class TechStack {
  /// The frontend technology used in the project.
  final Frontend frontend;

  /// The backend technology used in the project.
  final Backend backend;

  /// The database technology used in the project.
  final Database database;

  /// The DevOps tool used in the project (e.g., Jenkins, Docker, Kubernetes).
  final String devopsTool;

  /// The testing framework used in the project.
  final Testing testing;

  /// The cloud platform used for deployment.
  final String cloud;

  /// The criteria for determining the success of the project.
  final String sucessCriteria;

  /// The deadline for completing the project.
  final DateTime deadline;

  TechStack(
      {required this.frontend,
      required this.backend,
      required this.database,
      required this.devopsTool,
      required this.testing,
      required this.cloud,
      required this.sucessCriteria,
      required this.deadline});
}
