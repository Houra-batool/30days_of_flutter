
class CatalogModel{
   static final itmes= [
     Item(id: 1, name: 'Iphone 12 pro', desc: 'iPhone 12 Pro/n 516GB/n Single SIM/n 5G' ,
      price: 229900, color: '#C0C0C0',
      image: 'https://myshop.pk/pub/media/catalog/product/cache/26f8091d81cea4b38d820a1d1a4f62be/a/p/apple_i_phone_12_pro-_myshop-pk-__4_1_1.jpg')
   ];
}


class Item {
  final int id;
  final String name;
  final String desc;
  final num price;
  final String color;
  final String image;

  Item({required this.id,required this.name,required this.desc,required this.price,required this.color,required this.image});
}