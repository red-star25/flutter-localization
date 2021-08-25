import 'package:flutter/material.dart';
import 'package:flutter_localization/shared_preferences.dart';
import 'package:provider/provider.dart';

import 'Model/language.dart';
import 'Widgets/flutter_picker.dart';
import 'Widgets/simple_text.dart';
import 'app_localization.dart';
import 'app_localization_provider.dart';

class HomePage extends StatelessWidget {
  void _changeLanguage(Language language, context) async {
    Locale _selectedLocale =
        await AppSharedPreferences().setLocale(language.languageCode);

    final appLocaleProvider =
        Provider.of<LocaleNotifier>(context, listen: false);

    appLocaleProvider.setLocale(_selectedLocale);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          AppLocalization.of(context)
              .getTranslatedValue("home_appBar_title")
              .toString(),
        ),
      ),
      body: SizedBox.expand(
        child: Column(
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SimpleText(),
                SizedBox(
                  height: 50,
                ),
                FlutterPicker()
              ],
            ),
            SizedBox(height: 20),
            Wrap(
              children: Language.languageList()
                  .map(
                    (e) => Padding(
                      padding: EdgeInsets.only(right: 10),
                      child: ElevatedButton(
                        onPressed: () {
                          _changeLanguage(e, context);
                        },
                        child: Text("${e.name} ${e.flag}"),
                      ),
                    ),
                  )
                  .toList(),
            ),
          ],
        ),
      ),
    );
  }
}
