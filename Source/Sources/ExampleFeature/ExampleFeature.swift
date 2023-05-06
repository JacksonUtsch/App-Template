import ComposableArchitecture
import UserDefaultsDependency

public struct ExampleFeature: ReducerProtocol {

  public struct State: Hashable, Sendable {

  }

  public enum Action: Hashable, Sendable {
    case test
  }

  public var body: some ReducerProtocol<State, Action> {
    Reduce { state, action in
        .none
    }
  }
}
