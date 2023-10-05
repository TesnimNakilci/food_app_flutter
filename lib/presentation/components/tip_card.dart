import 'package:flutter/material.dart';

import '../../model/constants/data_constant.dart';
import '../widgets/tip_item.dart';

class TipCard extends StatefulWidget {
  const TipCard({Key? key}) : super(key: key);

  @override
  _TipCardState createState() => _TipCardState();
}

class _TipCardState extends State<TipCard> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      itemCount: data_tip.length,
      physics: const ClampingScrollPhysics(),
      itemBuilder: (BuildContext context, int index) {
        return TipItem(
          title: data_tip[index].title,
          details: data_tip[index].details,
        );
      },
    );
  }
}
