class ProductModel {
  dynamic success;
  String? message;
  List<Banner>? banner1;
  List<Banner>? banner2;
  List<Banner>? banner3;
  List<Banner>? banner4;
  List<Banner>? banner5;
  List<RecentView>? recentviews;
  List<Product>? ourProducts;
  List<Product>? suggestedProducts;
  List<Product>? flashSail;
  List<dynamic>? newarrivals;
  List<Category>? categories;
  List<Category>? topAccessories;
  List<FeaturedBrand>? featuredbrands;
  dynamic cartcount;
  dynamic wishlistcount;
  Currency? currency;
  dynamic notificationCount;

  ProductModel({
    this.success,
    this.message,
    this.banner1,
    this.banner2,
    this.banner3,
    this.banner4,
    this.banner5,
    this.recentviews,
    this.ourProducts,
    this.suggestedProducts,
    this.flashSail,
    this.newarrivals,
    this.categories,
    this.topAccessories,
    this.featuredbrands,
    this.cartcount,
    this.wishlistcount,
    this.currency,
    this.notificationCount,
  });

  factory ProductModel.fromJson(Map<String, dynamic> json) {
    return ProductModel(
      success: json['success'],
      message: json['message'],
      banner1: json['banner1'] != null ? List<Banner>.from(json['banner1'].map((x) => Banner.fromJson(x))) : [],
      banner2: json['banner2'] != null ? List<Banner>.from(json['banner2'].map((x) => Banner.fromJson(x))) : [],
      banner3: json['banner3'] != null ? List<Banner>.from(json['banner3'].map((x) => Banner.fromJson(x))) : [],
      banner4: json['banner4'] != null ? List<Banner>.from(json['banner4'].map((x) => Banner.fromJson(x))) : [],
      banner5: json['banner5'] != null ? List<Banner>.from(json['banner5'].map((x) => Banner.fromJson(x))) : [],
      recentviews: json['recentviews'] != null ? List<RecentView>.from(json['recentviews'].map((x) => RecentView.fromJson(x))) : [],
      ourProducts: json['our_products'] != null ? List<Product>.from(json['our_products'].map((x) => Product.fromJson(x))) : [],
      suggestedProducts: json['suggested_products'] != null ? List<Product>.from(json['suggested_products'].map((x) => Product.fromJson(x))) : [],
      flashSail: json['flash_sail'] != null ? List<Product>.from(json['flash_sail'].map((x) => Product.fromJson(x))) : [],
      newarrivals: json['newarrivals'],
      categories: json['categories'] != null ? List<Category>.from(json['categories'].map((x) => Category.fromJson(x['category']))) : [],
      topAccessories: json['top_accessories'] != null ? List<Category>.from(json['top_accessories'].map((x) => Category.fromJson(x['category']))) : [],
      featuredbrands: json['featuredbrands'] != null ? List<FeaturedBrand>.from(json['featuredbrands'].map((x) => FeaturedBrand.fromJson(x))) : [],
      cartcount: json['cartcount'],
      wishlistcount: json['wishlistcount'],
      currency: json['currency'] != null ? Currency.fromJson(json['currency']) : null,
      notificationCount: json['notification_count'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'success': success,
      'message': message,
      'banner1': banner1?.map((x) => x.toJson()).toList(),
      'banner2': banner2?.map((x) => x.toJson()).toList(),
      'banner3': banner3?.map((x) => x.toJson()).toList(),
      'banner4': banner4?.map((x) => x.toJson()).toList(),
      'banner5': banner5?.map((x) => x.toJson()).toList(),
      'recentviews': recentviews?.map((x) => x.toJson()).toList(),
      'our_products': ourProducts?.map((x) => x.toJson()).toList(),
      'suggested_products': suggestedProducts?.map((x) => x.toJson()).toList(),
      'flash_sail': flashSail?.map((x) => x.toJson()).toList(),
      'newarrivals': newarrivals,
      'categories': categories?.map((x) => x.toJson()).toList(),
      'top_accessories': topAccessories?.map((x) => x.toJson()).toList(),
      'featuredbrands': featuredbrands?.map((x) => x.toJson()).toList(),
      'cartcount': cartcount,
      'wishlistcount': wishlistcount,
      'currency': currency?.toJson(),
      'notification_count': notificationCount,
    };
  }
}

class Banner {
  dynamic id;
  dynamic linkType;
  String? linkValue;
  String? image;
  String? title;
  String? subTitle;
  String? logo;

  Banner({
    this.id,
    this.linkType,
    this.linkValue,
    this.image,
    this.title,
    this.subTitle,
    this.logo,
  });

  factory Banner.fromJson(Map<String, dynamic> json) {
    return Banner(
      id: json['id'],
      linkType: json['link_type'],
      linkValue: json['link_value'],
      image: json['image'],
      title: json['title'],
      subTitle: json['sub_title'],
      logo: json['logo'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'link_type': linkType,
      'link_value': linkValue,
      'image': image,
      'title': title,
      'sub_title': subTitle,
      'logo': logo,
    };
  }
}

class RecentView {
  dynamic productId;
  String? slug;
  String? code;
  String? homeImg;
  String? name;
  dynamic isGender;
  String? store;
  String? manufacturer;
  String? oldprice;
  String? price;
  String? image;
  dynamic cart;
  dynamic wishlist;

  RecentView({
    this.productId,
    this.slug,
    this.code,
    this.homeImg,
    this.name,
    this.isGender,
    this.store,
    this.manufacturer,
    this.oldprice,
    this.price,
    this.image,
    this.cart,
    this.wishlist,
  });

  factory RecentView.fromJson(Map<String, dynamic> json) {
    return RecentView(
      productId: json['productId'],
      slug: json['slug'],
      code: json['code'],
      homeImg: json['home_img'],
      name: json['name'],
      isGender: json['is_gender'],
      store: json['store'],
      manufacturer: json['manufacturer'],
      oldprice: json['oldprice'],
      price: json['price'],
      image: json['image'],
      cart: json['cart'],
      wishlist: json['wishlist'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'productId': productId,
      'slug': slug,
      'code': code,
      'home_img': homeImg,
      'name': name,
      'is_gender': isGender,
      'store': store,
      'manufacturer': manufacturer,
      'oldprice': oldprice,
      'price': price,
      'image': image,
      'cart': cart,
      'wishlist': wishlist,
    };
  }
}

class Product {
  dynamic productId;
  String? slug;
  String? code;
  String? homeImg;
  String? name;
  dynamic isGender;
  String? store;
  String? manufacturer;
  String? oldprice;
  String? price;
  String? image;
  dynamic cart;
  dynamic wishlist;

  Product({
    this.productId,
    this.slug,
    this.code,
    this.homeImg,
    this.name,
    this.isGender,
    this.store,
    this.manufacturer,
    this.oldprice,
    this.price,
    this.image,
    this.cart,
    this.wishlist,
  });

  factory Product.fromJson(Map<String, dynamic> json) {
    return Product(
      productId: json['productId'],
      slug: json['slug'],
      code: json['code'],
      homeImg: json['home_img'],
      name: json['name'],
      isGender: json['is_gender'],
      store: json['store'],
      manufacturer: json['manufacturer'],
      oldprice: json['oldprice'],
      price: json['price'],
      image: json['image'],
      cart: json['cart'],
      wishlist: json['wishlist'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'productId': productId,
      'slug': slug,
      'code': code,
      'home_img': homeImg,
      'name': name,
      'is_gender': isGender,
      'store': store,
      'manufacturer': manufacturer,
      'oldprice': oldprice,
      'price': price,
      'image': image,
      'cart': cart,
      'wishlist': wishlist,
    };
  }
}

class Category {
  dynamic id;
  String? slug;
  String? image;
  String? name;
  String? description;

  Category({
    this.id,
    this.slug,
    this.image,
    this.name,
    this.description,
  });

  factory Category.fromJson(Map<String, dynamic> json) {
    return Category(
      id: json['id'],
      slug: json['slug'],
      image: json['image'],
      name: json['name'],
      description: json['description'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'slug': slug,
      'image': image,
      'name': name,
      'description': description,
    };
  }
}

class FeaturedBrand {
  dynamic id;
  String? image;
  String? slug;
  String? name;

  FeaturedBrand({
    this.id,
    this.image,
    this.slug,
    this.name,
  });

  factory FeaturedBrand.fromJson(Map<String, dynamic> json) {
    return FeaturedBrand(
      id: json['id'],
      image: json['image'],
      slug: json['slug'],
      name: json['name'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'image': image,
      'slug': slug,
      'name': name,
    };
  }
}

class Currency {
  String? name;
  String? code;
  String? symbolLeft;
  String? symbolRight;
  String? value;
  dynamic status;

  Currency({
    this.name,
    this.code,
    this.symbolLeft,
    this.symbolRight,
    this.value,
    this.status,
  });

  factory Currency.fromJson(Map<String, dynamic> json) {
    return Currency(
      name: json['name'],
      code: json['code'],
      symbolLeft: json['symbol_left'],
      symbolRight: json['symbol_right'],
      value: json['value'],
      status: json['status'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'name': name,
      'code': code,
      'symbol_left': symbolLeft,
      'symbol_right': symbolRight,
      'value': value,
      'status': status,
    };
  }
}
