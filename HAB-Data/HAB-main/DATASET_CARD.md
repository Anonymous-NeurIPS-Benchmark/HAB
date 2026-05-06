# Dataset Card for HAB

## Dataset name
HAB: Hardware-Grounded Arduino Benchmark

## Motivation
The motivation behind HAB is to provide a standardized, rigorous framework for evaluating Large Language Models (LLMs) on their ability to generate code that is correctly grounded in physical hardware constraints. While existing code benchmarks focus on software logic, HAB bridges the gap between digital code and physical interaction, specifically for the Arduino ecosystem.

## Composition
The dataset is composed of **434** distinct Arduino projects, covering a wide range of hardware interactions.
- **Project Count**: 434
- **Board Families**: 3 supported families (Arduino Uno, Arduino Uno R4 WiFi, and NodeMCU ESP8266).
- **Difficulty Levels**: 3 levels (Low, Medium, High).
- **Hardware Components**: 171 unique components in the dictionary.
- **API Signatures**: 1247 unique pin/function signatures.
- **Subsets**:
    - **Test Set**: 66 projects for final evaluation.
    - **Diagnostic Slice**: 10 projects for quick debugging and iteration.

## Data sources
The project data was sourced from public Arduino project sharing platforms and community repositories. These sources were curated to ensure a diversity of sensors, actuators, and logical patterns.

## Annotations
Each instance in the dataset includes the following expert-curated annotations:
- **Component Labels**: Identification of all hardware modules involved.
- **Required Libraries**: List of C++ libraries needed for compilation.
- **Target Board**: The specific microcontroller board the project was designed for.
- **Difficulty**: Categorization based on circuit complexity and code logic.
- **Evaluation Splits**: Reproducible splits for training, validation, and testing.

## Intended use
The dataset is intended for research use in the evaluation of code generation models, specifically those targeting embedded systems, IoT, and hardware-software co-design.

## Out-of-scope use
This dataset is not intended for the direct creation of production-grade firmware for critical systems. Users should not rely on generated code for safety-critical applications or high-voltage hardware without expert human review.

## Known limitations
- The benchmark is currently limited to 3 major board families.
- The reference sketches may reflect specific programming styles of their original authors.
- Source URLs for public projects may become deprecated over time.

## Safety
The project prompts and reference sketches describe standard 5V/3.3V electronics. There are no intentionally hazardous configurations included. However, physical implementation of any circuit always carries inherent risks of short circuits or component damage if wired incorrectly.

## License
The HAB dataset structure and metadata are released under the **MIT License**.
Individual project source codes and assets are subject to the licenses of their respective original authors.
