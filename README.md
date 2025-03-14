# Talsec Flutter Project Documentation

## Table of Contents
- [Project Overview](#project-overview)
- [Getting Started](#getting-started)
  - [Prerequisites](#prerequisites)
  - [Installation](#installation)
  - [Languages](#languages)
- [Project Structure](#project-structure)
- [Dependencies](#dependencies)
  - [Main Dependencies](#main-dependencies)
  - [Dev Dependencies](#dev-dependencies)
- [Usage](#usage)
- [APK Usage](#apk-usage)
  - [Build APK](#build-apk)
- [License](#license)
- [Feedback](#feedback)
- [Assignment](#assignment)

## Project Overview
An Talsec assignment to try out implement the mobile app with their [freerasp pasckage](https://pub.dev/packages/freerasp).

The first screen is shown imedietally after the install from apk. The second one should be display after few seconds when the unofficialStore callback is triggered.
<p align="center">
    <img src="assets/after_install_apk.png?raw=true" width="45%" />
    <img src="assets/after_install_apk_warning.png?raw=true" width="45%" />
</p>

## Getting Started
### Prerequisites
Ensure you have the following installed:
- [Flutter SDK](https://flutter.dev/docs/get-started/install)
  - The project uses the [3.27.2 flutter sdk](https://storage.googleapis.com/flutter_infra_release/releases/stable/windows/flutter_windows_3.27.2-stable.zip). 
- Dart SDK (included with Flutter)
- Android Studio or VS Code
- Emulator or physical device for testing

### Installation
1. Clone the repository:
   ```bash
   git clone https://github.com/AntoninKadrmas/talsec_flutter_project.git
   ```
2. Navigate to the project directory:
   ```bash
   cd talsec_flutter_project
   ```
3. Install dependencies:
   ```bash
   flutter pub get
   ```
4. Run the application:
   ```bash
   flutter run
   ```

### Languages

1. edit existing language files in `/lib/l10n` for example `/lib/l10n/intl_en.arb` or add new `intl_{lang-shortcut}.arb`.
2. all newly created languages add into `supportedLocales` in `MaterialApp` widget in `main.dart`
3. Navigate to the project directory and generate languages:
   ```bash
   flutter pub run intl_utils:generate
   ```

## Project Structure
```
talsec_flutter_project/
│-- lib/
│   │-- build               # apk file
│   │-- generated/          # generated translations
│   │-- l10n/               # translation templates
│   │-- theme/              # theme color, utils
│   │-- utils/              # provider, initializer
│   │-- widgets/            # UI, widgets
│   │-- main.dart           # app initialization
│-- Licence                 # Project licence
│-- pubspec.yaml            # Project dependencies
│-- README.md               # Project documentation
```

## Dependencies

This project uses the following dependencies:

### Main Dependencies:

- `flutter_riverpod`: ^2.6.1 (State management)
- `freerasp`: ^6.12.0 (Runtime Application Self-Protection)
- `flutter_localizations`: (Built-in localization support)
- `intl`: (Internationalization and date formatting)
- `google_fonts`: ^6.2.1 (Custom fonts)

### Dev Dependencies:

- `flutter_test`: (Testing framework)
- `intl_utils`: ^2.5.0 (Localization utilities)

## Usage

To run the app on an Android emulator:

```bash
flutter emulators --launch <emulator_id>
flutter run --target-platform android
```

Replace `<emulator_id>` with your emulator's ID, which you can find using:

```bash
flutter emulators
```

## APK usage

Either use the apk that already exists in the `/lib/build` folder. Or build a new one.

### Build APK
1. Install dependencies:
   ```bash
   flutter pub get
   ```
2. Build the application:
   ```bash
   flutter build apk 
   ```

## License
This project is licensed under the [MIT License](LICENSE).

## Feedback 
The documentation was really straight forward and all the steps well documented. That is what I can say about the freeRASP. I thought the usage of the package would be much harder than just download the package from pub.dev and edit the android configuration (Manifest, setting, etc.).

Although I did not find any information about malwareConfig option in he AndroidConfig widget (was looking in [Flutter api doc](https://docs.talsec.app/freerasp/integration/flutter/api)).

Also the onUnofficialStore callback did not work in the emulator for me so i had to try another (onScreenShot) callback to verify if the implementation do catches the callback and correctly propagate the information into my widget. And then I downloaded the apk on my phone to check that the onUnofficialStore callback works.

Also in the documentation (was looking in [Flutter api doc](https://docs.talsec.app/freerasp/integration/flutter/api)) in API section there was no information about the onScreenShot or onScreenRecording callbacks in the ThreatCallback section. And the wiki link is just span that is underlined with title of "Broken link".

So if I look away from the Flutter documentation limitations I still thinks the integration was straight forward. And the pub.dev example useful.

## Assignment

**Task Overview:**  
***Objective***: Create a simple mobile application utilizing the freeRASP library to inform users that it is not installed from Google Play using the onUntrustedInstallationSourceDetected callback.  
***Deadline***: 1 week  
***Submission Format***: Publish your app’s code to a repository on GitHub and **send us a link to the repository**. Optionally, you can publish/send us the built application, but the code repository is enough 🙂.

**Suggested steps:**

1. Check the freeRASP README.md [https://github.com/talsec/Free-RASP-Community](https://github.com/talsec/Free-RASP-Community)  
2. Choose your preferred platform and corresponding freeRASP flavor (Flutter, Capacitor, React Native, Cordova, Android, iOS) [https://github.com/talsec/Free-RASP-Community?tab=readme-ov-file\#overview](https://github.com/talsec/Free-RASP-Community?tab=readme-ov-file#overview)  
3. Start new project (and git commit & git publish to your GitHub repository **regularly**)  
4. Integrate the freeRASP  
5. Utilize onUntrustedInstallationSourceDetected callback and warn user if app is not installed from Google Play Store

**Example projects (every freeRASP flavor comes with one):**  
Flutter: [https://github.com/talsec/Free-RASP-Flutter/tree/master/example](https://github.com/talsec/Free-RASP-Flutter/tree/master/example)  
Android: [https://github.com/talsec/Free-RASP-Android/tree/master/FreeRASPDemoApp](https://github.com/talsec/Free-RASP-Android/tree/master/FreeRASPDemoApp)  
Duplication of existing demo apps is **prohibited**. Otherwise, you can use any public sources, ChatGPT, StackOverflow, etc.

You should end up with app like this:
<p align="center">
    <img src="assets/assignment.png?raw=true" width="50%" />
</p>  