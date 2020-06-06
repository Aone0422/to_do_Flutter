class TodoDto {
  const TodoDto({
    this.id,
    this.title,
    this.active,
    this.detail,
  });

  factory TodoDto.fromJson(Map<String, dynamic> json) {
    return TodoDto(
      id: json['id'] as String,
      title: json['title'] as String,
      active: json['active'] as bool,
      detail: json['detail'] as String,
    );
  }

  final String id;
  final String title;
  final bool active;
  final String detail;
}
