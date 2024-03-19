//: [Previous](@previous)

import Foundation

var greeting = "Hello, playground"

print(greeting)
//: [Next](@next)

var arr: [Int] = [10, 8 ,-5, 7, 11, 14, 0, 10]

var min = arr[0]

for i in arr {
    if i < min {
        min = i
    }
}
print("Minimum number: \( min)")



for i in 0..<arr.count {
    if arr[i] < 1 {
       arr[i] = 1
    }
}
print(arr)
