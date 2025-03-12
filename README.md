# zanis_sample

Zanis Test is a Flutter project that demonstrates the application of clean architecture principles
alongside modern state management techniques using both BLoC and GetX. The project also integrates
native Swift code, showcasing how to leverage platform-specific functionality on iOS.

# Overview
This repository serves as a sample application for Zanis company built with Flutter, highlighting the benefits of a
well-structured codebase through clean architecture. It combines BLoC and GetX for effective state
management, utilizes dependency injection for improved modularity and testing, and incorporates
native Swift code to extend functionality on iOS devices.


# Features
Clean Architecture: Ensures a clear separation of concerns, making the codebase scalable and maintainable.
State Management: Implements BLoC for managing business logic and GetX for reactive UI updates.
Dependency Injection: Enhances modularity and facilitates easier testing by decoupling components.
Native Swift Integration: Demonstrates how to integrate iOS-specific features within a Flutter project.

# Architecture
The project follows clean architecture principles by separating concerns into distinct layers:

Presentation Layer: Handles the UI using Flutter widgets and leverages GetX for reactive state management.
Domain Layer: Contains the business logic and use cases that drive the application's behavior.
Data Layer: Manages data operations and integrates with native modules.
Dependency Injection: Ensures components are loosely coupled, promoting easier maintenance and testability.

## NOTE (we didn't have any api call so the domain layer and data layer is empty)


## Getting Started

Flutter SDK : sdk: '>=3.3.4 <4.0.0'
Xcode (for iOS development)
Dart

# Installation

1: Clone the Repository:
git clone https://github.com/golnarSheikhBahaie/zanis_test.git

2:Install Dependencies:
add flutter pub get to your terminal

3:Run the App:
flutter run (on android)

## see the result only Available on Ios devices



