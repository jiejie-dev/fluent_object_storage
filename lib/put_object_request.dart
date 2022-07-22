/// 上传请求
class ObjectStoragePutObjectRequest {
  /// 支持路径
  final String filePath;
  final String bucketName;
  final String objectName;
  final String accessKeyId;
  final String accessKeySecret;
  final String securityToken;
  final int expiredTime;
  final String region;

  ObjectStoragePutObjectRequest(
      {required this.filePath,
      required this.bucketName,
      required this.objectName,
      required this.accessKeyId,
      required this.accessKeySecret,
      required this.securityToken,
      required this.expiredTime,
      required this.region});

  Map<String, dynamic> toMap() {
    return {
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
