class ProductModel {
  int? id;
  String? name;
  double? price;
  String? image;
  bool? isFavorite;
  String? description;

  ProductModel({
    this.id,
    this.name,
    this.price,
    this.image,
    this.isFavorite,
    this.description,
  });
}

List<ProductModel> productList = [
  ProductModel(
    id: 196721,
    name: 'Laptop Dell HP Pavilion',
    price: 599.999,
    image: 'asset/Product/Hp.png',
    description:
        'HP Pavilion Gaming Laptop 15-dk2075ne - 11th Intel Core i7-11370H, 16GB RAM, 1TB HDD + 256GB SSD, NVIDIA GeForce RTX 3050 4GB GDDR6 Graphics, 15.6" FHD (1920 x 1080) IPS 144 Hz, Dos - black',
    isFavorite: false,
  ),
  ProductModel(
    id: 196722,
    name: 'Asus Zenbook 3',
    price: 749.999,
    image: 'asset/Product/AsusZenbook3.png',
    description:
        'ASUS ZENBOOK 13 ULTRA SLIM UX325EA KG235T INTEL CORE I5 1135G7 8GB RAM 512GB SSDGood Quality with a high endBest QualityGood material for customerEasy to use',
    isFavorite: false,
  ),
  ProductModel(
    id: 196723,
    name: 'Gaming Computers',
    price: 999.99,
    image: 'asset/Product/AMD FX-6100 GamingDesktopComputers.png',
    description:
          'Samsung 27 inch LED Monitor ,with MSI B550M PRO-VDH WiFi ProSeries Motherboard ,and Cooler Master MasterBox MB520 ARGB Contains: (AMD Ryzen 7 5800X Processor, MSI GeForce RTX 3060 GAMING X 12G Graphics Card, Cooler Master Power Supply 600w Elite V4 80 Plus, 16G Ram DDR4 XPG and 265 SSD with 1TB HDD.) ',
    isFavorite: false,
  ),
  ProductModel(
    id: 196724,
    name: 'Mboard ASUS ATX',
    price: 419.99,
    image: 'asset/Product/MboardASUSATX.png',
    description:
    'ASUS TUF Gaming H570-PRO WiFi 6 LGA1200 (Intel 11th/10th Gen) ATX Gaming Motherboard (PCIe 4.0, WiFi 6, 2.5Gb LAN, 3xM.2 Slots, 8+1 Power Stages, Front Panel TypeC™ Connector, Thunderbolt™ 4 Support)',
    isFavorite: false,
  ),
  ProductModel(
    id: 196725,
    name: 'Fury Hyper DDR4 stick',
    price: 124.99,
    image: 'asset/Product/FuryHyperDDR4RAMStick.png',
    description:
    'Kingston FURY Beast RGB 16GB 3200MHz DDR4 CL16 Desktop Memory Single Stick KF432C16BBA/16',
    isFavorite: false,
  ),
  ProductModel(
    id: 196726,
    name: 'Xiaomi PowerBank',
    price: 209.99,
    image: 'asset/Product/PowerbankXiaomi.png',
    description:
    'Baseus PPAD000101 - Adaman Metal Digital Display Quick Charge Power Bank (20,000mAh - 22.5W - 5V - 3A) 2021 Editon, Compatible With Apple iPhone iPad Samsung Huawei Xiaomi Oppo - Black',
    isFavorite: false,
  ),
  ProductModel(
    id: 196726,
    name: 'Cover For Iphone 7 Plus',
    price: 59.99,
    image: 'asset/Product/iPhone7PlusMobilePhoneAccessories.png',
    description:
    'iPhone 7 Plus Case,iPhone 8 Plus Case,Crystal clear Cover Case [Shock Absorption] with Transparent Hard Plastic Back Plate and Soft TPU Gel Bumper (clear)',
    isFavorite: false,
  ),
  ProductModel(
    id: 196727,
    name: 'Android Tv',
    price: 59.99,
    image: 'asset/Product/Android TV.png',
    description:
    'Xiaomi Mi Box S with 4K HDR Android TV Streaming Media Player Google Assistant Remote Official International Version - BLACK',
    isFavorite: false,
  ),
  ProductModel(
    id: 196728,
    name: 'Apple Watch Series3',
    price: 199.99,
    image: 'asset/Product/Apple Watch Series 3.png',
    description:
    'Apple Series 3 Silicone Watch with GPS and Retina Display, 42 mm - Black',
    isFavorite: false,
  ),
  ProductModel(
    id: 196729,
    name: 'Flat Screen',
    price: 1199,
    image: 'asset/Image/SmartScreen.png',
    description:
    'Samsung 50 Inch 4K UHD Smart LED HD picture quality Enjoy your HD TV in the digital age we live in. Once you watch images on HDTV with vivid, vivid detail, you can be sure that you will never go back to standard definition devices or to analog TV.Feel true-to-life tones in effective 4K resolution Crystal 4K processor Upscaling to effective 4K ensures you can watch the content you love in up to 4K resolution. We also let you enjoy true-to-life color expressions thanks to our advanced color mapping technology.Smooth movement for a clear picture Motion Xcelerator Enjoy image clarity and performance as this feature automatically estimates and compensates frames for the content source',
    isFavorite: false,
  ),
];
