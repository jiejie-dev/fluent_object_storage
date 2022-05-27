class ObjectStorageCredential {
  final String accessKeyId;
  final String accessKeySecret;
  final String securityToken;
  final String expiration;

  ObjectStorageCredential({
    required this.accessKeyId,
    required this.accessKeySecret,
    required this.securityToken,
    required this.expiration,
  });
}
