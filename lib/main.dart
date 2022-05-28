import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:testProject/utils/routes.dart';
import 'package:provider/provider.dart';
import './constant/constants.dart';
import './view/splashscreen/splashscreen.dart';
import './providers.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: SplashScreen(),
    routes: <String, WidgetBuilder>{
      '/MyApp': (BuildContext context) => const MyApp(),
    },
  ));
}

class MyApp extends StatefulWidget {
  const MyApp({Key key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    // _initPackageInfo();
  }

  @override
  void initState() {
    super.initState();

    // _initPackageInfo();
    SystemChrome.setPreferredOrientations(
        [DeviceOrientation.portraitDown, DeviceOrientation.portraitUp]);
  }

  @override
  void dispose() {
    SystemChrome.setPreferredOrientations(
        [DeviceOrientation.portraitDown, DeviceOrientation.portraitUp]);
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
        providers: providers,
        child: MaterialApp(
          title: "TEST",
          debugShowCheckedModeBanner: false,
          theme: ThemeData(
            indicatorColor: Colors.grey.shade100,
            canvasColor: Colors.transparent,
            fontFamily: 'Proppins',
          ),
          initialRoute: '/',
          routes: appRoutes,
        ));
  }
}
