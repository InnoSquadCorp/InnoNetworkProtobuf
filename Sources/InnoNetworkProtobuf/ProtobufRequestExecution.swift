import Foundation
import InnoNetwork
import SwiftProtobuf


struct ProtobufSingleRequestExecutable<Base: ProtobufAPIDefinition>: SingleRequestExecutable {
    let base: Base

    var logger: NetworkLogger { base.logger }
    var requestInterceptors: [RequestInterceptor] { base.requestInterceptors }
    var responseInterceptors: [ResponseInterceptor] { base.responseInterceptors }
    var method: HTTPMethod { base.method }
    var path: String { base.path }
    var headers: HTTPHeaders { base.headers }

    func makePayload() throws -> RequestPayload {
        if case .get = method {
            if base.parameters != nil {
                throw NetworkError.invalidRequestConfiguration(
                    "GET requests with protobuf parameters are not supported. " +
                    "Protobuf messages cannot be serialized to URL query parameters. " +
                    "Use POST/PUT methods for requests with protobuf body, or set parameters to nil for GET requests."
                )
            }
            return .none
        }

        guard let parameters = base.parameters else { return .none }
        return .data(try parameters.serializedData())
    }

    func decode(data: Data, response: Response) throws -> Base.APIResponse {
        try base.responseDecoder.decode(data: data, response: response)
    }
}
