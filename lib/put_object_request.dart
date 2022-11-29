/// 上传请求
class ObjectStoragePutObjectRequest {
  /// 支持路径
  final String taskId;
  final String filePath;
  final String bucketName;
  final String objectName;
  final String accessKeyId;
  final String accessKeySecret;
  final String securityToken;
  final int expiredTime;
  final String region;

  ObjectStoragePutObjectRequest(
      {required this.taskId,
      required this.filePath,
      required this.bucketName,
      required this.objectName,
      required this.accessKeyId,
      required this.accessKeySecret,
      required this.securityToken,
      required this.expiredTime,
      required this.region});

  Map<String, dynamic> toMap() {
    return {
      "taskId": taskId,
      "filePath": filePath,
      "bucketName": bucketName,
      "objectName": objectName,
      "accessKeyId": accessKeyId,
      "accessKeySecret": accessKeySecret,
      "securityToken": securityToken,
      "expiredTime": expiredTime,
      "region": region
    };
  }
}
