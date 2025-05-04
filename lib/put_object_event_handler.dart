import 'package:fluent_object_storage/put_object_result.dart';

/// 成功回调
typedef OnUploadSuccess = void Function(ObjectStoragePutObjectResult event);

/// 失败回调
typedef OnUploadFailure = void Function(ObjectStoragePutObjectResult event);

/// 进度回调
typedef OnProgress = void Function(ObjectStoragePutObjectResult event);

/// 上传时的相关事件回调
class ObjectStoragePutObjectEventHandler {
  final String taskId;

  /// 成功回调
  OnUploadSuccess? onSuccess;

  /// 失败回调
  OnUploadFailure? onFailed;

  /// 进度回调
  OnProgress? onProgress;

  ObjectStoragePutObjectEventHandler({required this.taskId});

  void dispatch(ObjectStoragePutObjectResult event) {
    if (event.taskId != taskId) return;
    if (event.isFinished) {
      onSuccess?.call(event);
    } else if (event.isError) {
      onFailed?.call(event);
    } else {
      onProgress?.call(event);
    }
  }
}
