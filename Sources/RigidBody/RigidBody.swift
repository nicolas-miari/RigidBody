import Foundation
import Component
import simd

public final class RigidBody: Component {

  /// Mass shouldn't need to change in most scenarios, but let's keep the door open.
  public var mass: Float

  /// Ignore third components for 2D games.
  public var acceleration: SIMD3<Float>

  /// Ignore third components for 2D games.
  public var velocity: SIMD3<Float>

}
