# SwiftSpan

## Installation

```
dependencies: [
    .package(url: "https://github.com/OliverLetterer/SwiftSpan.git", .upToNextMajor(from: "1.0.0"))
]
```

## Usage

```swift
let span = [ 1, 2, 3 ].swiftSpan

for i in 0..<span.count {
    print(span[i])
}
```
