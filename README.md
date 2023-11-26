# make-flutter

## Overview

The `make-flutter` project utilizes a Makefile to streamline various Flutter development tasks. This Makefile is designed to automate common Flutter development workflows such as fetching dependencies, running build runners, formatting code, running tests with coverage, and more. It simplifies the development process, making it more efficient and error-free.



## Setup

To use the Makefile in your project, follow these steps:

1. **Clone the `make-flutter` Repository**:
   Ensure that the `make-flutter` repository is cloned one directory level up from your current project.

2. **Reference the Makefile**:
   In your project's Makefile, add the following lines to reference the `make-flutter` Makefile:

   ```makefile
   # Define the path to the external Makefile
   EXTERNAL_MAKEFILE := ../make-flutter/Makefile

   # Include the external Makefile
   include $(EXTERNAL_MAKEFILE)
   ```

   This setup allows you to use the functionalities defined in the `make-flutter` Makefile directly in your project.


## Makefile Content

The `make-flutter` Makefile includes the following targets:

- `pub_get`: Runs Flutter `pub get` to fetch project dependencies.
- `build_runner`: Executes `build_runner` to generate necessary files.
- `format`: Formats the code in the `lib` and `test` directories.
- `test`: Runs tests with coverage and opens the coverage report.
- `pretty`: A combination of `pub_get`, `build_runner`, and `format` for a comprehensive cleanup and setup.
- `fix`: Applies suggested fixes to the code.

Each target is designed to be self-contained, allowing for flexible use depending on the developer's needs.

## Usage

To use any of the targets in the Makefile, run the following command in your terminal:

```bash
make [target]
```

For example, to format your project, you would run:

```bash
make format
```

This will execute the formatting process for both the `lib` and `test` directories of your Flutter project.


## Contributions

We welcome contributions from the community to enhance and expand the capabilities of the `make-flutter` Makefile. If you have suggestions for additional Make commands or improvements to existing ones, here's how you can contribute:

1. **Fork the Repository**:
   - Start by forking the `make-flutter` repository to your own GitHub account.

2. **Update the Documentation**:
   - If you've added new commands or significantly changed existing ones, update the `README.md` or other relevant documentation to reflect these changes. Provide clear explanations and usage examples.

3. **Create a Pull Request (PR)**:
   - Submit a pull request to the original `make-flutter` repository. In the PR description, explain your changes and why they are beneficial to the project.

We appreciate your interest in contributing to the `make-flutter` project and look forward to seeing your innovative ideas and improvements!
