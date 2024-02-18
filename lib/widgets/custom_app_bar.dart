import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: kToolbarHeight + 50,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            GestureDetector(
              onTap: () {
                Navigator.of(context).pop();
              },
              child: Icon(
                Icons.exit_to_app,
                color: Colors.white,
              ),
            ),
            Expanded(
              child: Image.asset(
                'images/simbolo.png',
                fit: BoxFit.contain,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
