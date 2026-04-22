# API Stability

This document defines the compatibility contract for the public OSS release of `InnoNetworkProtobuf`.

## Stable

- `ProtobufAPIDefinition`
- `ProtobufNetworkClient`
- `ProtobufEmptyResponse`
- `HTTPEmptyResponseMessage`
- `AnyResponseDecoder.protobuf()`
- `AnyResponseDecoder.protobufEmptyCapable()`

## Provisionally Stable

- package dependency requirements on `InnoNetwork`
- installation guidance in the README
- smoke examples and troubleshooting guidance

## Internal/Operational

- protobuf adapter execution internals
- local workspace dependency wiring before the matching `InnoNetwork` release ships
- test support utilities and CI workflow structure

## Notes

- Stable items follow semantic versioning once the package is published.
- `InnoNetwork` remains the source of truth for `DefaultNetworkClient`, transport behavior, retry behavior, and trust policy.
- `ProtobufNetworkClient` depends on the stable public low-level execution contract in `InnoNetwork`:
  `LowLevelNetworkClient`, `perform(executable:)`, `SingleRequestExecutable`, and `RequestPayload`.
