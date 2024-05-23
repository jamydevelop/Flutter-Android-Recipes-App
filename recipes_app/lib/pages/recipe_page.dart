import 'package:flutter/material.dart';
import 'package:recipes_app/models/recipe.dart';

class RecipePage extends StatelessWidget {
  final Recipe recipe;

  const RecipePage({
    super.key,
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
      body: _buildUI(context),
    );
  }

  Widget _buildUI(BuildContext context) {
    return Column(
      children: [
        _recipeImage(context),
      ],
    );
  }

  Widget _recipeImage(BuildContext context) {
    return Container(
      height: MediaQuery.sizeOf(context).height * 0.40,
      width: MediaQuery.sizeOf(context).width,
      decoration: BoxDecoration(
        image: DecorationImage(
          image: NetworkImage(
            recipe.image,
          ),
        ),
      ),
    );
  }
}
