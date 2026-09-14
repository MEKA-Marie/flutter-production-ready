import 'package:flutter/widgets.dart';

class AppLocalizations {
  const AppLocalizations(this.locale);

  final Locale locale;
  static AppLocalizations of(BuildContext context) =>
      Localizations.of<AppLocalizations>(context, AppLocalizations)!;
  bool get isFrench => locale.languageCode == 'fr';

  String get appName => isFrench ? 'Focus Flow' : 'Focus Flow';
  String get dashboard => isFrench ? 'Accueil' : 'Dashboard';
  String get tasks => isFrench ? 'Taches' : 'Tasks';
  String get focus => isFrench ? 'Focus' : 'Focus';
  String get insights => isFrench ? 'Progres' : 'Insights';
  String get settings => isFrench ? 'Reglages' : 'Settings';
  String get goodMorning => isFrench ? 'Bonjour, Alex' : 'Good morning, Alex';
  String get todayPlan =>
      isFrench ? 'Votre plan du jour' : 'Your plan for today';
  String get completed => isFrench ? 'terminees' : 'completed';
  String get remaining => isFrench ? 'restantes' : 'remaining';
  String get minutesFocused =>
      isFrench ? 'minutes concentrees' : 'minutes focused';
  String get today => isFrench ? 'Aujourd’hui' : 'Today';
  String get startFocus =>
      isFrench ? 'Demarrer une session' : 'Start a focus session';
  String get chooseTask => isFrench ? 'Choisissez une tache' : 'Choose a task';
  String get weeklyProgress =>
      isFrench ? 'Progression hebdomadaire' : 'Weekly progress';
  String get preferences => isFrench ? 'Preferences' : 'Preferences';
  String get language => isFrench ? 'Langue' : 'Language';
  String get french => isFrench ? 'Francais' : 'French';
  String get english => isFrench ? 'Anglais' : 'English';
  String get noTasks => isFrench ? 'Aucune tache trouvee' : 'No tasks found';
  String get markDone =>
      isFrench ? 'Marquer comme terminee' : 'Mark as completed';
  String get allTasks => isFrench ? 'Toutes les taches' : 'All tasks';
  String get statistics => isFrench ? 'Statistiques' : 'Statistics';

  static const LocalizationsDelegate<AppLocalizations> delegate = _Delegate();
}

class _Delegate extends LocalizationsDelegate<AppLocalizations> {
  const _Delegate();
  @override
  bool isSupported(Locale locale) => ['en', 'fr'].contains(locale.languageCode);
  @override
  Future<AppLocalizations> load(Locale locale) async =>
      AppLocalizations(locale);
  @override
  bool shouldReload(_Delegate old) => false;
}
