class TutorialStep {
  final String title;
  final String instruction;
  final String? safetyNote;

  const TutorialStep({
    required this.title,
    required this.instruction,
    this.safetyNote,
  });
}

class Tutorial {
  final String id;
  final String title;
  final String description;
  final String category;
  final String icon;
  final List<TutorialStep> steps;

  const Tutorial({
    required this.id,
    required this.title,
    required this.description,
    required this.category,
    required this.icon,
    required this.steps,
  });
}
