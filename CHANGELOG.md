# Changelog

All notable changes to this project will be documented in this file.

The format is based on Keep a Changelog. Released 3.x tags remain stable while
`main` prepares the next major line alongside InnoNetwork 5.0.

## [Unreleased]

### Added

- Explicit `sessionAuthentication` intent on every `ProtobufAPIDefinition`.

### Changed

- Follow the unreleased InnoNetwork 5.0 `main` branch until matching release
  tags are available.
- Use the narrow `GeneratedClientSupport` SPI for binary payload execution and
  `InnoNetworkTestSupport` for consumer-owned transport tests.
- Map protobuf decode failures to the structured `NetworkError.decoding` case
  and migrate retry/configuration tests to the 5.0 contracts.

## [3.0.1]

### Added

- Initial OSS package split for protobuf request and response support on top of `InnoNetwork`
- `ProtobufAPIDefinition`, `ProtobufNetworkClient`, `ProtobufEmptyResponse`, and `HTTPEmptyResponseMessage`
- Docs / contract sync automation, protobuf doc smoke target, and consumer smoke validation
- OSS governance documents, release policy, migration policy, support policy, and issue / PR templates

### Changed

- Protobuf support now lives outside the core `InnoNetwork` package so consumers that do not need protobuf no longer resolve `swift-protobuf`
- Core dependency is pinned to `InnoNetwork` `3.0.1` for the initial public release
