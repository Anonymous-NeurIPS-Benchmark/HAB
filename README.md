# HAB Anonymous Review Artifact

This package is an anonymized review artifact for **HAB: Benchmarking Hardware-Grounded Arduino Code Generation from Natural Language**.

## Contents

- `llm_outputs/`: model outputs and stage-level diagnostics on the 10-project diagnostic slice.
- `results/`: retrieval, extraction, and pipeline evaluation outputs, including files with 434-project retrieval-level results where available.
- `notebooks/`: sanitized notebooks for reproducing the reference pipeline and analyses. Outputs are cleared and secrets/local paths are redacted.
- `requirements.txt`: Python dependencies.
- `setup_arduino_cli.sh`: Arduino CLI setup script.
- Croissant metadata with core and Responsible AI fields is provided separately in `HAB_croissant_anonymous_review.json`.
- `DATASET_CARD.md`: dataset card for review.
- `LICENSE.md`: license and access restrictions.
- `PROVENANCE_AND_ACCESS.md`: source and redistribution notes.

## Important reviewer note

The original development notebooks referenced a local `data/` directory containing raw project metadata, component dictionaries, and ground-truth files. The uploaded artifact used to build this an[...]