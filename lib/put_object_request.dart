import 'package:platform_file/platform_file.dart';

/// 上传请求
class ObjectStoragePutObjectRequest {
  /// 支持路径
  final String taskId;
  final PlatformFile file;
  final String bucketName;
  final String objectName;
  final String accessKeyId;
  final String accessKeySecret;
  final String securityToken;
  final int expiredTime;
  final String region;
  // 设置启用分块上传的最小对象大小，单位为字节，默认值为2MB
  final int divisionForUpload;
  // 设置分块上传时的分块大小，单位为字节，默认值为1MB
  final int sliceSizeForUpload;

  ObjectStoragePutObjectRequest({
    required this.taskId,
    required this.file,
    required this.bucketName,
    required this.objectName,
    required this.accessKeyId,
    required this.accessKeySecret,
    required this.securityToken,
    required this.expiredTime,
    required this.region,
    this.divisionForUpload = 2 * 1024 * 1024,
    this.sliceSizeForUpload = 1024 * 1024,
  });

  Map<String, dynamic> toMap() {
    return {
      "taskId": taskId,
      "bucketName": bucketName,
      "objectName": objectName,
      "accessKeyId": accessKeyId,
      "accessKeySecret": accessKeySecret,
      "securityToken": securityToken,
      "expiredTime": expiredTime,
      "region": region,
      "divisionForUpload": divisionForUpload,
      "sliceSizeForUpload": sliceSizeForUpload,
    };
  }
}
