Package that provides unofficial support for Kazakh language, actually for Kazakhstan location.

## Features

No need to create a custom Kazakh language support, all you need is here.

## Getting started

1. import library;
2. add delegates from library;

## Usage

Simple example of usage:

```dart
   return MaterialApp(
      // This should be mutable
      locale: Locale('kz'),
      supportedLocales: [Locale('kz')],
      // Delegates should be placed here
      localizationsDelegates: [
        // Some other delegates
        ...KzDelegates.delegates(),
      ],
      theme: ThemeData.light(),
      home: const Scaffold(),
    );
```
