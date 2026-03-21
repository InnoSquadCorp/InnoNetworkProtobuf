import Foundation
import InnoNetwork
import InnoNetworkProtobuf
import SwiftProtobuf

private struct SmokeRequest: SwiftProtobuf.Message, Sendable {
    var unknownFields = SwiftProtobuf.UnknownStorage()

    init() {}

    static let protoMessageName: String = "SmokeRequest"

    mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
        while try decoder.nextFieldNumber() != nil {}
    }

    func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
        try unknownFields.traverse(visitor: &visitor)
    }

    func isEqualTo(message: any SwiftProtobuf.Message) -> Bool {
        guard let other = message as? SmokeRequest else { return false }
        return unknownFields == other.unknownFields
    }
}

private struct SmokeResponse: SwiftProtobuf.Message, Sendable {
    var unknownFields = SwiftProtobuf.UnknownStorage()

    init() {}

    static let protoMessageName: String = "SmokeResponse"

    mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
        while try decoder.nextFieldNumber() != nil {}
    }

    func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
        try unknownFields.traverse(visitor: &visitor)
    }

    func isEqualTo(message: any SwiftProtobuf.Message) -> Bool {
        guard let other = message as? SmokeResponse else { return false }
        return unknownFields == other.unknownFields
    }
}

private struct SmokeAPI: ProtobufAPIDefinition {
    typealias Parameter = SmokeRequest
    typealias APIResponse = SmokeResponse

    var method: HTTPMethod { .post }
    var path: String { "/protobuf" }
    var parameters: SmokeRequest? { SmokeRequest() }
}

let client = DefaultNetworkClient(
    configuration: .safeDefaults(baseURL: URL(string: "https://api.example.com")!)
)

_ = client
_ = SmokeAPI()
_ = ProtobufEmptyResponse()

print("InnoNetworkProtobufDocSmoke OK")
