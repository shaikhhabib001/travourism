import 'package:flutter/material.dart';

class MoreItems extends StatefulWidget {
  const MoreItems({super.key});

  @override
  State<MoreItems> createState() => _MoreItemsState();
}

class _MoreItemsState extends State<MoreItems>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(vsync: this);
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text(
        "No more items yet",
      ),
    );
  }
}