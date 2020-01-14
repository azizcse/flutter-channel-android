/*
import 'dart:io' as Io;
import 'package:image/image.dart' as IM;
import 'package:flutter_cache_manager/flutter_cache_manager.dart';
import 'package:path_provider/path_provider.dart';
import 'package:simple_permissions/simple_permissions.dart';

Future<bool> downloadImage(String url) async {
  await new Future.delayed(new Duration(seconds: 1));
  bool checkResult =
  await SimplePermissions.checkPermission(Permission.WriteExternalStorage);
  if (!checkResult) {
    var status = await SimplePermissions.requestPermission(
        Permission.WriteExternalStorage);
    if (status == PermissionStatus.authorized) {
      var res = await saveImage(url);
      return res != null;
    }
  } else {
    var res = await saveImage(url);
    return res != null;
  }
  return false;
}

Future<Io.File> saveImage(String url) async {
  try {
    final file = await getImageFromNetwork(url);
    var dir = await getExternalStorageDirectory();
    var testdir =
    await new Io.Directory('${dir.path}/iLearn').create(recursive: true);
    IM.Image image = IM.decodeImage(file.readAsBytesSync());
    return new Io.File(
        '${testdir.path}/${DateTime.now().toUtc().toIso8601String()}.png')
      ..writeAsBytesSync(IM.encodePng(image));
  } catch (e) {
    print(e);
    return null;
  }
}

Future<Io.File> getImageFromNetwork(String url) async {
  var cacheManager = await DefaultCacheManager();
  Io.File file = await cacheManager.getSingleFile(url);
  return file;
}*/
