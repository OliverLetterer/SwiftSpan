import Foundation

public struct SwiftSpan<Element, Value> {
    private let value: Value
    public let pointer: UnsafePointer<Element>
    public let count: Int
    
    public init(value: Value, pointer: UnsafePointer<Element>, count: Int) {
        self.value = value
        self.pointer = pointer
        self.count = count
    }
    
    @inlinable
    @inline(__always)
    public subscript(i: Int) -> Element {
        return pointer[i]
    }
}

public extension Data {
    var swiftSpan: SwiftSpan<UInt8, Data> {
        let pointer = withUnsafeBytes({ return $0.baseAddress! }).bindMemory(to: UInt8.self, capacity: count)
        
        return SwiftSpan(value: self, pointer: pointer, count: count)
    }
}

public extension Array {
    var swiftSpan: SwiftSpan<Element, Array<Element>> {
        let pointer = withUnsafeBytes({ return $0.baseAddress! }).bindMemory(to: Element.self, capacity: count)
        
        return SwiftSpan(value: self, pointer: pointer, count: count)
    }
}
