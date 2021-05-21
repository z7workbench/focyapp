import 'package:flutter/widgets.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

String getMonth(int month, BuildContext context) {
  switch (month) {
    case 1:
      return AppLocalizations.of(context)!.jan;
    case 2:
      return AppLocalizations.of(context)!.feb;
    case 3:
      return AppLocalizations.of(context)!.mar;
    case 4:
      return AppLocalizations.of(context)!.apr;
    case 5:
      return AppLocalizations.of(context)!.may;
    case 6:
      return AppLocalizations.of(context)!.jun;
    case 7:
      return AppLocalizations.of(context)!.jul;
    case 8:
      return AppLocalizations.of(context)!.aug;
    case 9:
      return AppLocalizations.of(context)!.sep;
    case 10:
      return AppLocalizations.of(context)!.oct;
    case 11:
      return AppLocalizations.of(context)!.nov;
    case 12:
      return AppLocalizations.of(context)!.dec;
    default:
      throw Exception();
  }
}
