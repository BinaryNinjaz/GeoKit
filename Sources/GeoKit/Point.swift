import Swift

struct Point<Number: BinaryFloatingPoint> {
  var x: Number
  var y: Number
  
  init(_ x: Number, _ y: Number) {
    (self.x, self.y) = (x, y)
  }
}

extension Point : Equatable {
  static func ==(lhs: Point, rhs: Point) -> Bool {
    return lhs.x == rhs.x && lhs.y == rhs.y
  }
}

extension Point : CustomStringConvertible {
  var description: String {
    return "(\(x) \(y))"
  }
}
