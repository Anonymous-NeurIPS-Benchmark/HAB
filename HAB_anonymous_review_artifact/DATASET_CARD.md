# Dataset Card: HAB Anonymous Review Version

## Dataset summary

HAB is a benchmark for hardware-grounded Arduino code generation from natural language. The paper describes 434 real-world Arduino projects, three target Arduino boards, three difficulty levels, a hardware dictionary of 87 components, and 1,247 representative API signatures.

## Intended use

The dataset is intended for benchmarking systems that translate natural-language physical-computing requests into Arduino sketches while preserving hardware constraints. It supports staged evaluation of component extraction, library grounding, intent understanding, pin mapping, structured planning, and final sketch synthesis.

## Out-of-scope use

This dataset should not be used to deploy generated code to real hardware without human review. Compilation is not a guarantee of electrical safety, runtime correctness, or suitability for a specific physical build.

## Sources and provenance

The benchmark is derived from public Arduino project resources, including Circuit Digest and Arduino Project Hub, plus Arduino board documentation. A final public release should include a per-instance source URL, source license, and redistribution status.

## Annotation process

The paper reports three annotators who reorganized each source project into standardized HAB instances. They labeled target board, difficulty, components, required libraries, reference sketch availability, and source provenance. The current paper draft reports 87% observed agreement and Cohen's kappa of 0.79; final release should include field-level agreement and annotator qualifications.

## Known limitations

The current benchmark focuses on Arduino Uno Rev3, Arduino Uno R4 WiFi, and Arduino Mega 2560 Rev3. Results may not transfer to ESP32, RP2040, STM32, or other microcontroller ecosystems. Some evaluation metrics use LLM-as-judge diagnostics and may vary by judge model or prompt. Arduino CLI compilation is stronger than text similarity but does not replace hardware-in-the-loop testing.

## Personal or sensitive information

The benchmark is about public Arduino projects and does not intentionally include human-subject data. Public source URLs may contain author names on external sites; a final release should not use those names for identity inference and should avoid redistributing personal information beyond what is necessary for provenance.

## License

HAB annotations, metadata, prompts, splits, and hardware dictionary entries: CC BY 4.0. Evaluation code: MIT. Third-party sketches and source project text: original licenses or metadata-only when redistribution is unclear.
