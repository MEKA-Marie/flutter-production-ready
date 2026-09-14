# Focus Flow

[![CI](https://github.com/MEKA-Marie/flutter-production-ready/actions/workflows/ci.yml/badge.svg)](https://github.com/MEKA-Marie/flutter-production-ready/actions/workflows/ci.yml) [![Flutter](https://img.shields.io/badge/Flutter-3.19%2B-54C5F8?logo=flutter)](https://flutter.dev)

Focus Flow is a production-ready focus planner built with Flutter. It provides a calm daily workflow for planning tasks, running focus sessions, reviewing progress, and switching between English and French.

## Features

- Five responsive screens: Dashboard, Tasks, Focus, Insights, and Settings.
- English and French localization with native Flutter delegates.
- Accessible labels on interactive controls and Material 3 navigation.
- Lazy task lists with `ListView.builder` and stable `const` widgets where possible.
- Repository-driven business logic, isolated from presentation.

## Architecture

- `lib/models`: immutable domain models.
- `lib/data`: repositories and data access.
- `lib/l10n`: localization contract and delegates.
- `lib/main.dart`: composition root and feature screens.
- `test`: unit and widget tests.
- `integration_test`: end-to-end smoke tests.

## Setup

```bash
flutter pub get
flutter analyze
flutter test
flutter test integration_test -d linux
flutter run
```

The repository intentionally has no bundled raster images: this product is a text-first productivity tool, so there are no image payloads to decode or lazy-load. Scrollable content uses builder APIs and the UI keeps state local to avoid broad rebuilds.

## Quality gates

CI runs Dart formatting verification, static analysis, unit/widget tests, Linux integration tests, and an Android release build on every push and pull request. The generated APK is available in the workflow run under **Artifacts**. An iOS build requires macOS and Apple signing credentials and can be created with `flutter build ipa --release`.

## Screenshots

The application is designed for phone portrait layouts and adapts naturally to larger widths. Add exported device screenshots to `docs/screenshots/` after running the app on an emulator or physical device; the directory contains the capture instructions.

## License

Public educational demonstration project.
