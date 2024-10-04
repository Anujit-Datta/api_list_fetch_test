import 'package:api_list_fetch_test/Models/tooltip_model.dart';

class Features {
  List<ToolTip> tooltips=[];
  int? onboardingFee;

  Features({required this.tooltips, this.onboardingFee});

  Features.fromJson(Map<String, dynamic> json) {

    tooltips.clear();
    json['list'].forEach((key, value) {
      tooltips.add(ToolTip.fromJson(value));
    });
    onboardingFee = json['onboarding_fee'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['list'] = {};
    for(ToolTip tooltip in tooltips){
      data['list'][tooltip.name] = tooltip.toJson();
    }
    data['onboarding_fee'] = onboardingFee;
    return data;
  }
}
