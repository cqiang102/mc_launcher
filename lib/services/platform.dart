import 'dart:io';

main(){
  File file = File("test.txt");
  Directory directory = Directory(".mc");
  file.writeAsString("123");
  print(file.path);
  print(file.parent.path);
  print(directory.path);
  print(directory.absolute.path);
  directory.create();
  Map<String,String> map =  Platform.environment;
  print('${map['JAVA_HOME']}');
  print('${map['JRE_HOME']}');
  // TODO 0 创建默认配置 配置 provider
  // TODO 1 读取配置文件 sqlf perfs
  // TODO 2 覆盖默认配置
  // TODO 3 登陆-账号管理 账号 provider
  // TODO 4 下载游戏相关 多线程
  // TODO 5 下载 JRE
  // TODO 6 运行游戏 shell cli
}