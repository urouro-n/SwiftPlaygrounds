import Foundation

// via http://useyourloaf.com/blog/updating-strings-for-swift-3/

let message = String(repeating: "hello!", count: 10)

let hello = "こんにちは"
hello.characters
hello.unicodeScalars
hello.utf16
hello.utf8

message[message.startIndex]
message[message.index(after: message.startIndex)]
message[message.index(before: message.endIndex)]
message[message.index(message.startIndex, offsetBy: 1)]
message[message.index(message.endIndex, offsetBy: -2)]

hello.index(hello.startIndex, offsetBy: 0, limitedBy: hello.endIndex)
hello.index(hello.startIndex, offsetBy: 4, limitedBy: hello.endIndex)
hello.index(hello.startIndex, offsetBy: 5, limitedBy: hello.endIndex)
hello.index(hello.startIndex, offsetBy: 6, limitedBy: hello.endIndex)

hello.characters.index(of: "に")
message.characters.index(of: "o")

if let indexOfChi = hello.characters.index(of: "ち") {
    hello.distance(from: hello.startIndex, to: indexOfChi)
}

