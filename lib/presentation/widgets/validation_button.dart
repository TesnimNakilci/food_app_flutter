import 'package:flutter/material.dart';

import '../../model/color/app_colors.dart';

class ValidationButton extends StatelessWidget {
  ValidationButton({
    Key? key,
   // required this.text,
    this.callback,
  }) : super(key: key);
  //final String text;
  final Future<void> Function()? callback;

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        width: double.infinity,
        height: height * 0.055,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(13),
          color:AppColors.grey,
        ),
        child: ElevatedButton(
          onPressed: callback,
          style: ElevatedButton.styleFrom(
              backgroundColor: AppColors.buttonColor,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(13.0),
              )),
          child: Text(
            "Procced",
            style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                  color: AppColors.magnolia,
                  overflow: TextOverflow.clip,
                ),
          ),
        ),
      ),
    );
  }
}
