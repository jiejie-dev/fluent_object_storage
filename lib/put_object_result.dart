/// 上传结果
class ObjectStoragePutObjectResult {
  final String? url;
  final String? taskId;
  final int? currentSize;
  final int? totalSize;
  final String? errorMessage;
  final bool isFinished;
  final String event;

  ObjectStoragePutObjectResult({
    required this.event,
    this.url,
    this.taskId,
    this.currentSize,
    this.totalSize,
    this.errorMessage,
    this.isFinished = false,
  });

  bool get isError => errorMessage != null;

  @override
  String toString() {
    return 'PutObjectResult{url: $url, taskId: $taskId, currentSize: $currentSize, totalSize: $totalSize, errorMessage: $errorMessage, isFinished: $isFinished}';
  }

//  PutObjectResult({this.url, this.requestId, this.statusCode, this.errorCode, this.message, this.eTag, this.isSuccess});
//
//  factory PutObjectResult.fromJson(final json) {
//    return PutObjectResult(url: json["url"],
//      requestId: json["requestId"],
//      statusCode: int.parse(json["statusCode"].toString()),
//      errorCode: json["errorCode"],
//      message: json["message"],
//      eTag: json["eTag"],
//      isSuccess: json['isSuccess']);
//  }
}
