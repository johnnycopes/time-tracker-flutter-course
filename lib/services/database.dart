import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:time_tracker_flutter_course/app/home/models/job.dart';
import 'package:time_tracker_flutter_course/services/api_path.dart';

abstract class Database {
  Future<void> createJob(Job job);
  void readJobs();
  Stream<List<Job>> jobsStream();
}

class FirestoreDatabase implements Database {
  FirestoreDatabase({
    required this.uid,
  });

  final String uid;

  void readJobs() {
    final path = ApiPath.jobs(uid);
    final reference = FirebaseFirestore.instance.collection(path);
    final snapshots = reference.snapshots();
    snapshots.listen((snapshots) {
      snapshots.docs.forEach((snapshot) => print(snapshot.data()));
    });
  }

  Stream<List<Job>> jobsStream() {
    final path = ApiPath.jobs(uid);
    final reference = FirebaseFirestore.instance.collection(path);
    final snapshots = reference.snapshots();
    return snapshots
        .map((collection) => List<Job>.of(collection.docs.map((document) {
              final data = document.data();
              return Job(
                name: data['name'],
                ratePerHour: data['ratePerHour'],
              );
            })));
  }

  Future<void> createJob(Job job) => _setData(
        path: ApiPath.job(uid, 'R5OA0LX8oLsRIaPTNuYL'),
        data: job.toMap(),
      );

  Future<void> _setData({
    required String path,
    required Map<String, dynamic> data,
  }) async {
    final reference = FirebaseFirestore.instance.doc(path);
    print('$path: $data');
    await reference.set(data);
  }
}
