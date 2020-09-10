import UIKit

var str = "Hello, playground"

// default arguments labels as parameter names
func greet(person: String, day: String) -> String {
    return "Hello \(person), today is \(day)."
}

print(greet(person: "Bob", day: "Tuesday"))

// use wildcards and predefined parameter names
func greet(_ person: String, on day: String) -> String {
    return "Hello \(person), today is \(day)."
}

print(greet("John", on: "Wednesday"))


// return tuples
func calculateStatistics(scores: [Int]) -> (min: Int, max: Int, sum: Int) {
    var min = scores[0]
    var max = scores[0]
    var sum = 0
    for score in scores {
        if score > max {
            max = score
        } else if score < min {
            min = score
        }
        sum += score
    }
    
    return (min, max, sum)
}

let statistics = calculateStatistics(scores: [5, 3, 100, 3, 9])
print(statistics.sum)
print("sum: \(statistics.2)")
print("min: \(statistics.min)")
print("max: \(statistics.max)")

// use nested functions
func returnFifteen() -> Int {
    var y  = 10
    func add() {
        y += 5
    }
    add()
    return y
}

print(returnFifteen())

// return a function as a result of another function execution
func makeIncrementer() -> ((Int) -> Int) {
    func addOne(number: Int) -> Int {
        return 1 + number
    }
    return addOne
}

var increment = makeIncrementer()
print(increment(7))

