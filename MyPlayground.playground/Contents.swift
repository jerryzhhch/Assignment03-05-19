import UIKit

// Problem 1
var sum = 0
for num in 1..<1000 {
    if num % 3 == 0 || num % 5 == 0 {
        sum = sum + num
    }
}
print(sum)

// Problem 2
var s = 0
var num1 = 1
var num2 = 2
while num2 <= 4000000{
    if num2 % 2 == 0 {
        s += num2
    }
    let temp = num1
    num1 = num2
    num2 = num1 + temp
}
print(s)

// Problem 3
var factors = [Int]()
var num = 600851475143
var i = 2
while num != 1 {
    while num % i != 0 {
        i += 1
    }
    if factors.contains(i) {
//        continue
    }
    else {
        factors.append(i)
    }
    num = num / i
}
print(factors.last ?? 0)

// Problem 4
var big = 0
var r = 0
func isPalindrome(n: Int) -> Bool {
    if String(n) == String(String(n).reversed()) {
        return true
    }
    else {
        return false
    }
}

for num1 in stride(from: 999, to: 0, by: -1) {
    for num2 in stride(from: 999, to: 0, by: -1) {
        r = num1 * num2
        if isPalindrome(n: r) == true {
            if big == 0 {
                big = r
            }
            else {
                if r > big {
                    big = r
                }
            }
        }
    }
}
print(big)

// Problem 5
var base = 2520
var n = 1
var f = false
while f == false {
    for i in 11...20 {
        if base * n % i == 0 {
            f = true
        }
        else {
            f = false
            break
        }
    }
    n += 1
}
print(base * (n - 1))

// Problem 6
func sumOfSquares(n: Int) -> Int {
    return n * (n + 1) * (2 * n + 1) / 6
}
func squareOfSum(n: Int) -> Int {
    return Int(pow(Double(n * (n + 1) / 2), 2))
}
print(squareOfSum(n: 100)  - sumOfSquares(n: 100))

// Problem 7
var count = 0
var number = 2
func isPrime(n: Int) -> Bool {
    switch n {
    case 2, 3:
        return true
    default:
        for i in 2...Int(sqrt(Double(n))) {
            if n % i == 0 {
                return false
            }
        }
        return true
    }
}

while count != 10001 {
    if isPrime(n: number) == true {
        count += 1
    }
    number += 1
}
print(number)

// Problem 8
let longNumber = "7316717653133062491922511967442657474235534919493496983520312774506326239578318016984801869478851843858615607891129494954595017379583319528532088055111254069874715852386305071569329096329522744304355766896648950445244523161731856403098711121722383113622298934233803081353362766142828064444866452387493035890729629049156044077239071381051585930796086670172427121883998797908792274921901699720888093776657273330010533678812202354218097512545405947522435258490771167055601360483958644670632441572215539753697817977846174064955149290862569321978468622482839722413756570560574902614079729686524145351004748216637048440319989000889524345065854122758866688116427171479924442928230863465674813919123162824586178664583591245665294765456828489128831426076900422421902267105562632111110937054421750694165896040807198403850962455444362981230987879927244284909188845801561660979191338754992005240636899125607176060588611646710940507754100225698315520005593572972571636269561882670428252483600823257530420752963450"
var si = 0
var ei = 987
var max = 0
while ei >= 0 {
    let startIndex = longNumber.index(longNumber.startIndex, offsetBy: si)
    let endIndex = longNumber.index(longNumber.endIndex, offsetBy: -ei)
    let subString = longNumber[(startIndex ..< endIndex)]
    
    var pro = 1
    for i in subString {
        pro *= Int(String(i))!
    }
    if pro > max {
        max = pro
    }
    
    si += 1
    ei -= 1
}
print(max)

// Problem 9
let sum9 = 1000
var product = 0
for a in 1...sum9/3 {
    for b in a+1 ... sum9/2 {
        let c = sum9 - a - b
        if a*a + b*b == c*c {
            product = a * b * c
            print(a,b,c)
        }
    }
}
print(product)

//Problem 10
var sum10 = 0
var Pnum = 2
func isPrime10(n: Int) -> Bool {
    switch n {
    case 2, 3:
        return true
    default:
        for i in 2...Int(sqrt(Double(n))) {
            if n % i == 0 {
                return false
            }
        }
        return true
    }
}

while Pnum < 2000000 {
    if isPrime10(n: Pnum) == true {
        sum10 += Pnum
    }
    number += 1
}
print(sum10)
