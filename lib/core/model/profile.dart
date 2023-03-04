import 'package:floor/floor.dart';

@entity
class Profile {
  @primaryKey
  final int id;

  final String businessName;
  final String businessRegisteredOrNot;
  final String collection;
  final String averageOrder;

  Profile(
    this.id,
    this.businessName,
    this.businessRegisteredOrNot,
    this.collection,
    this.averageOrder,
  );
}
