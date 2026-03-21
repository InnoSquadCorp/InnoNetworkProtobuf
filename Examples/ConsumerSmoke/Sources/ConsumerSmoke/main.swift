import Foundation
import InnoNetwork
import InnoNetworkProtobuf

let client = DefaultNetworkClient(
    configuration: .safeDefaults(baseURL: URL(string: "https://api.example.com")!)
)

_ = client
_ = ProtobufEmptyResponse()

print("ConsumerSmoke OK")
