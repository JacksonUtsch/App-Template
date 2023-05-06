import ComposableArchitecture
import XCTest
@testable import ExampleFeature

final class ExampleFeatureTests: XCTestCase {
  @MainActor
  func testExample() async {
    let store = TestStore(
      initialState: ExampleFeature.State(),
      reducer: ExampleFeature()
        .dependency(\.userDefaults, .ephemeral())
    )

     await store.send(.test)
  }
}
