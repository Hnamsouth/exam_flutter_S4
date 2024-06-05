import 'package:exam/service/api_service.dart';
import 'package:get/get.dart';
import '../data/exam_data.dart';
import '../model/destination.dart';

class DestinationController extends GetxController {
  late List<Destination>? _destination;
  List<Destination>? get destinations => _destination;
  void setStudent(List<Destination> data) => _destination = data;
  addStudent(Destination student) => _destination?.add(student);
  removeStudent(Destination student) => _destination?.remove(student);
  disposeStudent() => _destination?.clear();

  Future<List<Destination>> getDestinations() async {
    await Future.delayed(const Duration(seconds: 1));
    var rs = await DioService().get("destination");
    if (rs.statusCode == 200) {
      return rs.data
          .map<Destination>((item) => Destination.fromJson(item))
          .toList();
    }
    return [];
  }

  @override
  void onInit() {
    super.onInit();
    _destination = destinationData;
  }
}
