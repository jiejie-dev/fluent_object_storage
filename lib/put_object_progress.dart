/// 上传进度
class ObjectStoragePutObjectProgress {
  final int? currentSize;
  final int? totalSize;
  final double? progress;

  ObjectStoragePutObjectProgress(
      {this.currentSize, this.totalSize, this.progress});
}
