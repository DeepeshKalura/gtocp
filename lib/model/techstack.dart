class Frontend {
    final String applicationTypes;  // web, mobile, desktop, firmware etc 
    final String language;   
    final String framework;
}

class Backend {
    final String language;
    final String framework;
    final String server; // Only things API will be created
}

class Database {
    final String local; // caching the databse
    final String server;
    final String type; // SQL, NoSQL etc
}

class Testing {
    final String types; // Unit, Integration, System, Acceptance etc
    final String tools; // JUnit, Mockito, Selenium etc
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
}
