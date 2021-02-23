import Foundation

func generateArr(withSize n: Int, andMaxRand k: Int = 100) -> [[Int]] {
    var sizes = [Int]()
    var result = [[Int]]()
    let randMax = k
    
    while sizes.count != n && sizes.count != randMax {
        let rand = Int.random(in: 1...randMax)
        if !sizes.contains(rand) {
            sizes.append(rand)
        }
    }

    for i in sizes {
        let arr = (0...i).map( {_ in Int.random(in: 1...1000)} )
        result.append(arr)
    }

    for i in 0..<result.count {
        (i + 1) % 2 == 0 ? result[i].sort() :
                           result[i].sort(by: >)
    }
    
    return result
}

print(generateArr(withSize: 10000))

