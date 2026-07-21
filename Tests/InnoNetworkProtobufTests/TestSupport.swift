import Foundation
import InnoNetwork


func makeTestNetworkConfiguration(
    baseURL: String,
    timeout: TimeInterval = 30.0,
    cachePolicy: URLRequest.CachePolicy = .useProtocolCachePolicy,
    retryPolicy: RetryPolicy? = nil,
    networkMonitor: (any NetworkMonitoring)? = nil,
    metricsReporter: (any NetworkMetricsReporting)? = nil,
    trustPolicy: TrustPolicy = .systemDefault,
    eventObservers: [any NetworkEventObserving] = []
) -> NetworkConfiguration {
    NetworkConfiguration.advanced(
        baseURL: URL(string: baseURL)!,
        resilience: ResiliencePack(retry: retryPolicy),
        observability: ObservabilityPack(
            eventObservers: eventObservers,
            networkMonitor: networkMonitor,
            metricsReporter: metricsReporter
        ),
        transport: TransportPack(
            timeout: timeout,
            cachePolicy: cachePolicy,
            trustPolicy: trustPolicy
        )
    )
}
