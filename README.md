# Focus Flow

[![CI](https://github.com/your-org/focus-flow/actions/workflows/ci.yml/badge.svg)](https://github.com/your-org/focus-flow/actions/workflows/ci.yml) [![Flutter](https://img.shields.io/badge/Flutter-3.19%2B-54C5F8?logo=flutter)](https://flutter.dev)

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
flutter test integration_test
flutter run
```

The repository intentionally has no bundled raster images: this product is a text-first productivity tool, so there are no image payloads to decode or lazy-load. Scrollable content uses builder APIs and the UI keeps state local to avoid broad rebuilds.

## Quality gates

CI runs formatting verification, static analysis, unit/widget tests, and integration tests on every push and pull request. A release build can be created with `flutter build apk --release` or `flutter build ipa --release` on macOS.

## Screenshots

Add device screenshots to `docs/screenshots/` when publishing the public repository. The application is designed for phone portrait layouts and adapts naturally to larger widths.

## License

Private demonstration project.
