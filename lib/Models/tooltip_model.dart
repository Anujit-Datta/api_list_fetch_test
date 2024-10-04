class ToolTip {
  String? name;
  String? tooltip;

  ToolTip({this.name, this.tooltip});

  ToolTip.fromJson(Map<String, dynamic> json) {
    name = json['name'];
    tooltip = json['tooltip'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['name'] = name;
    data['tooltip'] = tooltip;
    return data;
  }
}
