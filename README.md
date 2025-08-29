# Yummly

Yummly is a feature-rich, multi-platform food delivery application built with Flutter. It provides a complete user flow from browsing a menu and customizing orders to checkout and delivery tracking. The app utilizes Firebase for backend services and features a clean, responsive UI with both light and dark themes.

## Core Features

-   **Firebase Authentication**: Secure user login and registration using email and password.
-   **Dynamic Food Menu**: Browse a diverse menu categorized into Burgers, Salads, Sides, Desserts, and Drinks.
-   **Order Customization**: Add food items to the cart and customize them with available add-ons.
-   **Shopping Cart**: View, manage, and modify items in the cart. The quantity of items can be easily incremented or decremented.
-   **Payment Simulation**: A realistic checkout-flow with a credit card form for payment processing.
-   **Order & Delivery Management**:
    -   Generates a detailed receipt upon order confirmation.
    -   Saves order history to Firestore.
    -   Features a delivery progress page with a simulated driver location.
-   **Theme Customization**: Seamlessly switch between a light and dark mode, with the preference saved locally.
-   **User Profile**: Update and manage the delivery address.

## Technologies Used

-   **Framework**: Flutter
-   **Backend**: Firebase
    -   **Authentication**: Firebase Auth
    -   **Database**: Cloud Firestore (for storing orders)
-   **State Management**: `provider`
-   **Key Packages**:
    -   `firebase_core`, `firebase_auth`, `cloud_firestore`
    -   `flutter_credit_card` for the payment UI.
    -   `shared_preferences` for theme persistence.
    -   `intl` for date formatting on receipts.

## Project Structure

The project follows a clean, feature-first architecture to ensure scalability and maintainability.

```
lib/
├── core/               # Core utilities, shared components, and services.
│   ├── components/     # Reusable widgets (MyButton, MyTextField).
│   └── database/       # Firestore service.
└── features/           # Feature-based modules.
    ├── auth/           # Authentication flow (login, register, auth gate).
    ├── cart/           # Shopping cart page and widgets.
    ├── home/           # Main screen, food menu, models, and widgets.
    ├── payment/        # Checkout, payment, and delivery tracking.
    ├── settings/       # App settings (e.g., theme toggle).
    └── theme/          # Theme definitions and provider.
```

## Getting Started

To get a local copy up and running, follow these simple steps.

### Prerequisites

-   Flutter SDK: [Installation Guide](https://flutter.dev/docs/get-started/install)
-   A code editor like VS Code or Android Studio.
-   A Firebase project.

### Installation

1.  **Clone the repository:**
    ```sh
    git clone https://github.com/mohammedashraf16/yummly.git
    cd yummly
    ```

2.  **Install dependencies:**
    ```sh
    flutter pub get
    ```

3.  **Set up Firebase:**
    -   Create a new project on the [Firebase Console](https://console.firebase.google.com/).
    -   Enable **Authentication** (Email/Password provider) and **Cloud Firestore**.
    -   Follow the FlutterFire CLI instructions to configure your app:
        ```sh
        flutterfire configure
        ```
    -   This will generate a new `lib/firebase_options.dart` file and configure your native platform projects (e.g., add `google-services.json` for Android).

4.  **Run the application:**
    ```sh
    flutter run
