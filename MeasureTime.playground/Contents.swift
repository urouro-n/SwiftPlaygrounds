//: Playground - noun: a place where people can play

import UIKit

// via https://speakerdeck.com/kishikawakatsumi/swift-performance
func measure(call: () -> Void) {
    let startTime = CACurrentMediaTime()
    call()
    let endTime = CACurrentMediaTime()
    print("Time - \(round(endTime - startTime))")
}

measure {
    sleep(2)
}