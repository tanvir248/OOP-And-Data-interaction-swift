//: [Previous](@previous)

import Foundation

class person {
    var name: String
    var color: String
    var height: Float
    var maritalStatus: String
    var age: String
    var profession: String
    
    init(name: String, color: String, height: Float, maritalStatus: String, profession: String, age: String) {
        self.name = name
        self.color = color
        self.height = height
        self.maritalStatus = maritalStatus
        self.profession = profession
        self.age = age
    }
}
class introvert: person {
    let serious = "And then the introverts arrived"
    init() {
        super()
    }
    func introvertArrivedToProtest {
        print("You know things are serious when the introverts arrive")
    }
}

class drugAddicted: person {
    init() {
        super()
    }
}

var nexdecade: [introvert]
var drugaddict: drugAddicted

