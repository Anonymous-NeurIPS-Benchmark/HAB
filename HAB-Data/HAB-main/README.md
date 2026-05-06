# HAB: Hardware-Grounded Arduino Benchmark

HAB is a comprehensive, multi-modal benchmark designed for evaluating Large Language Models (LLMs) on their ability to generate accurate Arduino code and circuit configurations. Unlike general-purpose code benchmarks, HAB focuses on the intersection of software logic and hardware constraints.

## 🌟 Overview

The dataset consists of **434** real-world Arduino projects, meticulously curated to cover a wide range of hardware interactions. 

- **Total Projects**: 434
- **Hardware Components**: 171 unique components (sensors, actuators, displays, etc.)
- **Difficulty Levels**: Categorized into `Low`, `Medium`, and `High` based on logic complexity and hardware variety.
- **Board Families**: Supports 3 major board families (e.g., Uno, R4 Wifi, ESP32).
- **Format**: Data is provided in developer-friendly JSONL and JSON formats.

## 📊 Dataset Structure

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

## 📄 File Descriptions

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

## 🚀 How to Load

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

## 📜 Citation

If you use HAB in your research, please cite our work:

```bibtex
@article{hab_benchmark2026,
  title={HAB: Hardware-Grounded Arduino Benchmark},
  author={Team text-to-arduino},
  journal={arXiv preprint},
  year={2026}
}
```

## ⚖️ License

The HAB dataset is released under the **MIT License**. See `LICENSE.md` for full details. Individual project source codes may be subject to their original licenses as documented in `provenance/`.
