# SneakerTell 👟

[![Flutter](https://img.shields.io/badge/Flutter-02569B?style=for-the-badge&logo=flutter&logoColor=white)](https://flutter.dev/)
[![Dart](https://img.shields.io/badge/Dart-0175C2?style=for-the-badge&logo=dart&logoColor=white)](https://dart.dev/)
[![License](https://img.shields.io/badge/License-MIT-blue.svg?style=for-the-badge)](LICENSE)

**SneakerTell** is an elegant, modern mobile application concept built with **Flutter**. Designed for sneaker enthusiasts and online shoppers, SneakerTell delivers a sleek, minimalist e-commerce experience showcasing premium footwear, seamless navigation, and interactive UI components.

---

## 🚀 Key Features

- **Sleek Intro & Onboarding**: Clean splash/intro page featuring bold typography, brand tagline (*"Just Sell IT"*), and direct call-to-action navigation.
- **Modern Navigation Drawer**: Custom styled drawer featuring dark gradient backgrounds, user branding header, rounded corners, and intuitive menu items.
- **Floating Bottom Navigation Bar**: Integrated with [`google_nav_bar`](https://pub.dev/packages/google_nav_bar) for smooth, modern tab switching between Shop and Cart.
- **Interactive Shop Grid**: Responsive 2-column product catalog displaying footwear items, descriptions, pricing, and visual mockups.
- **Shopping Cart Screen**: Dedicated cart UI featuring item lists, quantity pricing calculations, swipeable/removable items layout, and checkout call-to-action.
- **Extensible Pages**: Pre-structured scaffold for **Wishlist** and **About** pages for future backend integration.

---

## 🛠️ Tech Stack & Dependencies

- **Framework**: [Flutter](https://flutter.dev/)
- **Language**: [Dart](https://dart.dev/)
- **Key Packages**:
  - [`google_nav_bar`](https://pub.dev/packages/google_nav_bar): Modern animated bottom navigation bar.
  - [`cupertino_icons`](https://pub.dev/packages/cupertino_icons): iOS style icons.
  - [`flutter_lints`](https://pub.dev/packages/flutter_lints): Recommended code lints for Flutter apps.

---

## 📁 Project Architecture

```text
sneakertell/
├── android/                 # Android native code
├── ios/                     # iOS native code
├── lib/
│   ├── components/          # Reusable UI widgets
│   │   └── bottom_nav_bar.dart  # Custom Google Nav Bar wrapper
│   ├── images/              # Sneaker product images and brand logos
│   │   ├── logo.png
│   │   ├── shoe.jpg
│   │   └── ...
│   ├── pages/               # Application screens
│   │   ├── intro_page.dart  # Splash/Intro screen
│   │   ├── home_page.dart   # Main layout with Drawer & Navigation
│   │   ├── shop_page.dart   # Grid view product catalog
│   │   ├── cart_page.dart   # Cart list & Checkout summary
│   │   ├── wishlist_page.dart # Wishlist placeholder
│   │   └── about_page.dart  # About page info
│   └── main.dart            # Application entry point
├── pubspec.yaml             # Project dependencies and asset definitions
└── README.md                # Documentation
```

---

## 📱 App Navigation Flow

```text
[ IntroPage ] ──(Shop Now)──> [ HomePage ]
                                 ├── Drawer (Navigation Menu: Home, Shop, Wishlist, About)
                                 ├── Bottom Navigation Bar
                                 │      ├── [ ShopPage ] (Product Grid & Search Bar)
                                 │      └── [ CartPage ] (Cart Items & Checkout)
```

---

## ⚡ Getting Started

### Prerequisites

Ensure you have the following installed on your development machine:
- [Flutter SDK](https://docs.flutter.dev/get-started/install) (3.x or higher)
- [Dart SDK](https://dart.dev/get-dart)
- Android Studio / Xcode / VS Code with Flutter extension
- An active Android Emulator or iOS Simulator

### Installation

1. **Clone the repository**:
   ```bash
   git clone https://github.com/your-username/sneakertell.git
   cd sneakertell
   ```

2. **Install dependencies**:
   ```bash
   flutter pub get
   ```

3. **Run the application**:
   ```bash
   flutter run
   ```

---

## 🔮 Roadmap & Future Improvements

- [ ] State Management integration (Provider / Riverpod / Bloc) for dynamic cart management.
- [ ] Real-time database & backend connection (Firebase or REST API).
- [ ] User authentication (Login / Signup / OAuth).
- [ ] Dark Mode support and customizable theme presets.
- [ ] Integrated payment gateway (Stripe / Apple Pay / Google Pay).

---

## 📄 License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.
