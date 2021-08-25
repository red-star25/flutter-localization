class Language {
  final int id;
  final String name;
  final String flag;
  final String languageCode;

  Language(this.id, this.name, this.flag, this.languageCode);

  static List<Language> languageList() {
    return <Language>[
      Language(1, "English", "🇺🇸", "en"),
      Language(1, "हिंदी", "🇮🇳", "hi"),
      Language(1, "española", "🇲🇽", "es"),
      Language(1, "中国人", "🇨🇳", "zh"),
    ];
  }
}
