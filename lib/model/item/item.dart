// To parse this JSON data, do
//
//     final item = itemFromJson(jsonString);

import 'dart:convert';

List<Item> itemFromJson(String str) =>
    List<Item>.from(json.decode(str).map((x) => Item.fromJson(x)));

String itemToJson(List<Item> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class Item {
  Item({
    this.id,
    this.catId,
    this.subCatId,
    this.itemTypeId,
    this.itemPriceTypeId,
    this.itemCurrencyId,
    this.itemLocationId,
    this.conditionOfItemId,
    this.dealOptionRemark,
    this.description,
    this.highlightInfo,
    this.price,
    this.dealOptionId,
    this.brand,
    this.businessMode,
    this.isSoldOut,
    this.title,
    this.address,
    this.lat,
    this.lng,
    this.status,
    this.addedDate,
    this.addedUserId,
    this.addedUserName,
    this.updatedDate,
    this.updatedUserId,
    this.updatedFlag,
    this.touchCount,
    this.favouriteCount,
    this.isPaid,
    this.isAvailable,
    this.isPreOrder,
    this.poStart,
    this.poEnd,
    this.poSlot,
    this.poDelivery,
    this.isHalal,
    this.weight,
    this.locationId,
    this.locationName,
    this.locationType,
    this.isFree,
    this.pickupTime,
    this.appearDuration,
    this.stock,
    this.isFood,
    this.addedDateStr,
    this.paidStatus,
    this.photoCount,
    this.defaultPhoto,
    this.category,
    this.subCategory,
    this.itemType,
    this.itemPriceType,
    this.itemCurrency,
    this.itemLocation,
    this.conditionOfItem,
    this.dealOption,
    this.user,
    this.isFavourited,
    this.isOwner,
    this.getAddress,
    this.getDelivery,
  });

  final String id;
  final CatId catId;
  final String subCatId;
  final String itemTypeId;
  final String itemPriceTypeId;
  final String itemCurrencyId;
  final String itemLocationId;
  final String conditionOfItemId;
  final String dealOptionRemark;
  final String description;
  final String highlightInfo;
  final String price;
  final String dealOptionId;
  final Brand brand;
  final String businessMode;
  final String isSoldOut;
  final String title;
  final String address;
  final String lat;
  final String lng;
  final String status;
  final DateTime addedDate;
  final String addedUserId;
  final String addedUserName;
  final DateTime updatedDate;
  final EdUserId updatedUserId;
  final String updatedFlag;
  final String touchCount;
  final String favouriteCount;
  final String isPaid;
  final String isAvailable;
  final String isPreOrder;
  final dynamic poStart;
  final dynamic poEnd;
  final String poSlot;
  final dynamic poDelivery;
  final String isHalal;
  final String weight;
  final String locationId;
  final LocationName locationName;
  final LocationType locationType;
  final String isFree;
  final PickupTime pickupTime;
  final AppearDuration appearDuration;
  final String stock;
  final String isFood;
  final AddedDateStr addedDateStr;
  final PaidStatus paidStatus;
  final String photoCount;
  final Default defaultPhoto;
  final Category category;
  final SubCategory subCategory;
  final ConditionOfItem itemType;
  final ConditionOfItem itemPriceType;
  final ItemCurrency itemCurrency;
  final ItemLocation itemLocation;
  final ConditionOfItem conditionOfItem;
  final ConditionOfItem dealOption;
  final User user;
  final String isFavourited;
  final String isOwner;
  final dynamic getAddress;
  final dynamic getDelivery;

  factory Item.fromJson(Map<String, dynamic> json) => Item(
        id: json["id"],
        catId: catIdValues.map[json["cat_id"]],
        subCatId: json["sub_cat_id"],
        itemTypeId: json["item_type_id"],
        itemPriceTypeId: json["item_price_type_id"],
        itemCurrencyId: json["item_currency_id"],
        itemLocationId: json["item_location_id"],
        conditionOfItemId: json["condition_of_item_id"],
        dealOptionRemark: json["deal_option_remark"],
        description: json["description"],
        highlightInfo: json["highlight_info"],
        price: json["price"],
        dealOptionId: json["deal_option_id"],
        brand: brandValues.map[json["brand"]],
        businessMode: json["business_mode"],
        isSoldOut: json["is_sold_out"],
        title: json["title"],
        address: json["address"],
        lat: json["lat"],
        lng: json["lng"],
        status: json["status"],
        addedDate: DateTime.parse(json["added_date"]),
        addedUserId: json["added_user_id"],
        addedUserName: json["added_user_name"],
        updatedDate: DateTime.parse(json["updated_date"]),
        updatedUserId: edUserIdValues.map[json["updated_user_id"]],
        updatedFlag: json["updated_flag"],
        touchCount: json["touch_count"],
        favouriteCount: json["favourite_count"],
        isPaid: json["is_paid"],
        isAvailable: json["is_available"],
        isPreOrder: json["is_pre_order"],
        poStart: json["po_start"],
        poEnd: json["po_end"],
        poSlot: json["po_slot"],
        poDelivery: json["po_delivery"],
        isHalal: json["is_halal"],
        weight: json["weight"],
        locationId: json["location_id"],
        locationName: locationNameValues.map[json["location_name"]],
        locationType: locationTypeValues.map[json["location_type"]],
        isFree: json["is_free"],
        pickupTime: pickupTimeValues.map[json["pickup_time"]],
        appearDuration: appearDurationValues.map[json["appear_duration"]],
        stock: json["stock"],
        isFood: json["is_food"],
        addedDateStr: addedDateStrValues.map[json["added_date_str"]],
        paidStatus: paidStatusValues.map[json["paid_status"]],
        photoCount: json["photo_count"],
        defaultPhoto: Default.fromJson(json["default_photo"]),
        category: Category.fromJson(json["category"]),
        subCategory: SubCategory.fromJson(json["sub_category"]),
        itemType: ConditionOfItem.fromJson(json["item_type"]),
        itemPriceType: ConditionOfItem.fromJson(json["item_price_type"]),
        itemCurrency: ItemCurrency.fromJson(json["item_currency"]),
        itemLocation: ItemLocation.fromJson(json["item_location"]),
        conditionOfItem: ConditionOfItem.fromJson(json["condition_of_item"]),
        dealOption: ConditionOfItem.fromJson(json["deal_option"]),
        user: User.fromJson(json["user"]),
        isFavourited: json["is_favourited"],
        isOwner: json["is_owner"],
        getAddress: json["get_address"],
        getDelivery: json["get_delivery"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "cat_id": catIdValues.reverse[catId],
        "sub_cat_id": subCatId,
        "item_type_id": itemTypeId,
        "item_price_type_id": itemPriceTypeId,
        "item_currency_id": itemCurrencyId,
        "item_location_id": itemLocationId,
        "condition_of_item_id": conditionOfItemId,
        "deal_option_remark": dealOptionRemark,
        "description": description,
        "highlight_info": highlightInfo,
        "price": price,
        "deal_option_id": dealOptionId,
        "brand": brandValues.reverse[brand],
        "business_mode": businessMode,
        "is_sold_out": isSoldOut,
        "title": title,
        "address": address,
        "lat": lat,
        "lng": lng,
        "status": status,
        "added_date": addedDate.toIso8601String(),
        "added_user_id": addedUserId,
        "added_user_name": addedUserName,
        "updated_date": updatedDate.toIso8601String(),
        "updated_user_id": edUserIdValues.reverse[updatedUserId],
        "updated_flag": updatedFlag,
        "touch_count": touchCount,
        "favourite_count": favouriteCount,
        "is_paid": isPaid,
        "is_available": isAvailable,
        "is_pre_order": isPreOrder,
        "po_start": poStart,
        "po_end": poEnd,
        "po_slot": poSlot,
        "po_delivery": poDelivery,
        "is_halal": isHalal,
        "weight": weight,
        "location_id": locationId,
        "location_name": locationNameValues.reverse[locationName],
        "location_type": locationTypeValues.reverse[locationType],
        "is_free": isFree,
        "pickup_time": pickupTimeValues.reverse[pickupTime],
        "appear_duration": appearDurationValues.reverse[appearDuration],
        "stock": stock,
        "is_food": isFood,
        "added_date_str": addedDateStrValues.reverse[addedDateStr],
        "paid_status": paidStatusValues.reverse[paidStatus],
        "photo_count": photoCount,
        "default_photo": defaultPhoto.toJson(),
        "category": category.toJson(),
        "sub_category": subCategory.toJson(),
        "item_type": itemType.toJson(),
        "item_price_type": itemPriceType.toJson(),
        "item_currency": itemCurrency.toJson(),
        "item_location": itemLocation.toJson(),
        "condition_of_item": conditionOfItem.toJson(),
        "deal_option": dealOption.toJson(),
        "user": user.toJson(),
        "is_favourited": isFavourited,
        "is_owner": isOwner,
        "get_address": getAddress,
        "get_delivery": getDelivery,
      };
}

enum AddedDateStr { THE_1_AGO, THE_2_YEARS_AGO }

final addedDateStrValues = EnumValues({
  "1  ago": AddedDateStr.THE_1_AGO,
  "2 years ago": AddedDateStr.THE_2_YEARS_AGO
});

enum AppearDuration { EMPTY, THE_5_HARI }

final appearDurationValues =
    EnumValues({"": AppearDuration.EMPTY, "5 hari": AppearDuration.THE_5_HARI});

enum Brand { EMPTY, TANGOES, TANGO }

final brandValues = EnumValues(
    {"": Brand.EMPTY, "Tango": Brand.TANGO, "Tangoes": Brand.TANGOES});

enum CatId {
  CATE2_F7_EE7_F7317_CEDDF4395_F82665_B5_A86,
  CATB8454_D0_CEC7_A96_A6_E6_F78332753014_C6,
  CATA497304389495_AB7_C262383923243180,
  CAT445639833_DB3_EFF8_B6_CDB5510_AA39_FAA,
  CAT5_DFC0138547_B926_DCCC5_EE269_B1_CD042,
  CATFA070_DD5_CC2_A2_C9_C6196159_F85480_FF7,
  CAT3988_C9_AFAD482_DB9_A872_EE5_C19_C34_FBB,
  CAT3_ED818_F44_F3_A3_E3_D49_A2798_B4_C51_F5_B8,
  EMPTY
}

final catIdValues = EnumValues({
  "cat3988c9afad482db9a872ee5c19c34fbb":
      CatId.CAT3988_C9_AFAD482_DB9_A872_EE5_C19_C34_FBB,
  "cat3ed818f44f3a3e3d49a2798b4c51f5b8":
      CatId.CAT3_ED818_F44_F3_A3_E3_D49_A2798_B4_C51_F5_B8,
  "cat445639833db3eff8b6cdb5510aa39faa":
      CatId.CAT445639833_DB3_EFF8_B6_CDB5510_AA39_FAA,
  "cat5dfc0138547b926dccc5ee269b1cd042":
      CatId.CAT5_DFC0138547_B926_DCCC5_EE269_B1_CD042,
  "cata497304389495ab7c262383923243180":
      CatId.CATA497304389495_AB7_C262383923243180,
  "catb8454d0cec7a96a6e6f78332753014c6":
      CatId.CATB8454_D0_CEC7_A96_A6_E6_F78332753014_C6,
  "cate2f7ee7f7317ceddf4395f82665b5a86":
      CatId.CATE2_F7_EE7_F7317_CEDDF4395_F82665_B5_A86,
  "catfa070dd5cc2a2c9c6196159f85480ff7":
      CatId.CATFA070_DD5_CC2_A2_C9_C6196159_F85480_FF7,
  "": CatId.EMPTY
});

class Category {
  Category({
    this.catId,
    this.catName,
    this.catOrdering,
    this.status,
    this.addedDate,
    this.isFood,
    this.defaultPhoto,
    this.defaultIcon,
  });

  final CatId catId;
  final CatName catName;
  final String catOrdering;
  final String status;
  final DateTime addedDate;
  final String isFood;
  final Default defaultPhoto;
  final Default defaultIcon;

  factory Category.fromJson(Map<String, dynamic> json) => Category(
        catId: catIdValues.map[json["cat_id"]],
        catName: catNameValues.map[json["cat_name"]],
        catOrdering: json["cat_ordering"],
        status: json["status"],
        addedDate: DateTime.parse(json["added_date"]),
        isFood: json["is_food"],
        defaultPhoto: Default.fromJson(json["default_photo"]),
        defaultIcon: Default.fromJson(json["default_icon"]),
      );

  Map<String, dynamic> toJson() => {
        "cat_id": catIdValues.reverse[catId],
        "cat_name": catNameValues.reverse[catName],
        "cat_ordering": catOrdering,
        "status": status,
        "added_date": addedDate.toIso8601String(),
        "is_food": isFood,
        "default_photo": defaultPhoto.toJson(),
        "default_icon": defaultIcon.toJson(),
      };
}

enum CatName {
  BUAH_SAYUR,
  MASAKAN_LOKAL,
  LAINNYA,
  MANCANEGARA,
  ROTI_KUE,
  FROZEN_FOOD,
  MINUMAN,
  SNACKS
}

final catNameValues = EnumValues({
  "Buah & Sayur": CatName.BUAH_SAYUR,
  "Frozen Food": CatName.FROZEN_FOOD,
  "Lainnya": CatName.LAINNYA,
  "Mancanegara": CatName.MANCANEGARA,
  "Masakan Lokal": CatName.MASAKAN_LOKAL,
  "Minuman": CatName.MINUMAN,
  "Roti & Kue": CatName.ROTI_KUE,
  "Snacks": CatName.SNACKS
});

class Default {
  Default({
    this.imgId,
    this.imgParentId,
    this.imgType,
    this.imgPath,
    this.imgWidth,
    this.imgHeight,
    this.imgDesc,
    this.isEmptyObject,
  });

  final String imgId;
  final String imgParentId;
  final ImgType imgType;
  final String imgPath;
  final String imgWidth;
  final String imgHeight;
  final String imgDesc;
  final String isEmptyObject;

  factory Default.fromJson(Map<String, dynamic> json) => Default(
        imgId: json["img_id"],
        imgParentId: json["img_parent_id"],
        imgType: imgTypeValues.map[json["img_type"]],
        imgPath: json["img_path"],
        imgWidth: json["img_width"],
        imgHeight: json["img_height"],
        imgDesc: json["img_desc"],
        isEmptyObject:
            json["is_empty_object"] == null ? null : json["is_empty_object"],
      );

  Map<String, dynamic> toJson() => {
        "img_id": imgId,
        "img_parent_id": imgParentId,
        "img_type": imgTypeValues.reverse[imgType],
        "img_path": imgPath,
        "img_width": imgWidth,
        "img_height": imgHeight,
        "img_desc": imgDesc,
        "is_empty_object": isEmptyObject == null ? null : isEmptyObject,
      };
}

enum ImgType { CATEGORY_ICON, CATEGORY, ITEM, EMPTY, SUB_CATEGORY }

final imgTypeValues = EnumValues({
  "category": ImgType.CATEGORY,
  "category-icon": ImgType.CATEGORY_ICON,
  "": ImgType.EMPTY,
  "item": ImgType.ITEM,
  "sub_category": ImgType.SUB_CATEGORY
});

class ConditionOfItem {
  ConditionOfItem({
    this.id,
    this.name,
    this.status,
    this.addedDate,
    this.isEmptyObject,
  });

  final String id;
  final ConditionOfItemName name;
  final String status;
  final String addedDate;
  final String isEmptyObject;

  factory ConditionOfItem.fromJson(Map<String, dynamic> json) =>
      ConditionOfItem(
        id: json["id"],
        name: conditionOfItemNameValues.map[json["name"]],
        status: json["status"],
        addedDate: json["added_date"],
        isEmptyObject:
            json["is_empty_object"] == null ? null : json["is_empty_object"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "name": conditionOfItemNameValues.reverse[name],
        "status": status,
        "added_date": addedDate,
        "is_empty_object": isEmptyObject == null ? null : isEmptyObject,
      };
}

enum ConditionOfItemName { EMPTY, BARU, PICKUP_X, GRATIS, TIDAK_BISA_DITAWAR }

final conditionOfItemNameValues = EnumValues({
  "Baru": ConditionOfItemName.BARU,
  "": ConditionOfItemName.EMPTY,
  "Gratis": ConditionOfItemName.GRATIS,
  "Pickup X": ConditionOfItemName.PICKUP_X,
  "Tidak Bisa Ditawar": ConditionOfItemName.TIDAK_BISA_DITAWAR
});

class GetAddressClass {
  GetAddressClass({
    this.id,
    this.bsItemsId,
    this.provinceId,
    this.province,
    this.cityId,
    this.city,
    this.districtId,
    this.district,
    this.zipCode,
    this.longitude,
    this.latitude,
    this.fullAddress,
    this.contactPerson,
    this.nameAddress,
    this.createdAt,
    this.updatedAt,
    this.deletedAt,
  });

  final String id;
  final String bsItemsId;
  final String provinceId;
  final Province province;
  final String cityId;
  final LocationName city;
  final String districtId;
  final String district;
  final String zipCode;
  final String longitude;
  final String latitude;
  final String fullAddress;
  final String contactPerson;
  final String nameAddress;
  final DateTime createdAt;
  final DateTime updatedAt;
  final String deletedAt;

  factory GetAddressClass.fromJson(Map<String, dynamic> json) =>
      GetAddressClass(
        id: json["id"],
        bsItemsId: json["bs_items_id"],
        provinceId: json["province_id"],
        province: provinceValues.map[json["province"]],
        cityId: json["city_id"],
        city: locationNameValues.map[json["city"]],
        districtId: json["district_id"],
        district: json["district"],
        zipCode: json["zip_code"],
        longitude: json["longitude"],
        latitude: json["latitude"],
        fullAddress: json["full_address"],
        contactPerson: json["contact_person"],
        nameAddress: json["name_address"],
        createdAt: DateTime.parse(json["created_at"]),
        updatedAt: DateTime.parse(json["updated_at"]),
        deletedAt: json["deleted_at"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "bs_items_id": bsItemsId,
        "province_id": provinceId,
        "province": provinceValues.reverse[province],
        "city_id": cityId,
        "city": locationNameValues.reverse[city],
        "district_id": districtId,
        "district": district,
        "zip_code": zipCode,
        "longitude": longitude,
        "latitude": latitude,
        "full_address": fullAddress,
        "contact_person": contactPerson,
        "name_address": nameAddress,
        "created_at": createdAt.toIso8601String(),
        "updated_at": updatedAt.toIso8601String(),
        "deleted_at": deletedAt,
      };
}

enum LocationName {
  KABUPATEN_BATANG,
  KOTA_SURABAYA,
  EMPTY,
  KABUPATEN_GRESIK,
  KABUPATEN_MOJOKERTO,
  SURABAYA,
  SLEMAN,
  SERANG
}

final locationNameValues = EnumValues({
  "": LocationName.EMPTY,
  "Kabupaten Batang": LocationName.KABUPATEN_BATANG,
  "Kabupaten Gresik": LocationName.KABUPATEN_GRESIK,
  "Kabupaten Mojokerto": LocationName.KABUPATEN_MOJOKERTO,
  "Kota Surabaya": LocationName.KOTA_SURABAYA,
  "Serang": LocationName.SERANG,
  "Sleman": LocationName.SLEMAN,
  "Surabaya": LocationName.SURABAYA
});

enum Province { JAWA_TENGAH, JAWA_TIMUR, EMPTY }

final provinceValues = EnumValues({
  "": Province.EMPTY,
  "Jawa Tengah": Province.JAWA_TENGAH,
  "Jawa Timur": Province.JAWA_TIMUR
});

class GetDeliveryElement {
  GetDeliveryElement({
    this.id,
    this.bsItemsId,
    this.deliveryName,
    this.createdAt,
    this.updatedAt,
    this.deletedAt,
  });

  final String id;
  final String bsItemsId;
  final DeliveryName deliveryName;
  final DateTime createdAt;
  final DateTime updatedAt;
  final String deletedAt;

  factory GetDeliveryElement.fromJson(Map<String, dynamic> json) =>
      GetDeliveryElement(
        id: json["id"],
        bsItemsId: json["bs_items_id"],
        deliveryName: deliveryNameValues.map[json["delivery_name"]],
        createdAt: DateTime.parse(json["created_at"]),
        updatedAt: DateTime.parse(json["updated_at"]),
        deletedAt: json["deleted_at"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "bs_items_id": bsItemsId,
        "delivery_name": deliveryNameValues.reverse[deliveryName],
        "created_at": createdAt.toIso8601String(),
        "updated_at": updatedAt.toIso8601String(),
        "deleted_at": deletedAt,
      };
}

enum DeliveryName { TIKI, JNE, JNT }

final deliveryNameValues = EnumValues({
  "JNE": DeliveryName.JNE,
  "JNT": DeliveryName.JNT,
  "TIKI": DeliveryName.TIKI
});

class ItemCurrency {
  ItemCurrency({
    this.id,
    this.currencyShortForm,
    this.currencySymbol,
    this.status,
    this.addedDate,
    this.isEmptyObject,
  });

  final String id;
  final String currencyShortForm;
  final String currencySymbol;
  final String status;
  final String addedDate;
  final String isEmptyObject;

  factory ItemCurrency.fromJson(Map<String, dynamic> json) => ItemCurrency(
        id: json["id"],
        currencyShortForm: json["currency_short_form"],
        currencySymbol: json["currency_symbol"],
        status: json["status"],
        addedDate: json["added_date"],
        isEmptyObject: json["is_empty_object"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "currency_short_form": currencyShortForm,
        "currency_symbol": currencySymbol,
        "status": status,
        "added_date": addedDate,
        "is_empty_object": isEmptyObject,
      };
}

class ItemLocation {
  ItemLocation({
    this.id,
    this.name,
    this.lat,
    this.lng,
    this.status,
    this.addedDate,
    this.isEmptyObject,
  });

  final Id id;
  final ItemLocationName name;
  final Lat lat;
  final Lng lng;
  final String status;
  final String addedDate;
  final String isEmptyObject;

  factory ItemLocation.fromJson(Map<String, dynamic> json) => ItemLocation(
        id: idValues.map[json["id"]],
        name: itemLocationNameValues.map[json["name"]],
        lat: latValues.map[json["lat"]],
        lng: lngValues.map[json["lng"]],
        status: json["status"],
        addedDate: json["added_date"],
        isEmptyObject:
            json["is_empty_object"] == null ? null : json["is_empty_object"],
      );

  Map<String, dynamic> toJson() => {
        "id": idValues.reverse[id],
        "name": itemLocationNameValues.reverse[name],
        "lat": latValues.reverse[lat],
        "lng": lngValues.reverse[lng],
        "status": status,
        "added_date": addedDate,
        "is_empty_object": isEmptyObject == null ? null : isEmptyObject,
      };
}

enum Id {
  EMPTY,
  ITM_LOCA7_B66748_E03_D457_E976_CA63_A50_E1_BDE0,
  ITM_LOCC91_E7_FD5_FFC739_B26951228_B0_A564569,
  ITM_LOC413981_C0_F76_AD269307_AAEE5_EFF59517
}

final idValues = EnumValues({
  "": Id.EMPTY,
  "itm_loc413981c0f76ad269307aaee5eff59517":
      Id.ITM_LOC413981_C0_F76_AD269307_AAEE5_EFF59517,
  "itm_loca7b66748e03d457e976ca63a50e1bde0":
      Id.ITM_LOCA7_B66748_E03_D457_E976_CA63_A50_E1_BDE0,
  "itm_locc91e7fd5ffc739b26951228b0a564569":
      Id.ITM_LOCC91_E7_FD5_FFC739_B26951228_B0_A564569
});

enum Lat { EMPTY, THE_21959900, THE_1354200, THE_6208763 }

final latValues = EnumValues({
  "": Lat.EMPTY,
  "1.354200": Lat.THE_1354200,
  "21.959900": Lat.THE_21959900,
  "-6.208763": Lat.THE_6208763
});

enum Lng { EMPTY, THE_96086601, THE_103819839, THE_106845596 }

final lngValues = EnumValues({
  "": Lng.EMPTY,
  "103.819839": Lng.THE_103819839,
  "106.845596": Lng.THE_106845596,
  "96.086601": Lng.THE_96086601
});

enum ItemLocationName { EMPTY, JAKARTA_SELATAN, JAKARTA_BARAT, KOTA_BEKASI }

final itemLocationNameValues = EnumValues({
  "": ItemLocationName.EMPTY,
  "Jakarta Barat": ItemLocationName.JAKARTA_BARAT,
  "Jakarta Selatan": ItemLocationName.JAKARTA_SELATAN,
  "Kota Bekasi": ItemLocationName.KOTA_BEKASI
});

enum LocationType { CITY, EMPTY }

final locationTypeValues =
    EnumValues({"city": LocationType.CITY, "": LocationType.EMPTY});

enum PaidStatus { NOT_AVAILABLE }

final paidStatusValues =
    EnumValues({"not_available": PaidStatus.NOT_AVAILABLE});

enum PickupTime {
  THE_56,
  EMPTY,
  KONFIRMASI_DLU_AJA,
  KONFITMASI_DLU_AJA,
  THE_46,
  THE_6_SORE,
  JAM_7_MALAM,
  JAM_4_SAMPAI_6_SORE
}

final pickupTimeValues = EnumValues({
  "": PickupTime.EMPTY,
  "Jam 4 sampai 6 sore": PickupTime.JAM_4_SAMPAI_6_SORE,
  "Jam 7 malam": PickupTime.JAM_7_MALAM,
  "Konfirmasi dlu aja": PickupTime.KONFIRMASI_DLU_AJA,
  "Konfitmasi dlu aja": PickupTime.KONFITMASI_DLU_AJA,
  "4-6": PickupTime.THE_46,
  "5-6": PickupTime.THE_56,
  "6 Sore": PickupTime.THE_6_SORE
});

enum PoDeliveryEnum { EMPTY, THE_00000000000000 }

final poDeliveryEnumValues = EnumValues({
  "": PoDeliveryEnum.EMPTY,
  "0000-00-00 00:00:00": PoDeliveryEnum.THE_00000000000000
});

class SubCategory {
  SubCategory({
    this.id,
    this.catId,
    this.name,
    this.status,
    this.addedDate,
    this.addedUserId,
    this.updatedDate,
    this.updatedUserId,
    this.updatedFlag,
    this.defaultPhoto,
    this.isEmptyObject,
  });

  final String id;
  final CatId catId;
  final String name;
  final String status;
  final String addedDate;
  final EdUserId addedUserId;
  final String updatedDate;
  final EdUserId updatedUserId;
  final String updatedFlag;
  final Default defaultPhoto;
  final String isEmptyObject;

  factory SubCategory.fromJson(Map<String, dynamic> json) => SubCategory(
        id: json["id"],
        catId: catIdValues.map[json["cat_id"]],
        name: json["name"],
        status: json["status"],
        addedDate: json["added_date"],
        addedUserId: edUserIdValues.map[json["added_user_id"]],
        updatedDate: json["updated_date"],
        updatedUserId: edUserIdValues.map[json["updated_user_id"]],
        updatedFlag: json["updated_flag"],
        defaultPhoto: Default.fromJson(json["default_photo"]),
        isEmptyObject:
            json["is_empty_object"] == null ? null : json["is_empty_object"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "cat_id": catIdValues.reverse[catId],
        "name": name,
        "status": status,
        "added_date": addedDate,
        "added_user_id": edUserIdValues.reverse[addedUserId],
        "updated_date": updatedDate,
        "updated_user_id": edUserIdValues.reverse[updatedUserId],
        "updated_flag": updatedFlag,
        "default_photo": defaultPhoto.toJson(),
        "is_empty_object": isEmptyObject == null ? null : isEmptyObject,
      };
}

enum EdUserId { C4_CA4238_A0_B923820_DCC509_A6_F75849_B, EMPTY }

final edUserIdValues = EnumValues({
  "c4ca4238a0b923820dcc509a6f75849b":
      EdUserId.C4_CA4238_A0_B923820_DCC509_A6_F75849_B,
  "": EdUserId.EMPTY
});

class User {
  User({
    this.userId,
    this.userIsSysAdmin,
    this.facebookId,
    this.googleId,
    this.phoneId,
    this.appleId,
    this.userName,
    this.userEmail,
    this.userPhone,
    this.userAddress,
    this.city,
    this.userAboutMe,
    this.userCoverPhoto,
    this.userProfilePhoto,
    this.roleId,
    this.status,
    this.isBanned,
    this.addedDate,
    this.deviceToken,
    this.code,
    this.overallRating,
    this.whatsapp,
    this.messenger,
    this.followerCount,
    this.followingCount,
    this.emailVerify,
    this.facebookVerify,
    this.googleVerify,
    this.phoneVerify,
    this.appleVerify,
    this.ratingCount,
    this.isFollowed,
    this.ratingDetails,
  });

  final String userId;
  final String userIsSysAdmin;
  final String facebookId;
  final String googleId;
  final String phoneId;
  final String appleId;
  final String userName;
  final String userEmail;
  final UserPhone userPhone;
  final String userAddress;
  final String city;
  final String userAboutMe;
  final String userCoverPhoto;
  final String userProfilePhoto;
  final String roleId;
  final String status;
  final String isBanned;
  final DateTime addedDate;
  final String deviceToken;
  final Code code;
  final String overallRating;
  final String whatsapp;
  final String messenger;
  final String followerCount;
  final String followingCount;
  final String emailVerify;
  final String facebookVerify;
  final String googleVerify;
  final String phoneVerify;
  final String appleVerify;
  final String ratingCount;
  final String isFollowed;
  final RatingDetails ratingDetails;

  factory User.fromJson(Map<String, dynamic> json) => User(
        userId: json["user_id"],
        userIsSysAdmin: json["user_is_sys_admin"],
        facebookId: json["facebook_id"],
        googleId: json["google_id"],
        phoneId: json["phone_id"],
        appleId: json["apple_id"],
        userName: json["user_name"],
        userEmail: json["user_email"],
        userPhone: userPhoneValues.map[json["user_phone"]],
        userAddress: json["user_address"],
        city: json["city"],
        userAboutMe: json["user_about_me"],
        userCoverPhoto: json["user_cover_photo"],
        userProfilePhoto: json["user_profile_photo"],
        roleId: json["role_id"],
        status: json["status"],
        isBanned: json["is_banned"],
        addedDate: DateTime.parse(json["added_date"]),
        deviceToken: json["device_token"],
        code: codeValues.map[json["code"]],
        overallRating: json["overall_rating"],
        whatsapp: json["whatsapp"],
        messenger: json["messenger"],
        followerCount: json["follower_count"],
        followingCount: json["following_count"],
        emailVerify: json["email_verify"],
        facebookVerify: json["facebook_verify"],
        googleVerify: json["google_verify"],
        phoneVerify: json["phone_verify"],
        appleVerify: json["apple_verify"],
        ratingCount: json["rating_count"],
        isFollowed: json["is_followed"],
        ratingDetails: RatingDetails.fromJson(json["rating_details"]),
      );

  Map<String, dynamic> toJson() => {
        "user_id": userId,
        "user_is_sys_admin": userIsSysAdmin,
        "facebook_id": facebookId,
        "google_id": googleId,
        "phone_id": phoneId,
        "apple_id": appleId,
        "user_name": userName,
        "user_email": userEmail,
        "user_phone": userPhoneValues.reverse[userPhone],
        "user_address": userAddress,
        "city": city,
        "user_about_me": userAboutMe,
        "user_cover_photo": userCoverPhoto,
        "user_profile_photo": userProfilePhoto,
        "role_id": roleId,
        "status": status,
        "is_banned": isBanned,
        "added_date": addedDate.toIso8601String(),
        "device_token": deviceToken,
        "code": codeValues.reverse[code],
        "overall_rating": overallRating,
        "whatsapp": whatsapp,
        "messenger": messenger,
        "follower_count": followerCount,
        "following_count": followingCount,
        "email_verify": emailVerify,
        "facebook_verify": facebookVerify,
        "google_verify": googleVerify,
        "phone_verify": phoneVerify,
        "apple_verify": appleVerify,
        "rating_count": ratingCount,
        "is_followed": isFollowed,
        "rating_details": ratingDetails.toJson(),
      };
}

enum Code { EMPTY }

final codeValues = EnumValues({" ": Code.EMPTY});

class RatingDetails {
  RatingDetails({
    this.fiveStarCount,
    this.fiveStarPercent,
    this.fourStarCount,
    this.fourStarPercent,
    this.threeStarCount,
    this.threeStarPercent,
    this.twoStarCount,
    this.twoStarPercent,
    this.oneStarCount,
    this.oneStarPercent,
    this.totalRatingCount,
    this.totalRatingValue,
  });

  final String fiveStarCount;
  final String fiveStarPercent;
  final String fourStarCount;
  final String fourStarPercent;
  final String threeStarCount;
  final String threeStarPercent;
  final String twoStarCount;
  final String twoStarPercent;
  final String oneStarCount;
  final String oneStarPercent;
  final String totalRatingCount;
  final String totalRatingValue;

  factory RatingDetails.fromJson(Map<String, dynamic> json) => RatingDetails(
        fiveStarCount: json["five_star_count"],
        fiveStarPercent: json["five_star_percent"],
        fourStarCount: json["four_star_count"],
        fourStarPercent: json["four_star_percent"],
        threeStarCount: json["three_star_count"],
        threeStarPercent: json["three_star_percent"],
        twoStarCount: json["two_star_count"],
        twoStarPercent: json["two_star_percent"],
        oneStarCount: json["one_star_count"],
        oneStarPercent: json["one_star_percent"],
        totalRatingCount: json["total_rating_count"],
        totalRatingValue: json["total_rating_value"],
      );

  Map<String, dynamic> toJson() => {
        "five_star_count": fiveStarCount,
        "five_star_percent": fiveStarPercent,
        "four_star_count": fourStarCount,
        "four_star_percent": fourStarPercent,
        "three_star_count": threeStarCount,
        "three_star_percent": threeStarPercent,
        "two_star_count": twoStarCount,
        "two_star_percent": twoStarPercent,
        "one_star_count": oneStarCount,
        "one_star_percent": oneStarPercent,
        "total_rating_count": totalRatingCount,
        "total_rating_value": totalRatingValue,
      };
}

enum UserPhone {
  EMPTY,
  THE_085155339952,
  THE_085707871657,
  THE_082233334444,
  THE_2456886542,
  THE_082233025539
}

final userPhoneValues = EnumValues({
  "": UserPhone.EMPTY,
  "082233025539": UserPhone.THE_082233025539,
  "082233334444": UserPhone.THE_082233334444,
  "085155339952": UserPhone.THE_085155339952,
  "085707871657": UserPhone.THE_085707871657,
  "2456886542": UserPhone.THE_2456886542
});

class EnumValues<T> {
  Map<String, T> map;
  Map<T, String> reverseMap;

  EnumValues(this.map);

  Map<T, String> get reverse {
    if (reverseMap == null) {
      reverseMap = map.map((k, v) => new MapEntry(v, k));
    }
    return reverseMap;
  }
}
