import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:intl/intl.dart' as intl;
import 'package:intl/date_symbols.dart' as intl;
import 'package:intl/date_symbol_data_custom.dart' as date_symbol_data_custom;
import 'kz_patterns.dart';

class _KzMaterialLocalization
    extends LocalizationsDelegate<MaterialLocalizations> {
  const _KzMaterialLocalization();

  @override
  bool isSupported(Locale locale) => locale.languageCode == "kz";

  @override
  bool shouldReload(
          covariant LocalizationsDelegate<MaterialLocalizations> old) =>
      false;

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

  static const LocalizationsDelegate<MaterialLocalizations> delegate =
      _KzMaterialLocalization();

  @override
  String get aboutListTileTitleRaw => r'$applicationName: сведения';

  @override
  String get alertDialogLabel => 'Оповещение';

  @override
  String get anteMeridiemAbbreviation => 'АМ';

  @override
  String get backButtonTooltip => 'Назад';

  @override
  String get bottomSheetLabel => 'Нижний экран';

  @override
  String get calendarModeButtonLabel => 'Переключиться на календарь';

  @override
  String get cancelButtonLabel => 'Отмена';

  @override
  String get closeButtonLabel => 'Закрыть';

  @override
  String get closeButtonTooltip => 'Закрыть';

  @override
  String get collapsedHint => 'Expanded';

  @override
  String get collapsedIconTapHint => 'Развернуть';

  @override
  String get continueButtonLabel => 'Продолжить';

  @override
  String get copyButtonLabel => 'Копировать';

  @override
  String get currentDateLabel => 'Сегодня';

  @override
  String get cutButtonLabel => 'Вырезать';

  @override
  String get dateHelpText => 'дд.мм.гггг';

  @override
  String get dateInputLabel => 'Введите дату';

  @override
  String get dateOutOfRangeLabel => 'Дата находится вне допустимого диапазона.';

  @override
  String get datePickerHelpText => 'Выберите дату';

  @override
  String get dateRangeEndDateSemanticLabelRaw => r'Дата окончания: $fullDate';

  @override
  String get dateRangeEndLabel => 'Дата окончания';

  @override
  String get dateRangePickerHelpText => 'Выберите диапазон дат';

  @override
  String get dateRangeStartDateSemanticLabelRaw => r'Дата начала: $fullDate';

  @override
  String get dateRangeStartLabel => 'Дата начала';

  @override
  String get dateSeparator => '.';

  @override
  String get deleteButtonTooltip => 'Удалить';

  @override
  String get dialModeButtonLabel => 'Перейти в режим выбора времени';

  @override
  String get dialogLabel => 'Диалоговое окно';

  @override
  String get drawerLabel => 'Меню навигации';

  @override
  String get expandedHint => 'Collapsed';

  @override
  String get expandedIconTapHint => 'Свернуть';

  @override
  String get expansionTileCollapsedHint => 'double tap to expand';

  @override
  String get expansionTileCollapsedTapHint => 'Expand for more details';

  @override
  String get expansionTileExpandedHint => "double tap to collapse'";

  @override
  String get expansionTileExpandedTapHint => 'Collapse';

  @override
  String get firstPageTooltip => 'Первая страница';

  @override
  String get hideAccountsLabel => 'Скрыть аккаунты';

  @override
  String get inputDateModeButtonLabel => 'Переключиться на ручной ввод';

  @override
  String get inputTimeModeButtonLabel => 'Перейти в режим ввода текста';

  @override
  String get invalidDateFormatLabel => 'Недопустимый формат даты.';

  @override
  String get invalidDateRangeLabel => 'Недопустимый диапазон.';

  @override
  String get invalidTimeLabel => 'Указано недопустимое время.';

  @override
  String get keyboardKeyAlt => 'Alt';

  @override
  String get keyboardKeyAltGraph => 'AltGr';

  @override
  String get keyboardKeyBackspace => 'Backspace';

  @override
  String get keyboardKeyCapsLock => 'Caps Lock';

  @override
  String get keyboardKeyChannelDown => 'Следующий канал';

  @override
  String get keyboardKeyChannelUp => 'Предыдущий канал';

  @override
  String get keyboardKeyControl => 'Ctrl';

  @override
  String get keyboardKeyDelete => 'Del';

  @override
  String get keyboardKeyEject => 'Извлечь';

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
  String get keyboardKeyNumpadEnter => 'Num Ввод';

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
  String get keyboardKeyPower => 'Питание';

  @override
  String get keyboardKeyPowerOff => 'Отключить питание';

  @override
  String get keyboardKeyPrintScreen => 'Print Screen';

  @override
  String get keyboardKeyScrollLock => 'Scroll Lock';

  @override
  String get keyboardKeySelect => 'Выбрать';

  @override
  String get keyboardKeyShift => 'Shift';

  @override
  String get keyboardKeySpace => 'Пробел';

  @override
  String get lastPageTooltip => 'Последняя страница';

  @override
  String? get licensesPackageDetailTextFew => r'$licenseCount лицензии';

  @override
  String? get licensesPackageDetailTextMany => r'$licenseCount лицензий';

  @override
  String? get licensesPackageDetailTextOne => '1 лицензия';

  @override
  String get licensesPackageDetailTextOther => r'$licenseCount лицензии';

  @override
  String? get licensesPackageDetailTextTwo => null;

  @override
  String? get licensesPackageDetailTextZero => 'No licenses';

  @override
  String get licensesPageTitle => 'Лицензии';

  @override
  String get menuBarMenuLabel => 'Строка меню';

  @override
  String get modalBarrierDismissLabel => 'Закрыть';

  @override
  String get moreButtonTooltip => 'Ещё';

  @override
  String get nextMonthTooltip => 'Следующий месяц';

  @override
  String get nextPageTooltip => 'Следующая страница';

  @override
  String get okButtonLabel => 'ОК';

  @override
  String get openAppDrawerTooltip => 'Открыть меню навигации';

  @override
  String get pageRowsInfoTitleRaw => r'$firstRow–$lastRow из $rowCount';

  @override
  String get pageRowsInfoTitleApproximateRaw =>
      r'$firstRow–$lastRow из примерно $rowCount';

  @override
  String get pasteButtonLabel => 'Вставить';

  @override
  String get popupMenuLabel => 'Всплывающее меню';

  @override
  String get postMeridiemAbbreviation => 'PM';

  @override
  String get previousMonthTooltip => 'Предыдущий месяц';

  @override
  String get previousPageTooltip => 'Предыдущая страница';

  @override
  String get refreshIndicatorSemanticLabel => 'Обновление';

  @override
  String? get remainingTextFieldCharacterCountFew =>
      r'Осталось $remainingCount символа';

  @override
  String? get remainingTextFieldCharacterCountMany =>
      r'Осталось $remainingCount символов';

  @override
  String? get remainingTextFieldCharacterCountOne => 'Остался 1 символ';

  @override
  String get remainingTextFieldCharacterCountOther =>
      r'Осталось $remainingCount символа';

  @override
  String? get remainingTextFieldCharacterCountTwo => null;

  @override
  String? get remainingTextFieldCharacterCountZero => 'TBD';

  @override
  String get reorderItemDown => 'Переместить вниз';

  @override
  String get reorderItemLeft => 'Переместить влево';

  @override
  String get reorderItemRight => 'Переместить вправо';

  @override
  String get reorderItemToEnd => 'Переместить в конец';

  @override
  String get reorderItemToStart => 'Переместить в начало';

  @override
  String get reorderItemUp => 'Переместить вверх';

  @override
  String get rowsPerPageTitle => 'Строк на странице:';

  @override
  String get saveButtonLabel => 'Сохранить';

  @override
  String get scanTextButtonLabel => 'Сканировать текст';

  @override
  String get scrimLabel => 'Маска';

  @override
  String get scrimOnTapHintRaw => r'Закрыть $modalRouteContentName';

  @override
  ScriptCategory get scriptCategory => ScriptCategory.englishLike;

  @override
  String get searchFieldLabel => 'Поиск';

  @override
  String get selectAllButtonLabel => 'Выбрать все';

  @override
  String get selectYearSemanticsLabel => 'Выберите год';

  @override
  String? get selectedRowCountTitleFew => r'Выбрано $selectedRowCount объекта';

  @override
  String? get selectedRowCountTitleMany =>
      r'Выбрано $selectedRowCount объектов';

  @override
  String? get selectedRowCountTitleOne => 'Выбран 1 объект';

  @override
  String get selectedRowCountTitleOther => r'Выбрано $selectedRowCount объекта';

  @override
  String? get selectedRowCountTitleTwo => null;

  @override
  String? get selectedRowCountTitleZero => 'Строки не выбраны';

  @override
  String get showAccountsLabel => 'Показать аккаунты';

  @override
  String get showMenuTooltip => 'Показать меню';

  @override
  String get signedInLabel => 'Вход выполнен';

  @override
  String get tabLabelRaw => r'Вкладка $tabIndex из $tabCount';

  @override
  TimeOfDayFormat get timeOfDayFormatRaw => TimeOfDayFormat.H_colon_mm;

  @override
  String get timePickerDialHelpText => 'Выберите время';

  @override
  String get timePickerHourLabel => 'Часы';

  @override
  String get timePickerHourModeAnnouncement => 'Выберите часы';

  @override
  String get timePickerInputHelpText => 'Укажите время';

  @override
  String get timePickerMinuteLabel => 'Минуты';

  @override
  String get timePickerMinuteModeAnnouncement => 'Выберите минуты';

  @override
  String get unspecifiedDate => 'Дата';

  @override
  String get unspecifiedDateRange => 'Диапазон дат';

  @override
  String get viewLicensesButtonLabel => 'Посмотреть лицензии';
}
