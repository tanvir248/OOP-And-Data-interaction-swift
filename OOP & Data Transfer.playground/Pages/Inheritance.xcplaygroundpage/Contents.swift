// An example of inheritance

import Foundation

class Person {
    var name: String
    var color: String
    var height: Float
    var maritalStatus: String
    var age: Int
    var profession: String
    
    init(name: String, color: String, height: Float, maritalStatus: String, profession: String, age: Int) {
        self.name = name
        self.color = color
        self.height = height
        self.maritalStatus = maritalStatus
        self.profession = profession
        self.age = age
    }
    func personDetails () {
        print("Name: \(name)")
        print("color: \(color)")
        print("height: \(height)")
        print("maritalStatus: \(maritalStatus)")
        print("age: \(age)")
        print("profession: \(profession)")
    }
}

class Introvert: Person {
    
    var spendTimeInHome: Int
    var socialActivitiesperyear: Int
    // Straight-forward way to put data on superclass
    init(spendTimeInHome: Int, socialActivitiesperyear: Int, name: String, color: String, height: Float, maritalStatus: String, profession: String, age: Int) {
        self.spendTimeInHome = spendTimeInHome
        self.socialActivitiesperyear = socialActivitiesperyear
        super.init(name: name, color: color, height: height, maritalStatus: maritalStatus, profession: profession, age: age)
    }
    
    func introvertArrivedToProtest() {
        print("You know things are serious when the introverts arrive.")
    }
    //System of polymorphism
    override func personDetails() {
        // super.personDetails() is a way to get superclass values from overrried class
        super.personDetails()
        print("spendTimeInHome: \(spendTimeInHome)")
        print("socialActivitiesperyear: \(socialActivitiesperyear)")
    }
    
}
class Student: Person {
    var schoolType : String
    var studyingClass: String
    // Make a different way to put data on super class initializer
    init(schoolType: String, studyingClass: String, person: Person) {
        self.schoolType = schoolType
        self.studyingClass = studyingClass
        super.init(name: person.name, color: person.color, height: person.height, maritalStatus: person.maritalStatus, profession: person.profession, age: person.age)
    }
}

var DCC: [Introvert] = [
    .init(spendTimeInHome: 8, socialActivitiesperyear: 2, name: "Scott", color: "White", height: 1.8, maritalStatus: "Married", profession: "Doctor", age: 30),
    .init(spendTimeInHome: 10, socialActivitiesperyear: 1, name: "Sushan", color: "Brown", height: 1.9, maritalStatus: "Single", profession: "Sells", age: 32),
    .init(spendTimeInHome: 9, socialActivitiesperyear: 3, name: "Tanvir", color: "DarkBrown", height: 1.7, maritalStatus: "Marrid", profession: "Eng", age: 24)
]

//DCC[0].personDetails()
//print(DCC[0].spendTimeInHome)


var RBSC: [Student] = [
    .init(schoolType: "High School", studyingClass: "Eight", person: Person.init(name: "Tanvir", color: "Dark Brown", height: 1.7, maritalStatus: "Single", profession: "Student", age: 13)),
    .init(schoolType: "Primary School", studyingClass: "Four", person: Person.init(name: "Munia", color: "Light Brown", height: 1.02, maritalStatus: "Single", profession: "Student", age: 9)),
    .init(schoolType: "College", studyingClass: "2nd Year", person: Person.init(name: "Apon", color: "Dark", height: 1.8, maritalStatus: "Single", profession: "Student", age: 19)),
    .init(schoolType: "University", studyingClass: "1st Year", person: Person.init(name: "Ava", color: "Brown", height: 1.2, maritalStatus: "Single", profession: "Student", age: 21)),
    .init(schoolType: "M.Sc", studyingClass: "Final Year", person: Person.init(name: "Shanto", color: "White", height: 1.9, maritalStatus: "Married", profession: "Student", age: 29))
]

for i in RBSC {
    print("\n --------- \(i.name) With His details-------- \n")
    i.personDetails()
    print("schoolType: \( i.schoolType)")
    print("studyingClass: \( i.studyingClass)")
}
