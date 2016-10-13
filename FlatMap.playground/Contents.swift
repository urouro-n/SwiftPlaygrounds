// https://jeremywsherman.com/blog/2016/09/22/a-practical-example-of-flatmap/

import UIKit

protocol Decodable {
    static func decode(from base64String: String?) -> String?
}

class StandardDecorder: Decodable {
    static func decode(from base64String: String?) -> String? {
        guard let base64String = base64String,
            let data = Data(base64Encoded: base64String),
            let string = String(data: data, encoding: String.Encoding.utf8) else {
                return nil
        }
        
        return string
    }
}

StandardDecorder.decode(from: "ZXhhbXBsZQ==")
StandardDecorder.decode(from: "ZXhhbXBsZ==")
StandardDecorder.decode(from: "foobarbaz")

class FlatMapDecorder: Decodable {
    static func decode(from base64String: String?) -> String? {
        return base64String
            .flatMap { Data(base64Encoded: $0) }
            .flatMap { String(data: $0, encoding: .utf8) }
    }
}

FlatMapDecorder.decode(from: "ZXhhbXBsZQ==")
FlatMapDecorder.decode(from: "ZXhhbXBsZ==")
FlatMapDecorder.decode(from: "foobarbaz")
