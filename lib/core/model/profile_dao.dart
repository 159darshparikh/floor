import 'package:floor/floor.dart';
import 'package:grocery/core/model/profile.dart';

@dao
abstract class ProfileDao {
  @Query('SELECT * FROM Profile WHERE id = :id')
  Future<Profile?> findProfileById(int id);

  @insert
  Future<void> insertProfile(Profile profile);

  @Query(
      'Update Profile SET businessName = :businessName, businessRegisteredOrNot = :businessRegisteredOrNot, collection = :collection, averageOrder = :averageOrder WHERE id = :id')
  Future<Profile?> updateProfileById(
    int id,
    String businessName,
    String businessRegisteredOrNot,
    String collection,
    String averageOrder,
  );
}
