import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:bandsapp_flutter/service/socket_service.dart';

class StatesPages extends StatelessWidget {
  const StatesPages({super.key});
  @override
  Widget build(BuildContext context) {
    final socketService = Provider.of<SocketService>(context);
    // socketService.socket.emit(event)
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('ServerStatus: ${socketService.serverStatus}'),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.message),
        onPressed: () {
          socketService.emit('emitir-mensaje', {'nombre': 'Juan'});
        },
      ),
    );
  }
}
