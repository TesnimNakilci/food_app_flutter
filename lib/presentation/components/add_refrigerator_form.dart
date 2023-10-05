import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:image_picker/image_picker.dart';
import 'package:reactive_forms/reactive_forms.dart';

import '../../model/color/app_colors.dart';
import '../../model/refrigerator_form_validation.dart';
import '../widgets/form_text_feild.dart';
import '../widgets/validation_button.dart';

class AddRefrigeratorForm extends ConsumerWidget {
  const AddRefrigeratorForm({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final FormGroup refigeratorForm = ref.watch(refrigeratorFormProvider(0));
    return ReactiveForm(
      formGroup: refigeratorForm,
      child: SingleChildScrollView(
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Stack(
                  children: [
                    ReactiveFormConsumer(
                      builder: (BuildContext context, FormGroup formGroup,
                          Widget? child) {
                        return Container(
                          height: 56,
                          width: 56,
                          child: CircleAvatar(
                            radius: 25,
                            backgroundColor: AppColors.avatar,
                            child: IconButton(
                                onPressed: () {},
                                icon: Image.asset(
                                  "assets/images/tomato.png",
                                )),
                          ),
                        );
                      },
                    ),
                    Positioned(
                      bottom: 2,
                      right: 1,
                      child: Container(
                        height: 20,
                        width: 20,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: AppColors.darkGrey,
                        ),
                        child: IconButton(
                            onPressed: () async {
                              final ImagePicker picker = ImagePicker();
                              await picker.pickImage(
                                  source: ImageSource.gallery);
                              // final XFile? image =await picker.pickImage(source: ImageSource.gallery);
                            },
                            icon: Image.asset(
                              "assets/images/add_image.png",
                              fit: BoxFit.cover,
                              height: 120,
                              width: 120,
                            )),
                      ),
                    ),
                  ],
                ),
                Expanded(
                  child: FormTextField(
                    formControlName: 'name',
                    hint: 'Name',
                    validation: {
                      'required': (error) => 'The name must not be empty',
                    },
                  ),
                ),
              ],
            ),
            Row(
              children: [
                Expanded(
                  child: FormTextField(
                    formControlName: 'purchaseDate',
                    hint: 'Purchase Date',
                    validation: {
                      'required': (error) => 'Must not be empty',
                      'pattern': (error) => 'Must be valid date',
                    },
                  ),
                ),
                Expanded(
                    child: FormTextField(
                  formControlName: 'expirationDate',
                  hint: 'Expiration Date',
                  validation: {
                    'required': (error) => 'Must not be empty',
                    'pattern': (error) => 'Must be valid date',
                  },
                ))
              ],
            ),
            Row(
              children: [
                Expanded(
                  child: FormTextField(
                    formControlName: 'quantity',
                    hint: 'Quantity ',
                    validation: {
                      'required': (error) => 'Must not be empty',
                      'number': (error) => 'Must be number',
                    },
                  ),
                ),
                Expanded(
                    child: FormTextField(
                  formControlName: 'unit',
                  hint: 'Unit',
                  validation: {'required': (error) => 'Must not be empty'},
                ))
              ],
            ),
            FormTextField(
              formControlName: 'market',
              hint: 'Market Name',
              validation: {
                'required': (error) => 'The market must not be empty'
              },
            ),
            FormTextField(
              formControlName: 'notes',
              hint: 'notes ..',
              maxLine: 3,
              padding:
                  EdgeInsets.only(top: 90, bottom: 30, left: 20, right: 20),
              validation: {
                'required': (error) => 'The notes must not be empty'
              },
              textAction: TextInputAction.send,
            ),
            ReactiveFormConsumer(
              builder:
                  (BuildContext context, FormGroup formGroup, Widget? child) {
                return ValidationButton(
                   // text: "Procced",
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
      ),
    );
    ;
  }
}
