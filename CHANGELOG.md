# Changelog

All notable changes to this project will be documented in this file.

The format is based on Keep a Changelog and the project follows Semantic Versioning for the public 3.x line.

## [Unreleased]

### Added

- Consumer smoke now compiles a real `protobufRequest(_:)` call through
  `any ProtobufNetworkClient`, so regressions in the public adapter
  entry point are caught without `@testable import`.

### Changed

- The protobuf adapter now tracks `InnoNetwork` `main` on `main` and
  runs on the stable public low-level execution contract
  (`perform(executable:)`, `SingleRequestExecutable`, `RequestPayload`)
  instead of any private bridge.

## [3.0.1]

### Added

- Initial OSS package split for protobuf request and response support on top of `InnoNetwork`
- `ProtobufAPIDefinition`, `ProtobufNetworkClient`, `ProtobufEmptyResponse`, and `HTTPEmptyResponseMessage`
- Docs / contract sync automation, protobuf doc smoke target, and consumer smoke validation
- OSS governance documents, release policy, migration policy, support policy, and issue / PR templates

### Changed

- Protobuf support now lives outside the core `InnoNetwork` package so consumers that do not need protobuf no longer resolve `swift-protobuf`
- Core dependency is pinned to `InnoNetwork` `3.0.1` for the initial public release
