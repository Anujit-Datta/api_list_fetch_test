import 'feature_model.dart';

class Packages {
  int? id;
  String? subscriptionType;
  String? subscriptionLabel;
  int? price;
  bool? aiModel;
  bool? isVisible;
  int? conversion;
  int? userAccess;
  int? accountIntegration;
  bool? supportAvailability;
  bool? instantResponses;
  bool? salesEnablement;
  bool? invoicingAndPricing;
  bool? leadScoring;
  bool? analyseDashboard;
  bool? bookingAndReservations;
  bool? customerSupport;
  bool? crmAndSalesManagement;
  Features? features;

  Packages({this.id, this.subscriptionType, this.subscriptionLabel, this.price, this.aiModel, this.isVisible, this.conversion, this.userAccess, this.accountIntegration, this.supportAvailability, this.instantResponses, this.salesEnablement, this.invoicingAndPricing, this.leadScoring, this.analyseDashboard, this.bookingAndReservations, this.customerSupport, this.crmAndSalesManagement, this.features});

  Packages.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    subscriptionType = json['subscription_type'];
    subscriptionLabel = json['Subscription_label'];
    price = json['price'];
    aiModel = json['ai_model'];
    isVisible = json['is_visible'];
    conversion = json['conversion'];
    userAccess = json['user_access'];
    accountIntegration = json['account_integration'];
    supportAvailability = json['support_availability'];
    instantResponses = json['instant_responses'];
    salesEnablement = json['sales_enablement'];
    invoicingAndPricing = json['invoicing_and_pricing'];
    leadScoring = json['lead_scoring'];
    analyseDashboard = json['analyse_dashboard'];
    bookingAndReservations = json['booking_and_reservations'];
    customerSupport = json['customer_support'];
    crmAndSalesManagement = json['crm_and_sales_management'];
    features = json['features'] != null ? Features.fromJson(json['features']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['subscription_type'] = subscriptionType;
    data['Subscription_label'] = subscriptionLabel;
    data['price'] = price;
    data['ai_model'] = aiModel;
    data['is_visible'] = isVisible;
    data['conversion'] = conversion;
    data['user_access'] = userAccess;
    data['account_integration'] = accountIntegration;
    data['support_availability'] = supportAvailability;
    data['instant_responses'] = instantResponses;
    data['sales_enablement'] = salesEnablement;
    data['invoicing_and_pricing'] = invoicingAndPricing;
    data['lead_scoring'] = leadScoring;
    data['analyse_dashboard'] = analyseDashboard;
    data['booking_and_reservations'] = bookingAndReservations;
    data['customer_support'] = customerSupport;
    data['crm_and_sales_management'] = crmAndSalesManagement;
    if (features != null) {
      data['features'] = features!.toJson();
    }
    return data;
  }
}


