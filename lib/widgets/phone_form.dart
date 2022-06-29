import 'package:flutter/material.dart';

import 'package:phone_form_field/phone_form_field.dart';

class PhoneForm extends StatelessWidget {
  const PhoneForm({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Padding(
          padding: EdgeInsets.only(bottom: 8.0),
          child: Text('Phone Number'),
        ),
        PhoneFormField(
          showFlagInInput: true,
          defaultCountry: IsoCode.EG,
          shouldFormat: true,
          decoration: const InputDecoration(
            hintText: 'Ex. 010 18 36 46 33',
            hintStyle: TextStyle(color: Colors.grey),
            border: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.grey),
            ),
          ),
        ),
      ],
    );
  }
}
