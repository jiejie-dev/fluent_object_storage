/// 上传请求
class ObjectStoragePutObjectRequest {
  /// 支持路径
  final String file;
  final String bucketName;
  final String objectName;

  ObjectStoragePutObjectRequest(
      {required this.file, required this.bucketName, required this.objectName});

  Map<String, dynamic> toMap() {
    return {
      "file": file,
      "bucketName": bucketName,
      "objectName": objectName,
    };
  }
}
