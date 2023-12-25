import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({super.key, required this.controller, required this.prefixIcon, required this.suffixIcon, required this.hintText, required this.isSuffixIconVisible});
final TextEditingController controller;
final IconData prefixIcon;
final IconData suffixIcon;
final bool isSuffixIconVisible;
final String hintText;

  @override
  Widget build(BuildContext context) {
    return TextField(
                               controller: controller,
                               decoration:  InputDecoration(
                                 prefixIcon: Icon(prefixIcon),
                                 hintStyle: TextStyle(
                                  fontFamily: "poppins",
                                  color: Theme.of(context).colorScheme.primary.withOpacity(0.5),
                                  fontSize: 14,
                                 ),
                                 suffixIcon: isSuffixIconVisible?Icon(suffixIcon):const SizedBox(),
                                 hintText: hintText,
                                 enabledBorder: OutlineInputBorder(
                                   borderRadius: BorderRadius.circular(16),
                                   borderSide: BorderSide.none,
                                 ),
                                 focusedBorder: OutlineInputBorder(
                                   borderRadius: BorderRadius.circular(16),
                                   borderSide: BorderSide(color: Theme.of(context).colorScheme.primary.withOpacity(0.4),),
                                 ),
                                 filled: true,
                                 fillColor: Theme.of(context).colorScheme.primary.withOpacity(0.1)
                               ),
                                            
                               );
  }
}