# Changelog

All notable changes to this project will be documented in this file.

The format is based on Keep a Changelog and the project follows Semantic Versioning for the public 1.x line.

## [Unreleased]

### Added

- No unreleased entries yet.

## [1.0.0]

### Added

- Initial OSS package split for protobuf request and response support on top of `InnoNetwork`
- `ProtobufAPIDefinition`, `ProtobufNetworkClient`, `ProtobufEmptyResponse`, and `HTTPEmptyResponseMessage`
- Docs / contract sync automation, protobuf doc smoke target, and consumer smoke validation
- OSS governance documents, release policy, migration policy, support policy, and issue / PR templates

### Changed

- Protobuf support now lives outside the core `InnoNetwork` package so consumers that do not need protobuf no longer resolve `swift-protobuf`
