import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:intl/intl.dart' as intl;
import 'package:intl/date_symbols.dart' as intl;
import 'package:intl/date_symbol_data_custom.dart' as date_symbol_data_custom;
import 'kz_patterns.dart';

class _KzMaterialLocalization extends LocalizationsDelegate<MaterialLocalizations> {
  const _KzMaterialLocalization();

  @override
  bool isSupported(Locale locale) => locale.languageCode == "kz";

  @override
  bool shouldReload(covariant LocalizationsDelegate<MaterialLocalizations> old) => false;

  @override
  Future<MaterialLocalizations> load(Locale locale) async {
    final String localeName = intl.Intl.canonicalizedLocale(locale.toString());
    date_symbol_data_custom.initializeDateFormattingCustom(
      locale: localeName,
      patterns: KzPatterns.kzLocaleDatePatterns,
      symbols: intl.DateSymbols.deserializeFromMap(KzPatterns.kzDateSymbols),
    );
    return SynchronousFuture<MaterialLocalizations>(
      KzMaterialLocalization(
        localeName: localeName,
        fullYearFormat: intl.DateFormat('y', localeName),
        compactDateFormat: intl.DateFormat('yMd', localeName),
        shortDateFormat: intl.DateFormat('yMMMd', localeName),
        mediumDateFormat: intl.DateFormat('EEE, MMM d', localeName),
        longDateFormat: intl.DateFormat('EEEE, MMMM d, y', localeName),
        yearMonthFormat: intl.DateFormat('MMMM y', localeName),
        shortMonthDayFormat: intl.DateFormat('MMM d', localeName),
        decimalFormat: intl.NumberFormat('#,##0.###', 'en_US'),
        twoDigitZeroPaddedFormat: intl.NumberFormat('00', 'en_US'),
      ),
    );
  }
}

/// The translations for Russian (`kz`).
class KzMaterialLocalization extends GlobalMaterialLocalizations {
  /// Create an instance of the translation bundle for Russian.
  ///
  ///
  /// For details on the meaning of the arguments, see [GlobalMaterialLocalizations].
  const KzMaterialLocalization({
    super.localeName = 'kz',
    required super.fullYearFormat,
    required super.compactDateFormat,
    required super.shortDateFormat,
    required super.mediumDateFormat,
    required super.longDateFormat,
    required super.yearMonthFormat,
    required super.shortMonthDayFormat,
    required super.decimalFormat,
    required super.twoDigitZeroPaddedFormat,
  });

  static const LocalizationsDelegate<MaterialLocalizations> delegate = _KzMaterialLocalization();

  @override
  String get aboutListTileTitleRaw => r'$applicationName: мәліметтер';

  @override
  String get alertDialogLabel => 'Хабарландыру';

  @override
  String get anteMeridiemAbbreviation => 'АМ';

  @override
  String get backButtonTooltip => 'Артқа';

  @override
  String get bottomSheetLabel => 'Астынғы экран';

  @override
  String get calendarModeButtonLabel => 'Күнтізбеге ауысу';

  @override
  String get cancelButtonLabel => 'Болдырмау';

  @override
  String get closeButtonLabel => 'Жабу';

  @override
  String get closeButtonTooltip => 'Жабу';

  @override
  String get collapsedHint => 'Кеңейтілген';

  @override
  String get collapsedIconTapHint => 'Кеңейту';

  @override
  String get continueButtonLabel => 'Жалғастыру';

  @override
  String get copyButtonLabel => 'Көшіру';

  @override
  String get currentDateLabel => 'Бүгін';

  @override
  String get cutButtonLabel => 'Қию';

  @override
  String get dateHelpText => 'кк.аа.жжжж';

  @override
  String get dateInputLabel => 'Күнді енгізіңіз';

  @override
  String get dateOutOfRangeLabel => 'Күн ауқымды диапазоннан тыс.';

  @override
  String get datePickerHelpText => 'Күнді таңдаңыз';

  @override
  String get dateRangeEndDateSemanticLabelRaw => r'Мерзімнің өту күні: $fullDate';

  @override
  String get dateRangeEndLabel => 'Мерзімнің өту күні';

  @override
  String get dateRangePickerHelpText => 'Күндер диапазонын таңдаңыз';

  @override
  String get dateRangeStartDateSemanticLabelRaw => r'Басталу күні: $fullDate';

  @override
  String get dateRangeStartLabel => 'Басталу күні';

  @override
  String get dateSeparator => '.';

  @override
  String get deleteButtonTooltip => 'Жою';

  @override
  String get dialModeButtonLabel => 'Уақыт таңдау режиміне өтіңіз';

  @override
  String get dialogLabel => 'Диалогтық терезе';

  @override
  String get drawerLabel => 'Навигация мәзірі';

  @override
  String get expandedHint => 'Жиылған';

  @override
  String get expandedIconTapHint => 'Жию';

  @override
  String get expansionTileCollapsedHint => 'кеңейту үшін екі рет басыңыз';

  @override
  String get expansionTileCollapsedTapHint => 'Қосымша мәліметтер алу үшін кеңейтіңіз';

  @override
  String get expansionTileExpandedHint => "жию үшін екі рет басыңыз'";

  @override
  String get expansionTileExpandedTapHint => 'Жию';

  @override
  String get firstPageTooltip => 'Бірінші бет';

  @override
  String get hideAccountsLabel => 'Аккаунтты жасыру';

  @override
  String get inputDateModeButtonLabel => 'Қолмен енгізуге ауысыңыз';

  @override
  String get inputTimeModeButtonLabel => 'Мәтін енгізу режиміне ауысу';

  @override
  String get invalidDateFormatLabel => 'Күн форматы жарамсыз';

  @override
  String get invalidDateRangeLabel => 'Недопустимый диапазон.';

  @override
  String get invalidTimeLabel => 'Жарамсыз диапазон.';

  @override
  String get keyboardKeyAlt => 'Alt';

  @override
  String get keyboardKeyAltGraph => 'AltGr';

  @override
  String get keyboardKeyBackspace => 'Backspace';

  @override
  String get keyboardKeyCapsLock => 'Caps Lock';

  @override
  String get keyboardKeyChannelDown => 'Келесі арна';

  @override
  String get keyboardKeyChannelUp => 'Алдыңғы арна';

  @override
  String get keyboardKeyControl => 'Ctrl';

  @override
  String get keyboardKeyDelete => 'Del';

  @override
  String get keyboardKeyEject => 'Алу';

  @override
  String get keyboardKeyEnd => 'End';

  @override
  String get keyboardKeyEscape => 'Esc';

  @override
  String get keyboardKeyFn => 'Fn';

  @override
  String get keyboardKeyHome => 'Home';

  @override
  String get keyboardKeyInsert => 'Insert';

  @override
  String get keyboardKeyMeta => 'Meta';

  @override
  String get keyboardKeyMetaMacOs => 'Command';

  @override
  String get keyboardKeyMetaWindows => 'Win';

  @override
  String get keyboardKeyNumLock => 'Num Lock';

  @override
  String get keyboardKeyNumpad0 => 'Num 0';

  @override
  String get keyboardKeyNumpad1 => 'Num 1';

  @override
  String get keyboardKeyNumpad2 => 'Num 2';

  @override
  String get keyboardKeyNumpad3 => 'Num 3';

  @override
  String get keyboardKeyNumpad4 => 'Num 4';

  @override
  String get keyboardKeyNumpad5 => 'Num 5';

  @override
  String get keyboardKeyNumpad6 => 'Num 6';

  @override
  String get keyboardKeyNumpad7 => 'Num 7';

  @override
  String get keyboardKeyNumpad8 => 'Num 8';

  @override
  String get keyboardKeyNumpad9 => 'Num 9';

  @override
  String get keyboardKeyNumpadAdd => 'Num +';

  @override
  String get keyboardKeyNumpadComma => 'Num ,';

  @override
  String get keyboardKeyNumpadDecimal => 'Num .';

  @override
  String get keyboardKeyNumpadDivide => 'Num /';

  @override
  String get keyboardKeyNumpadEnter => 'Num Енгізу';

  @override
  String get keyboardKeyNumpadEqual => 'Num =';

  @override
  String get keyboardKeyNumpadMultiply => 'Num *';

  @override
  String get keyboardKeyNumpadParenLeft => 'Num (';

  @override
  String get keyboardKeyNumpadParenRight => 'Num )';

  @override
  String get keyboardKeyNumpadSubtract => 'Num -';

  @override
  String get keyboardKeyPageDown => 'PgDown';

  @override
  String get keyboardKeyPageUp => 'PgUp';

  @override
  String get keyboardKeyPower => 'Қуат';

  @override
  String get keyboardKeyPowerOff => 'Қуатты өшіру';

  @override
  String get keyboardKeyPrintScreen => 'Print Screen';

  @override
  String get keyboardKeyScrollLock => 'Scroll Lock';

  @override
  String get keyboardKeySelect => 'Таңдау';

  @override
  String get keyboardKeyShift => 'Shift';

  @override
  String get keyboardKeySpace => 'Бос орын';

  @override
  String get lastPageTooltip => 'Соңғы бет';

  @override
  String? get licensesPackageDetailTextFew => r'$licenseCount лицензия';

  @override
  String? get licensesPackageDetailTextMany => r'$licenseCount лицензия';

  @override
  String? get licensesPackageDetailTextOne => '1 лицензия';

  @override
  String get licensesPackageDetailTextOther => r'$licenseCount лицензия';

  @override
  String? get licensesPackageDetailTextTwo => null;

  @override
  String? get licensesPackageDetailTextZero => 'Лицензиялар жоқ';

  @override
  String get licensesPageTitle => 'Лицензиялар';

  @override
  String get menuBarMenuLabel => 'Мәзір жолағы';

  @override
  String get modalBarrierDismissLabel => 'Жабу';

  @override
  String get moreButtonTooltip => 'Тағы';

  @override
  String get nextMonthTooltip => 'Келесі ай';

  @override
  String get nextPageTooltip => 'Келесі бет';

  @override
  String get okButtonLabel => 'ОК';

  @override
  String get openAppDrawerTooltip => 'Навигация мәзірін ашу';

  @override
  String get pageRowsInfoTitleRaw => r'$firstRow–$lastRow $rowCount ішінен';

  @override
  String get pageRowsInfoTitleApproximateRaw => r'$firstRow–$lastRow шамамен $rowCount ішінен';

  @override
  String get pasteButtonLabel => 'Қою';

  @override
  String get popupMenuLabel => 'Қалқымалы мәзір';

  @override
  String get postMeridiemAbbreviation => 'PM';

  @override
  String get previousMonthTooltip => 'Алдыңғы ай';

  @override
  String get previousPageTooltip => 'Алдыңғы бет';

  @override
  String get refreshIndicatorSemanticLabel => 'Жаңарту';

  @override
  String? get remainingTextFieldCharacterCountFew => r'$remainingCount символ қалды';

  @override
  String? get remainingTextFieldCharacterCountMany => r'$remainingCount символ қалды';

  @override
  String? get remainingTextFieldCharacterCountOne => '1 символ қалды';

  @override
  String get remainingTextFieldCharacterCountOther => r'$remainingCount символ қалды';

  @override
  String? get remainingTextFieldCharacterCountTwo => null;

  @override
  String? get remainingTextFieldCharacterCountZero => 'TBD';

  @override
  String get reorderItemDown => 'Төменге жылжыту';

  @override
  String get reorderItemLeft => 'Солға жылжыту';

  @override
  String get reorderItemRight => 'Оңға жылжыту';

  @override
  String get reorderItemToEnd => 'Соңына жылжыту';

  @override
  String get reorderItemToStart => 'Басына жылжыту';

  @override
  String get reorderItemUp => 'Үстіге жылжыту';

  @override
  String get rowsPerPageTitle => 'беттегі жолдар:';

  @override
  String get saveButtonLabel => 'Сақтау';

  @override
  String get scanTextButtonLabel => 'Мәтінді сканерлеу';

  @override
  String get scrimLabel => 'Маска';

  @override
  String get scrimOnTapHintRaw => r'$modalRouteContentName жабу';

  @override
  ScriptCategory get scriptCategory => ScriptCategory.englishLike;

  @override
  String get searchFieldLabel => 'Іздеу';

  @override
  String get selectAllButtonLabel => 'Барлығын таңдау';

  @override
  String get selectYearSemanticsLabel => 'Жылды таңдаңыз';

  @override
  String? get selectedRowCountTitleFew => r'$selectedRowCount нысаны таңдалды';

  @override
  String? get selectedRowCountTitleMany => r'$selectedRowCount нысандар таңдалды';

  @override
  String? get selectedRowCountTitleOne => '1 нысан таңдалды';

  @override
  String get selectedRowCountTitleOther => r'$selectedRowCount нысандар таңдалды';

  @override
  String? get selectedRowCountTitleTwo => null;

  @override
  String? get selectedRowCountTitleZero => 'Ешбір жол таңдалмаған';

  @override
  String get showAccountsLabel => 'Аккаунттарды көрсету';

  @override
  String get showMenuTooltip => 'Мәзірді көрсету';

  @override
  String get signedInLabel => 'Жүйеге кіру орындалды';

  @override
  String get tabLabelRaw => r'$tabCount ішінен $tabIndex қойындысы';

  @override
  TimeOfDayFormat get timeOfDayFormatRaw => TimeOfDayFormat.H_colon_mm;

  @override
  String get timePickerDialHelpText => 'Уақытты таңдаңыз';

  @override
  String get timePickerHourLabel => 'Сағат';

  @override
  String get timePickerHourModeAnnouncement => 'Сағатты таңдаңыз';

  @override
  String get timePickerInputHelpText => 'Уақытты көрсетіңіз';

  @override
  String get timePickerMinuteLabel => 'Минут';

  @override
  String get timePickerMinuteModeAnnouncement => 'Минутты таңдаңыз';

  @override
  String get unspecifiedDate => 'Күн';

  @override
  String get unspecifiedDateRange => 'Күндер диапазоны';

  @override
  String get viewLicensesButtonLabel => 'Лицензияларды көру';

  @override
  String get lookUpButtonLabel => 'Іздеу';

  @override
  String get menuDismissLabel => 'Мәзірді жабу';

  @override
  String get searchWebButtonLabel => 'Ғаламтордан іздеу';

  @override
  String get shareButtonLabel => 'Бөлісу...';
}
