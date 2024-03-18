//Arguements & Return-value Closures

import Foundation

func performOperation(a: Int, b: Int, operation : (Int, Int) -> Int) -> Int  {
    operation(a, b)
}

let add: (Int, Int) -> Int = { $0 + $1}

let result = performOperation(a: 10, b: 20, operation: add)
print(result)
// Sorting & filtering by closures
struct Person {
    var name: String
    var age: Int
}

let people = [
    Person(name: "Jack", age: 55),

    Person(name: "Alice", age: 28),
    Person(name: "Steve", age: 67),
    Person(name: "Gates", age: 44),
    Person(name: "Bir", age: 32),
    Person(name: "Bob", age: 22),
    Person(name: "Charlie", age: 35),
    Person(name: "David", age: 40),
    Person(name: "Stephen", age: 39),
    Person(name: "Tom", age: 45)
]
//Sorting
let sortByAge = people.sorted(by: { person1, person2 in
    return person1.age < person2.age
})
for i in sortByAge {
    print(i.name)
}

//Filtering
let filterByAge = people.filter { person in
    return person.age >= 40
}
print("Filtering: \n ")
for i in filterByAge {
    print(i.name)
}
