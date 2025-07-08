# 🧪 SauceDemo Robot Appium

Automated mobile test project using **Robot Framework** with **Appium**, targeting the **SauceDemo** Android app.  
This project uses a local Appium server instance to interact with the application and test its behavior through an emulator or real device.

---

## 📦 Technologies Used

- [Node.js](https://nodejs.org/)
- [Appium](https://appium.io/)
- [Appium Inspector](https://github.com/appium/appium-inspector)
- [Robot Framework](https://robotframework.org/)
- [Python 3](https://www.python.org/)
- [Android Studio (AVD Emulator)](https://developer.android.com/studio)
- [AppiumLibrary for Robot Framework](https://github.com/serhatbolsu/robotframework-appiumlibrary)

---

## 📂 Project Structure

```

saucedemo-robot-appium/
├── App/                         # Target mobile application
├── resources/
│   ├── fixtures/                # Static JSON data (e.g., product list)
│   ├── locators/                # Element locators (YAML format)
│   ├── screen/                  # Screen-level keywords
│   ├── utils/                   # Utility keywords (e.g., custom keywords, helpers)
│   └── base.robot               # Shared setup/teardown and libraries
├── tests/                       # Test cases organized by feature
├── package.json                 # Node dependencies (Appium-related)
├── requirements.txt             # Python dependencies (Robot Framework)

```

---

## 🚀 Appium Setup

This project uses a **local Appium server**. To get started, follow the steps below:

### 🔧 Initialize Node.js project

```bash
npm init         # Interactive setup
# or
npm init -y      # Automatic setup with defaults
```

### 📦 Install Appium

```bash
npm install appium@2.0.1
```

### ▶️ Start Appium server

```bash
npx appium
```

---

## 🩺 Appium Doctor

### Install Appium Doctor

```bash
npm install appium-doctor -D
```

### Inspect environment setup

```bash
npx appium-doctor --android
```

---

## 🧩 Appium Drivers

### Check installed drivers

```bash
npx appium driver list --installed
```

### Install `uiautomator2` driver (required for Android)

```bash
npx appium driver install uiautomator2
```

---

## 🐍 Python Environment Setup (with `venv`)

It is recommended to use a **virtual environment** to isolate Python dependencies.

### ✅ Create Virtual Environment

#### On **Windows**:

```bash
python -m venv venv
```

#### On **Linux/macOS**:

```bash
python3 -m venv venv
```

---

### 🔄 Activate Virtual Environment

#### On **Windows CMD or PowerShell**:

```bash
venv\Scripts\activate
```

#### On **Windows with Git Bash**:

```bash
source venv/Scripts/activate
```

#### On **Linux/macOS**:

```bash
source venv/bin/activate
```

---

### ❎ Deactivate Virtual Environment

```bash
deactivate
```

---

## 🤖 Install Robot Framework

### Inside the virtual environment:

```bash
pip install robotframework
```

### Check installed version:

```bash
robot --version
```

---

## 📱 Install Appium Library for Robot Framework

```bash
pip install --upgrade robotframework-appiumlibrary
```

---

## 📥 Install Dependencies from the Project

If you've cloned this repository, simply run:

### 📦 Node dependencies (for Appium)

```bash
npm install
```

### 🐍 Python dependencies

```bash
pip install -r requirements.txt
```

---

## 📲 Android Emulator

This project uses an Android emulator created via **Android Studio**:

- Open Android Studio
- Go to **Device Manager**
- Create a Virtual Device (Pixel recommended)
- Make sure the emulator is running before executing the tests
- Confirm it's connected using:

```bash
adb devices
```

---

## ✅ Ready to Run

Once everything is installed:

```bash
robot tests/
```

---

## 🧠 Notes

- You must have an Android emulator or real device connected and visible via `adb devices`.
- Appium Inspector can be used to inspect accessibility ids and XPath expressions.
- Locators are organized in YAML format under `resources/locators/` for maintainability.

---

## 📌 License

This project is open source and under the MIT License.
