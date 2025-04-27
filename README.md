# 🚀 crewmeister_app

The central entrypoint for the Crewmeister application.
This Flutter app ties together all internal packages—including absence_manager as the feature module and crewmeister_core for shared utilities—to deliver a modular, high-performance, and well-architected solution.

## Preview 
### 📱 iOS

<p align="center">
  <img src="https://github.com/kartikeyaa-k/crewmeister_app/blob/dev/assets/ios-demo.gif?raw=true" alt="iOS Demo" width="250"/>
</p>

### 💻 Web

<p align="center">
  <img src="https://github.com/kartikeyaa-k/crewmeister_app/blob/dev/assets/web-demo.gif?raw=true" alt="Web Demo" width="700"/>
</p>

## 🌐 Live Web App

👉 [**View Live App**](https://kartikeyaa-k.github.io/crewmeister_app/)

Please use chrome for better compatibility.
Hosted via GitHub Pages, built with `flutter build web --base-href=/crewmeister_app/`

## 📱 APK Download

- Go to: [Actions tab](https://github.com/kartikeyaa-k/crewmeister_app/actions)
- Click latest run of **Build & Deploy APK + Web**
- Download `crewmeister_app_apk` under **Artifacts**

## 🚀 Continuous Integration & Deployment

This repo uses **GitHub Actions** to:

- ✅ Build & upload release **APK** as artifact
- ✅ Build and deploy the **web version** to GitHub Pages
- ✅ Run tests and validate formatting/lints


## ⚙️ Getting Started

## 📂 Folder Structure

```txt
crewmeister_app/
├── bootstrap.dart               # Entry bootstrap logic with environment setup
├── crewmeister_app.dart         # Root widget of the app
├── environment_config.dart      # Environment-specific configurations
├── main.dart                    # Main file for launching the app
├── service_locator.dart         # Dependency injection setup
```

### 🔨 Prerequisites

- Flutter SDK (>=3.29.3)
- Dart SDK (>=3.7.2)
- `absence_manager_api` – for running locally, see: [absence_manager_api GitHub](https://github.com/kartikeyaa-k/absence_manager_api)

### 📥 Installation

```bash
# Clone the repo
git clone https://github.com/your-org/crewmeister.git
cd crewmeister

# Install dependencies
flutter pub get 
# or run the script if available
./build_runner.sh
```

### ▶️ Run the App

You can run the app using VS Code’s launch config or via CLI:

```bash
flutter run -t lib/main.dart --dart-define=BASE_URL=https://absence-manager-api-4245.onrender.com
```

#### 📦 VS Code Launch Config Example:

```json
{
  "version": "0.2.0",
  "configurations": [
    {
      "name": "crewmeister_app",
      "request": "launch",
      "type": "dart",
      "program": "lib/main.dart",
      "args": [
        "--dart-define=BASE_URL=https://absence-manager-api-4245.onrender.com",
        "--web-browser-flag=--disable-web-security"
      ]
    }
  ]
}
```

## 🧪 Running Tests

```bash
flutter test
```

✅ 100% coverage for core business logic  
🧪 Tests are located in [`absence_manager`](../absence_manager) and [`crewmeister_core`](../crewmeister_core)


## 🧩 Project Modules

This app depends on the following packages:

- [`absence_manager`](../absence_manager) – Absence management logic, including pages, components, state management, and API integration
- [`crewmeister_core`](../crewmeister_core) – Shared utilities, design system, theme, and network layer
- [`absence_manager_api`](https://github.com/kartikeyaa-k/absence_manager_api) – Dart Frog backend for serving absence data


## ✨ Highlights

- Cleanly separated concerns via modular packages
- Uses `GetIt` for dependency injection
- Applies `GoogleFonts.poppins` and Material3 theming
- Tested state management using `bloc_test`
- Member name mapping with absences handled on server side
- Lint rules
- Zero dart analyze issues.
- Test cases
- Githooks - missing
- PR rules - missing
- Light & Dark theme support, App changes theme as per device theme
- 100% coverage unit test for business logic
- Updated mock data to 2025 to be more relevant for testing or demo 

## 📌 TODOs

- [ ] Add pre-push git hook for test & lint
- [ ] Enforce PR-based branch protection
- [ ] CI badge + version badge
- [ ] Changelog file and tag-based release notes
