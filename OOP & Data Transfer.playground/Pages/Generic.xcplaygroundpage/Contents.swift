//Generics example with struct & other variables, @escaping completion handler closures

struct Person {
     var name: String
     var age: Int
     var height: Double
     
     init(name: String, age: Int, height: Double) {
         self.name = name
         self.age = age
         self.height = height
     }
     
 }

struct Vehicle {
    var numberOfWheel: Int?
    var numberOfgear: Int
    var vehicleAge: Int
    var maxSpeed: Int
    var milage: Float
    var vehicleCC: Int
    
    init(numberOfWheel: Int? = nil, numberOfgear: Int, vehicleAge: Int, maxSpeed: Int, milage: Float, vehicleCC: Int) {
        self.numberOfWheel = numberOfWheel
        self.numberOfgear = numberOfgear
        self.vehicleAge = vehicleAge
        self.maxSpeed = maxSpeed
        self.milage = milage
        self.vehicleCC = vehicleCC
    }
}


 func update<T>(_ obj: T, updater: @escaping(T)-> Void){
     
     if var person = obj as? Person {
         person.height = 1.70
         updater(person as! T)
     }
     if var vehicle = obj as? Vehicle {
         vehicle.vehicleAge = 2
         vehicle.maxSpeed = 320
         vehicle.milage = 23
         updater(vehicle as! T)
     }
 }

//Update by generics using Person struct
 var bdPerson = Person(name: "Tanvir", age: 24, height: 1.67)
 print(bdPerson)

 update(bdPerson) { person in
     bdPerson.height = person.height
 }
 print(bdPerson)


//Update by generics using Vehicle struct
var privateCar = Vehicle(numberOfgear: 6, vehicleAge: 3, maxSpeed: 230, milage: 13, vehicleCC: 1100)
print(privateCar)

update(privateCar) { vehicle in
    privateCar = vehicle
}

print(privateCar)
