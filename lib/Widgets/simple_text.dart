import 'package:flutter/material.dart';

import '../app_localization.dart';

class SimpleText extends StatelessWidget {
  const SimpleText({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Text(
        AppLocalization.of(context)
            .getTranslatedValue("simple_text")
            .toString(),
        textAlign: TextAlign.center,
      ),
    );
  }
}
