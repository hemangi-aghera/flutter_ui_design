import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class TextWidget extends StatelessWidget {
  const TextWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: const [
        CustomField(),
        CustomField(),
        CustomField(),
        CustomField(),
      ],
    );
  }
}

class CustomField extends StatelessWidget {
  const CustomField({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 65,
      width: 60,
      child: TextFormField(

        onChanged: (value){
          if(value.length == 1){
            FocusScope.of(context).nextFocus();
          }
        },
        textAlign: TextAlign.center,
        inputFormatters: [
          LengthLimitingTextInputFormatter(1),
          FilteringTextInputFormatter.digitsOnly,
        ],
        decoration: InputDecoration(
          filled: true,
          fillColor: Colors.grey.shade100,
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(15),
            borderSide: BorderSide(
              color: Colors.purple.shade300,
            ),
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(15),
            borderSide: BorderSide(
              color: Color.fromARGB(255, 220, 215, 226),
            ),

          ),
        ),
      ),
    );
  }
}