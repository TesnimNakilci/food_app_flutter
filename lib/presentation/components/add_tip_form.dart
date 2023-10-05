import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:reactive_forms/reactive_forms.dart';

import '../../model/tip_form_validation.dart';
import '../widgets/form_text_feild.dart';
import '../widgets/validation_button.dart';

class AddTipForm extends ConsumerWidget {
  const AddTipForm({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final FormGroup tipsForm = ref.watch((tipsFormProvider(0)));
    return ReactiveForm(
      formGroup: tipsForm,
      child: Column(
        children: [
          FormTextField(
            formControlName: 'name',
            hint: 'Name',
            validation: {
              'required': (error) => 'The name must not be empty',
            },
          ),
          FormTextField(
            formControlName: 'details',
            hint: 'Details..',
            maxLine: 8,
            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 55),
            validation: {
              'required': (error) => 'The details must not be empty'
            },
            textAction: TextInputAction.send,
          ),
          ReactiveFormConsumer(
            builder:
                (BuildContext context, FormGroup formGroup, Widget? child) {
              return ValidationButton(
                //  text: 'Procced',
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
