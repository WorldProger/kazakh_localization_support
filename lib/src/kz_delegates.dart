import 'package:flutter/widgets.dart';
import 'package:kazakh_localization_support/kazakh_localization_support.dart';

class KzDelegates {
  // Hidden constuctor
  KzDelegates._();

  /// Provides list of localization delegates related to Turkmen language
  ///
  /// Returns ios/android localized delegates, in case if ios is not needed
  /// use direct delegate: [KzMaterialLocalization.delegate]
  static const Iterable<LocalizationsDelegate<dynamic>> delegates = [
    KzMaterialLocalization.delegate,
    KzCupertinoLocalization.delegate
  ];
}
