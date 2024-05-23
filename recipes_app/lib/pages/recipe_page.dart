import 'package:flutter/material.dart';
import 'package:recipes_app/models/recipe.dart';

class RecipePage extends StatelessWidget {
  final Recipe recipe;

  const RecipePage({
    required this.recipe,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.white60,
        title: const Text(
          'RecipBook',
        ),
      ),
      body: _buildUI(),
    );
  }

  Widget _buildUI() {
    return const Column(
      children: [],
    );
  }
}
