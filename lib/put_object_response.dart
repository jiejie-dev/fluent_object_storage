import 'package:fluent_object_storage/put_object_progress.dart';
import 'package:fluent_object_storage/put_object_result.dart';

/// 上传返回
class ObjectStoragePutObjectResponse {
  final ObjectStoragePutObjectResult? result;

  final ObjectStoragePutObjectProgress? progress;

  ObjectStoragePutObjectResponse({this.result, this.progress});
}
