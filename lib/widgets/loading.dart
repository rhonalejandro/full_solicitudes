import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class Loading extends StatelessWidget {
  const Loading({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: CircularProgressIndicator(
        color: Colors.blue.shade300,
      ),
    );
  }
}

class LoadingNotifier extends StateNotifier<bool> {
  LoadingNotifier() : super(false);

  void changeValue() {
    state = !state;
  }
}

final providerLoading =
    StateNotifierProvider<LoadingNotifier, bool>((ref) => LoadingNotifier());
