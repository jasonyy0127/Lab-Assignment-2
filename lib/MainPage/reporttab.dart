import 'package:flutter/material.dart';

class ReportTab extends StatefulWidget {
  const ReportTab({
    Key? key,
    required this.username,
  }) : super(key: key);

  final String username;
  @override
  State<ReportTab> createState() => _ReportTabState();
}

class _ReportTabState extends State<ReportTab> {
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
