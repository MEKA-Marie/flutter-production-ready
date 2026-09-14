enum TaskPriority { low, medium, high }

class Task {
  const Task({
    required this.id,
    required this.title,
    required this.category,
    required this.priority,
    required this.minutes,
    this.isCompleted = false,
  });

  final String id;
  final String title;
  final String category;
  final TaskPriority priority;
  final int minutes;
  final bool isCompleted;

  Task copyWith({bool? isCompleted}) => Task(
        id: id,
        title: title,
        category: category,
        priority: priority,
        minutes: minutes,
        isCompleted: isCompleted ?? this.isCompleted,
      );
}
