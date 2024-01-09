import 'dart:convert';

BannerModel bannerModelFromJson(String str) => BannerModel.fromJson(json.decode(str));

String bannerModelToJson(BannerModel data) => json.encode(data.toJson());

class BannerModel {
    List<Datum> data;

    BannerModel({
        required this.data,
    });

    factory BannerModel.fromJson(Map<String, dynamic> json) => BannerModel(
        data: List<Datum>.from(json["data"].map((x) => Datum.fromJson(x))),
    );

    Map<String, dynamic> toJson() => {
        "data": List<dynamic>.from(data.map((x) => x.toJson())),
    };
}

class Datum {
    int id;
    String type;
    String title;
    String description;
    String imageUrl;
    int status;
    String statusText;
    dynamic howToUse;
    dynamic termsAndCondition;
    String? url;
    DateTime startDate;
    DateTime endDate;
    int? standingAvailable;
    String? standingAvailableText;
    DateTime createdAt;
    String? whatsapp;
    DateTime? eventDate;
    String? openGate;
    int? reservationType;
    String? reservationTypeText;
    int? availabilityType;
    String? availabilityTypeText;
    int? isPromoted;
    String? isPromotedText;
    bool? isPriceUploaded;
    int reservationPaymentType;
    String reservationPaymentTypeText;
    int isSoldOut;
    int isSoldOutStanding;
    dynamic credit;
    dynamic sponsor;
    String? generalAdmissionUrl;
    dynamic inclusionList;
    bool useAffiliatorCode;
    dynamic maxStandingCapacity;
    dynamic talentDescriptionUrl;
    bool isUsingTicket;
    dynamic houseRulesUrl;
    dynamic location;
    List<String> tags;

    Datum({
        required this.id,
        required this.type,
        required this.title,
        required this.description,
        required this.imageUrl,
        required this.status,
        required this.statusText,
        required this.howToUse,
        required this.termsAndCondition,
        required this.url,
        required this.startDate,
        required this.endDate,
        required this.standingAvailable,
        required this.standingAvailableText,
        required this.createdAt,
        required this.whatsapp,
        required this.eventDate,
        required this.openGate,
        required this.reservationType,
        required this.reservationTypeText,
        required this.availabilityType,
        required this.availabilityTypeText,
        required this.isPromoted,
        required this.isPromotedText,
        required this.isPriceUploaded,
        required this.reservationPaymentType,
        required this.reservationPaymentTypeText,
        required this.isSoldOut,
        required this.isSoldOutStanding,
        required this.credit,
        required this.sponsor,
        required this.generalAdmissionUrl,
        required this.inclusionList,
        required this.useAffiliatorCode,
        required this.maxStandingCapacity,
        required this.talentDescriptionUrl,
        required this.isUsingTicket,
        required this.houseRulesUrl,
        required this.location,
        required this.tags,
    });

    factory Datum.fromJson(Map<String, dynamic> json) => Datum(
        id: json["id"],
        type: json["type"],
        title: json["title"],
        description: json["description"],
        imageUrl: json["image_url"],
        status: json["status"],
        statusText: json["status_text"],
        howToUse: json["how_to_use"],
        termsAndCondition: json["terms_and_condition"],
        url: json["url"],
        startDate: DateTime.parse(json["start_date"]),
        endDate: DateTime.parse(json["end_date"]),
        standingAvailable: json["standing_available"],
        standingAvailableText: json["standing_available_text"],
        createdAt: DateTime.parse(json["created_at"]),
        whatsapp: json["whatsapp"],
        eventDate: json["event_date"] == null ? null : DateTime.parse(json["event_date"]),
        openGate: json["open_gate"],
        reservationType: json["reservation_type"],
        reservationTypeText: json["reservation_type_text"],
        availabilityType: json["availability_type"],
        availabilityTypeText: json["availability_type_text"],
        isPromoted: json["is_promoted"],
        isPromotedText: json["is_promoted_text"],
        isPriceUploaded: json["is_price_uploaded"],
        reservationPaymentType: json["reservation_payment_type"],
        reservationPaymentTypeText: json["reservation_payment_type_text"],
        isSoldOut: json["is_sold_out"],
        isSoldOutStanding: json["is_sold_out_standing"],
        credit: json["credit"],
        sponsor: json["sponsor"],
        generalAdmissionUrl: json["general_admission_url"],
        inclusionList: json["inclusion_list"],
        useAffiliatorCode: json["use_affiliator_code"],
        maxStandingCapacity: json["max_standing_capacity"],
        talentDescriptionUrl: json["talent_description_url"],
        isUsingTicket: json["is_using_ticket"],
        houseRulesUrl: json["house_rules_url"],
        location: json["location"],
        tags: List<String>.from(json["tags"].map((x) => x)),
    );

    Map<String, dynamic> toJson() => {
        "id": id,
        "type": type,
        "title": title,
        "description": description,
        "image_url": imageUrl,
        "status": status,
        "status_text": statusText,
        "how_to_use": howToUse,
        "terms_and_condition": termsAndCondition,
        "url": url,
        "start_date": startDate.toIso8601String(),
        "end_date": endDate.toIso8601String(),
        "standing_available": standingAvailable,
        "standing_available_text": standingAvailableText,
        "created_at": createdAt.toIso8601String(),
        "whatsapp": whatsapp,
        "event_date": eventDate?.toIso8601String(),
        "open_gate": openGate,
        "reservation_type": reservationType,
        "reservation_type_text": reservationTypeText,
        "availability_type": availabilityType,
        "availability_type_text": availabilityTypeText,
        "is_promoted": isPromoted,
        "is_promoted_text": isPromotedText,
        "is_price_uploaded": isPriceUploaded,
        "reservation_payment_type": reservationPaymentType,
        "reservation_payment_type_text": reservationPaymentTypeText,
        "is_sold_out": isSoldOut,
        "is_sold_out_standing": isSoldOutStanding,
        "credit": credit,
        "sponsor": sponsor,
        "general_admission_url": generalAdmissionUrl,
        "inclusion_list": inclusionList,
        "use_affiliator_code": useAffiliatorCode,
        "max_standing_capacity": maxStandingCapacity,
        "talent_description_url": talentDescriptionUrl,
        "is_using_ticket": isUsingTicket,
        "house_rules_url": houseRulesUrl,
        "location": location,
        "tags": List<dynamic>.from(tags.map((x) => x)),
    };
}
