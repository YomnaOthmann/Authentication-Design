import 'package:flutter/material.dart';

class CustomTextFormField extends StatefulWidget {
  CustomTextFormField({
    super.key,
    required this.hint,
    required this.label,
    this.suffix,
    //required this.onPressed,
    required this.isPass,
    this.validator,
    required this.controller,
  });
  final String hint;
  final String label;
  final IconData? suffix;
  //final VoidCallback onPressed;
  bool isPass;
  final String? Function(String?)? validator;
  final TextEditingController controller;

  @override
  State<CustomTextFormField> createState() => _CustomTextFormFieldState();
}

class _CustomTextFormFieldState extends State<CustomTextFormField> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          widget.label,
          style: TextStyle(
            color: Colors.grey[700],
            fontSize: 16,
            fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        TextFormField(
          style: TextStyle(color: Colors.grey[400]),
          controller: widget.controller,
          validator: widget.validator,
          obscureText: widget.isPass,
          decoration: InputDecoration(
            hintText: widget.hint,
            focusedBorder: OutlineInputBorder(
              borderSide: const BorderSide(
                color: Colors.transparent,
              ),
              borderRadius: BorderRadius.circular(
                10,
              ),
            ),
            hintStyle:
                TextStyle(color: Colors.grey[500], fontWeight: FontWeight.bold),
            fillColor: Colors.grey[100],
            filled: true,
            border: const OutlineInputBorder(),
            enabledBorder: OutlineInputBorder(
              borderSide: const BorderSide(
                color: Colors.transparent,
              ),
              borderRadius: BorderRadius.circular(
                10,
              ),
            ),
            suffixIcon: widget.suffix != null
                ? IconButton(
                    onPressed: () {
                      setState(() {
                        widget.isPass = !widget.isPass;
                      });
                    },
                    icon: widget.isPass
                        ? const Icon(Icons.visibility_sharp)
                        : const Icon(Icons.visibility_off))
                : null,
          ),
        ),
      ],
    );
  }
}
