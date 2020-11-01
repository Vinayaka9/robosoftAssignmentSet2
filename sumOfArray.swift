1. To get the sum of numbers in the given arrays ?

import Foundation

func someArray(array: [[[Int]]]) -> Int {
    var sum = 0

    for i in 0..<(array.count) {
        for j in 0..<(array[i].count) {
            for k in 0..<(array[i][j].count) {
                 sum += array[i][j][k]
            }
        }
    }
    return sum
}
print(someArray(array: [[[1,2,3],[1,2,3]],[[1,2,3],[1,2,3]],[[1,2,3],[1,2,3]]]))


OR by using recursive function

import Foundation

func sumOfArray(array: [Any]) -> Int {
    var sum = 0
    for value in array {
        if let temp = value as? [Any] {
            sum += sumOfArray(array: temp)
        } else {
            if let temp = value as? Int {
                sum = sum + temp
            }
        }
    }
    return sum
}

let number = [ 
  [3, 5, 8], 
  [4, 5], 
  [
    [8, 1, 9, 5],
    [2, 4],
  ]
]

[ 
  [3, 5, 8], 
  [4, 5], 
  [8, 1, 9, 5],
  [2, 4]
]

print(sumOfArray(array: number))
