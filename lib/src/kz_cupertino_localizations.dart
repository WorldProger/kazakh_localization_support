import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:intl/intl.dart' as intl;
import 'package:intl/date_symbols.dart' as intl;
import 'package:intl/date_symbol_data_custom.dart' as date_symbol_data_custom;
import 'kz_patterns.dart';

class _KzCupertinoLocalization extends LocalizationsDelegate<CupertinoLocalizations> {
  const _KzCupertinoLocalization();

  @override
  bool isSupported(Locale locale) => locale.languageCode == "kz";

  @override
  bool shouldReload(covariant LocalizationsDelegate<CupertinoLocalizations> old) => false;

  @override
  Future<CupertinoLocalizations> load(Locale locale) async {
    final String localeName = intl.Intl.canonicalizedLocale(locale.toString());
    date_symbol_data_custom.initializeDateFormattingCustom(
      locale: localeName,
      patterns: KzPatterns.kzLocaleDatePatterns,
      symbols: intl.DateSymbols.deserializeFromMap(KzPatterns.kzDateSymbols),
    );

    return SynchronousFuture<CupertinoLocalizations>(
      KzCupertinoLocalization(
        localeName: localeName,
        fullYearFormat: intl.DateFormat('y', localeName),
        mediumDateFormat: intl.DateFormat('EEE, MMM d', localeName),
        decimalFormat: intl.NumberFormat('#,##0.###', 'en_US'),
        dayFormat: intl.DateFormat('d', localeName),
        doubleDigitMinuteFormat: intl.DateFormat('mm', localeName),
        singleDigitHourFormat: intl.DateFormat('HH', localeName),
        singleDigitMinuteFormat: intl.DateFormat('m', localeName),
        singleDigitSecondFormat: intl.DateFormat('s', localeName),
      ),
    );
  }
}

class KzCupertinoLocalization extends GlobalCupertinoLocalizations {
  const KzCupertinoLocalization({
    super.localeName = 'kz',
    required super.fullYearFormat,
    required super.dayFormat,
    required super.mediumDateFormat,
    required super.singleDigitHourFormat,
    required super.singleDigitMinuteFormat,
    required super.doubleDigitMinuteFormat,
    required super.singleDigitSecondFormat,
    required super.decimalFormat,
  });

  static const LocalizationsDelegate<CupertinoLocalizations> delegate = _KzCupertinoLocalization();
  @override
  String get alertDialogLabel => 'Оповещение';

  @override
  String get anteMeridiemAbbreviation => 'АМ';

  @override
  String get copyButtonLabel => 'Көшіру';

  @override
  String get cutButtonLabel => 'Қию';

  @override
  String get datePickerDateOrderString => 'dmy';

  @override
  String get datePickerDateTimeOrderString => 'date_time_dayPeriod';

  @override
  String? get datePickerHourSemanticsLabelFew => r'$hour сағат';

  @override
  String? get datePickerHourSemanticsLabelMany => r'$hour сағат';

  @override
  String? get datePickerHourSemanticsLabelOne => r'$hour сағат';

  @override
  String get datePickerHourSemanticsLabelOther => r'$hour сағат';

  @override
  String? get datePickerHourSemanticsLabelTwo => null;

  @override
  String? get datePickerHourSemanticsLabelZero => null;

  @override
  String? get datePickerMinuteSemanticsLabelFew => r'$minute минут';

  @override
  String? get datePickerMinuteSemanticsLabelMany => r'$minute минут';

  @override
  String? get datePickerMinuteSemanticsLabelOne => '1 минут';

  @override
  String get datePickerMinuteSemanticsLabelOther => r'$minute минут';

  @override
  String? get datePickerMinuteSemanticsLabelTwo => null;

  @override
  String? get datePickerMinuteSemanticsLabelZero => null;

  @override
  String get modalBarrierDismissLabel => 'Жабу';

  @override
  String get noSpellCheckReplacementsLabel => 'Ауыстырулар табылмады';

  @override
  String get pasteButtonLabel => 'Қою';

  @override
  String get postMeridiemAbbreviation => 'PM';

  @override
  String get searchTextFieldPlaceholderLabel => 'Іздеу';

  @override
  String get selectAllButtonLabel => 'Барлығын таңдау';

  @override
  String get tabSemanticsLabelRaw => r'$tabCount ішінен $tabIndex-қойынды';

  @override
  String? get timerPickerHourLabelFew => 'сағат';

  @override
  String? get timerPickerHourLabelMany => 'сағат';

  @override
  String? get timerPickerHourLabelOne => 'сағат';

  @override
  String get timerPickerHourLabelOther => 'сағат';

  @override
  String? get timerPickerHourLabelTwo => null;

  @override
  String? get timerPickerHourLabelZero => null;

  @override
  String? get timerPickerMinuteLabelFew => 'мин.';

  @override
  String? get timerPickerMinuteLabelMany => 'мин.';

  @override
  String? get timerPickerMinuteLabelOne => 'мин.';

  @override
  String get timerPickerMinuteLabelOther => 'мин.';

  @override
  String? get timerPickerMinuteLabelTwo => null;

  @override
  String? get timerPickerMinuteLabelZero => null;

  @override
  String? get timerPickerSecondLabelFew => 'сек.';

  @override
  String? get timerPickerSecondLabelMany => 'сек.';

  @override
  String? get timerPickerSecondLabelOne => 'сек.';

  @override
  String get timerPickerSecondLabelOther => 'сек.';

  @override
  String? get timerPickerSecondLabelTwo => null;

  @override
  String? get timerPickerSecondLabelZero => null;

  @override
  String get todayLabel => 'Б';

  @override
  String get lookUpButtonLabel => 'Іздеу';

  @override
  String get menuDismissLabel => 'Мәзірді жабу';

  @override
  String get searchWebButtonLabel => 'Ғаламтордан іздеу';

  @override
  String get shareButtonLabel => 'Бөлісу>...';
}
