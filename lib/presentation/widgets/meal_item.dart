import 'package:flutter/material.dart';

import '../../model/color/app_colors.dart';

class MealItem extends StatefulWidget {
  final String id;
  final String title;
  final String imageUrl;
  final String weight;
  final String days;

  MealItem({
    required this.id,
    required this.title,
    required this.imageUrl,
    required this.weight,
    required this.days,
  });

  @override
  _MealItemState createState() => _MealItemState();
}

class _MealItemState extends State<MealItem> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      child: Card(
        color: AppColors.magnolia,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15),
        ),
        child: Container(
          padding: EdgeInsets.only(right: 10),
          height: 80,
          child: Row(
            children: [
              Expanded(
                  child: CircleAvatar(
                radius: 25,
                backgroundColor: AppColors.avatar,
                child: IconButton(
                    onPressed: () {},
                    icon: Image.asset(
                      widget.imageUrl,
                      height: 50,
                      width: 50,
                    )),
              )),
              Expanded(
                flex: 3,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Expanded(
                        child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(widget.title,
                            style: Theme.of(context).textTheme.titleMedium),
                        CircleAvatar(
                          radius: 15,
                          backgroundColor: AppColors.purple,
                          child: IconButton(
                              onPressed: () {},
                              icon: const Icon(
                                Icons.edit_location_outlined,
                                color: AppColors.magnolia,
                                size: 15,
                              )),
                        )
                      ],
                    )),
                    const SizedBox(height: 3),
                    Expanded(
                        child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          widget.days,
                          style: Theme.of(context).textTheme.displaySmall,
                        ),
                        Text(
                          widget.weight,
                          style: Theme.of(context).textTheme.displaySmall,
                        ),
                        CircleAvatar(
                          radius: 15,
                          backgroundColor: AppColors.redOrange,
                          child: Container(
                            padding: EdgeInsets.all(0.1),
                            child: IconButton(
                                onPressed: () {},
                                icon: const Icon(
                                  Icons.restore_from_trash_outlined,
                                  color: AppColors.magnolia,
                                  size: 15,
                                )),
                          ),
                        )
                      ],
                    )),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
