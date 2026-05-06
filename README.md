# HAB Anonymous Review Artifact

This package is an anonymized review artifact for **HAB: Benchmarking Hardware-Grounded Arduino Code Generation from Natural Language**.

## HAB: Hardware-Grounded Arduino Benchmark

HAB is a comprehensive, multi-modal benchmark designed for evaluating Large Language Models (LLMs) on their ability to generate accurate Arduino code and circuit configurations. Unlike general-purpose code benchmarks, HAB focuses on the intersection of software logic and hardware constraints.

#### 🌟 Overview

The dataset consists of **434** real-world Arduino projects, meticulously curated to cover a wide range of hardware interactions. 

- **Total Projects**: 434
- **Hardware Components**: 171 unique components (sensors, actuators, displays, etc.)
- **Difficulty Levels**: Categorized into `Low`, `Medium`, and `High` based on logic complexity and hardware variety.
- **Board Families**: Supports 3 major board families (e.g., Uno, R4 Wifi, ESP32).
- **Format**: Data is provided in developer-friendly JSONL and JSON formats.

#### 📊 Dataset Structure

The dataset is organized into several functional subdirectories:

```text
HAB/
├── metadata/              # Core instance data and dataset splits
├── annotations/           # Specialized labels (components, libraries, pins)
├── hardware_dictionary/   # Component specifications and API signatures
├── prompts/               # Text prompts for code generation
├── evaluation_subsets/    # Curated subsets for benchmarking (Validated 100, Diagnostic 10)
└── provenance/            # Source URLs and licensing information
```

#### 📄 File Descriptions

| File | Description |
| :--- | :--- |
| `metadata/hab_instances.jsonl` | Main metadata file containing project IDs, prompts, and ground truth paths. |
| `metadata/splits.json` | Mapping of project IDs to Train (303), Validation (65), and Test (66) sets. |
| `annotations/components.jsonl` | List of hardware components required for each project. |
| `annotations/libraries.jsonl` | Required C++ libraries for each project. |
| `annotations/pins.jsonl` | Pin mapping and wiring requirements for hardware components. |
| `hardware_dictionary/hardware_dictionary.jsonl` | Detailed technical specifications for all 171 components. |
| `prompts/prompts.jsonl` | Isolated text prompts for easy model input. |
| `evaluation_subsets/validated_100.json` | High-quality validated subset of 100 (currently 66) test cases. |
| `provenance/source_urls.jsonl` | Attribution and source links for each project. |

#### 🚀 How to Load

The dataset is designed to be easily loaded using Python:

```python
import json

# Loading instances
with open('HAB/metadata/hab_instances.jsonl', 'r') as f:
    instances = [json.loads(line) for line in f]

# Loading splits
with open('HAB/metadata/splits.json', 'r') as f:
    splits = json.load(f)

# Accessing a specific split
test_instances = [inst for inst in instances if inst['project_id'] in splits['test']]
```

## HAB-REF pipeline and experiments

- `llm_outputs/`: model outputs and stage-level diagnostics on the 10-project diagnostic slice.
- `results/`: retrieval, extraction, and pipeline evaluation outputs, including files with 434-project retrieval-level results where available.
- `notebooks/`: sanitized notebooks for reproducing the reference pipeline and analyses. Outputs are cleared and secrets/local paths are redacted.
- `requirements.txt`: Python dependencies.
- `setup_arduino_cli.sh`: Arduino CLI setup script.
- Croissant metadata with core and Responsible AI fields is provided separately in `HAB_croissant_anonymous_review.json`.
- `DATASET_CARD.md`: dataset card for review.
- `LICENSE.md`: license and access restrictions.
- `PROVENANCE_AND_ACCESS.md`: source and redistribution notes.

## Setup

1. **Python Environment**: Ensure you have Python installed. Create a virtual environment and install the requirements:
    ```bash
    python3 -m venv .venv
    source .venv/bin/activate
    pip install -r requirements.txt
    ```

2. **Arduino CLI**: Run the setup script to download the CLI and install core libraries:
    ```bash
    ./setup_arduino_cli.sh
    ```

3. **Environment Variables**: Add your API keys to the `.env` file for the LLM providers (Groq, Together, Mistral, OpenAI).

## Pipeline Stages

The system is organized sequentially into numbered Jupyter Notebooks located in the `notebooks/` directory. Begin with `stage0_environment.ipynb` and proceed sequentially. Outputs of the final evaluation are saved in `outputs/`.
