import Foundation
@_spi(GeneratedClientSupport) import InnoNetwork


public protocol ProtobufNetworkClient: NetworkClient {
    func protobufRequest<T: ProtobufAPIDefinition>(_ request: T) async throws -> T.APIResponse
}

extension DefaultNetworkClient: ProtobufNetworkClient {
    public func protobufRequest<T: ProtobufAPIDefinition>(_ request: T) async throws -> T.APIResponse {
        try await perform(executable: ProtobufSingleRequestExecutable(base: request))
    }
}
