import Foundation
import InnoNetwork
import SwiftProtobuf


public extension AnyResponseDecoder where Output: SwiftProtobuf.Message {
    static func protobuf() -> Self {
        Self { data, response in
            do {
                return try Output(serializedBytes: data)
            } catch {
                throw NetworkError.decoding(
                    stage: .responseBody,
                    underlying: SendableUnderlyingError(error),
                    response: response
                )
            }
        }
    }
}

public extension AnyResponseDecoder where Output: SwiftProtobuf.Message & HTTPEmptyResponseMessage {
    static func protobufEmptyCapable() -> Self {
        Self { data, response in
            if data.isEmpty || response.statusCode == 204 {
                return Output.emptyResponseValue()
            }

            do {
                return try Output(serializedBytes: data)
            } catch {
                throw NetworkError.decoding(
                    stage: .responseBody,
                    underlying: SendableUnderlyingError(error),
                    response: response
                )
            }
        }
    }
}
