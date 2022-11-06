import 'package:bandsapp_flutter/pages/status.dart';
import 'package:bandsapp_flutter/service/socket_service.dart';
import 'package:flutter/material.dart';
import 'package:bandsapp_flutter/pages/home.dart';
import 'package:provider/provider.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => SocketService()),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Bands-App',
        initialRoute: 'home',
        routes: {
          'home': (_) => const HomePage(),
          'states': (_) => const StatesPages(),
        },
      ),
    );
  }
}
