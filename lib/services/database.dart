import 'package:time_tracker_flutter_course/app/home/models/job.dart';
import 'package:time_tracker_flutter_course/services/api_path.dart';

import 'firestore.dart';

abstract class Database {
  Future<void> createJob(Job job);
  Stream<List<Job>> jobsStream();
}

class FirestoreDatabase implements Database {
  FirestoreDatabase({
    required this.uid,
  });

  final String uid;
  final _service = FirestoreService.instance;

  Stream<List<Job>> jobsStream() => _service.collectionStream(
        path: ApiPath.jobs(uid),
        builder: (data) => Job.fromMap(data),
      );

  Future<void> createJob(Job job) => _service.setData(
        path: ApiPath.job(uid, 'R5OA0LX8oLsRIaPTNuYL'),
        data: job.toMap(),
      );
}
