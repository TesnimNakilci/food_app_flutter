import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:reactive_forms/reactive_forms.dart';
import 'package:image_picker/image_picker.dart';

import '../../model/color/app_colors.dart';
import '../../model/recipe_form_validation.dart';
import '../widgets/checkbox_row.dart';
import '../widgets/form_text_feild.dart';
import '../widgets/validation_button.dart';

class AddRecipeForm extends ConsumerStatefulWidget {
  const AddRecipeForm({Key? key}) : super(key: key);

  @override
  ConsumerState<AddRecipeForm>  createState() => _AddRecipeFormState();
}

class _AddRecipeFormState extends ConsumerState<AddRecipeForm> {
  @override
  Widget build(BuildContext context) {
    final FormGroup recipeForm = ref.watch(recipeFormProvider(0));

    return ReactiveForm(
      formGroup: recipeForm,
      child: Column(
        children: [
          Stack(
            children: [
              ReactiveFormConsumer(
                builder: (BuildContext context, FormGroup formGroup,
                    Widget? child) {
                  return CircleAvatar(
                    radius: 115,
                    backgroundColor: AppColors.darkGrey,
                    backgroundImage: AssetImage("assets/images/pizza.png"),
                  );
                },
              ),
              Positioned(
                bottom: 16,
                right: 15,
                child: CircleAvatar(
                    radius: 25,
                    backgroundColor: AppColors.darkGrey,
                    child: IconButton(
                      onPressed: () async {
                        final ImagePicker picker = ImagePicker();
                        await picker.pickImage(source: ImageSource.gallery);
                       // final XFile? image =await picker.pickImage(source: ImageSource.gallery);
                      },
                      icon: const Icon(
                        Icons.add,
                        color: AppColors.magnolia,
                      ),
                    )),
              ),
            ],
          ),

          FormTextField(
            formControlName: 'name',
            hint: 'Name',
            validation: {
              'required': (error) => 'This field must not be empty',
            },
          ),

          FormTextField(
            formControlName: 'ingredients',
            hint: 'Ingredients:',
            validation: {
              'required': (error) => 'This field must not be empty',
            },
          ),
          FormTextField(
            formControlName: 'details',
            hint: 'Details..',
            maxLine: 2,
            padding: EdgeInsets.symmetric(horizontal: 20,vertical: 35),
            validation: {
              'required': (error) => 'This field must not be empty',
            },
            textAction: TextInputAction.send,
          ),

          CheckBoxRow(),

          ReactiveFormConsumer(
            builder:
                (BuildContext context, FormGroup formGroup, Widget? child) {
              return ValidationButton(
               //   text: 'Procced',
                  callback: formGroup.valid
                      ? () async {
                    print(
                        " ${formGroup.value}");
                    try {} catch (e) {}}
                      : null);
            },
          )
        ],
      ),
    );
  }
}
