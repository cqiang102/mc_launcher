import 'package:fluent_ui/fluent_ui.dart';
import 'package:provider/provider.dart';

import 'models/home_page_model.dart';
import 'pages/home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [ChangeNotifierProvider(create: (_)=>HomePageModel())],
      child: const FluentApp(
        debugShowCheckedModeBanner: false,
        title: '我的世界启动器',
        home:  HomePage(),
      ),
    );
  }
}


