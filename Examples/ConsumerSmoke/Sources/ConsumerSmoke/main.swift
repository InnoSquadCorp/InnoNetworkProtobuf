import Foundation
import InnoNetwork
import InnoNetworkProtobuf

private struct SmokeRequest: ProtobufAPIDefinition {
    typealias Parameter = ProtobufEmptyResponse
    typealias APIResponse = ProtobufEmptyResponse

    var method: HTTPMethod { .post }
    var path: String { "/smoke.protobuf" }
    let parameters: ProtobufEmptyResponse? = ProtobufEmptyResponse()
}

@Sendable private func smokeProtobufRequest(_ client: any ProtobufNetworkClient) async throws {
    _ = try await client.protobufRequest(SmokeRequest())
}

let client = DefaultNetworkClient(
    configuration: .safeDefaults(baseURL: URL(string: "https://api.example.com")!)
)
let protobufClient: any ProtobufNetworkClient = client

_ = client
_ = protobufClient
_ = ProtobufEmptyResponse()
_ = SmokeRequest()
_ = smokeProtobufRequest

print("ConsumerSmoke OK")
