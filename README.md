# SwiftUI Fruit Store UI/UX Design

Welcome to the **SwiftUI Fruit Store** mobile application! This project focuses on creating an engaging user interface (UI) and user experience (UX) for a fruit store app, designed entirely in SwiftUI without any backend integration. The goal is to understand how different views connect and how each component of the app is organized.

## Overview

The Fruit Store app showcases a visually appealing design that enhances user interaction and navigation. By focusing on UI and UX principles, this project serves as a practical learning experience for understanding SwiftUI's capabilities in building seamless mobile applications.

## Table of Contents

- [Features](#features)
- [Installation](#installation)
- [Architecture](#architecture)
- [Learning Objectives](#learning-objectives)
- [License](#license)

## Features

- **User-Centric Design**: A modern and intuitive interface that prioritizes user experience.
- **Seamless Navigation**: Easy transitions between different views, allowing users to explore fruits effortlessly.
- **Responsive Layout**: Adapts to various screen sizes and orientations, ensuring consistency across devices.
- **No Backend Required**: Focuses on front-end design, simulating data presentation without backend integration.

## Installation

To run the SwiftUI Fruit Store application, you need Xcode installed on your macOS. Follow these steps to set up the project:

1. Clone the repository:
   ```bash
   git clone https://github.com/username/repository.git

## Architecture

The application follows the Model-View-ViewModel (MVVM) architecture to ensure a clear separation of concerns:

1. **Model**:
   - Defines the data structures, such as `Fruit`, with properties like `name`, `image`, `description`, and `price`.

2. **View**:
   - Implements the user interface using SwiftUI components, focusing on individual screens like the home screen and fruit detail view.

3. **ViewModel**:
   - Manages the business logic and prepares data for the views, ensuring that the UI is decoupled from the underlying data logic.

### Key Features of the Architecture:

- **Separation of Concerns**: Each component has a distinct role, improving maintainability and scalability.
- **Navigation Flow**: Utilizes `NavigationView` and `NavigationLink` for intuitive transitions between views.
- **Static Data Handling**: Simulates data presentation without a backend using static arrays to represent available fruits.
- **Responsive UI Design**: Employs SwiftUI's declarative syntax to create adaptive layouts that function well across various devices.

This architecture promotes a clean, organized, and user-friendly application, making it easier to build upon and enhance in the future.

## Lerning Objectives

1. Understanding SwiftUI Basics
2. Apply fundamental UI/UX design principles to create intuitive and visually appealing layouts, focusing on user interaction and experience.
3. Learn how to create and organize multiple views in a SwiftUI application, understanding the role of each view in the overall user experience.
4. Integration of Assets:

## License

This project is licensed under the Apache License 2.0. See the [LICENSE](LICENSE) file for details.
