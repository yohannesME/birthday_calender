import 'package:bahere_hasab/bahere_hasab.dart';
import 'package:go_green_app/app_libs.dart';
import 'package:go_green_app/services/base.service.dart';

class BirthdayService extends BaseService {
  List<Birthday> _bd = [];

  final String table = 'birthday';

  List<Birthday> get bd {
    return [];
  }

  void addBirthdate(Birthday newBd) {
    print(_bd);
    print(newBd.toString() + ' hello man');
    return;
    _bd.add(newBd);
    DBHelper.insert(table, {
      'id': newBd.id,
      'name': newBd.name,
      'date': newBd.date,
      'image': newBd.image as String,
      'note': newBd.note as String,
    });
  }

  Future<void> fetchAndSetBirthdays() async {
    final dataList = await DBHelper.getData(table);
    _bd = dataList
        .map((bday) => Birthday(
              id: bday['id'],
              name: bday['name'],
              note: bday['note'],
              image: bday['image'],
              date: bday['date'],
            ))
        .toList();
    // notifyListeners();
  }

  @override
  String get tag => "Birthday Service";
}
