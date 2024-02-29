//: [Previous](@previous)

import Foundation

class Car {
    var carName: String
    var carModel: String
    var color: String
    var price: String
    var yearRelease: String
    init(carName: String, carModel: String, color: String, price: String, yearRelease: String) {
        self.carName = carName
        self.carModel = carModel
        self.color = color
        self.price = price
        self.yearRelease = yearRelease
    }
    
    func carDetails() {

        print("Car Name : \(carName)")
        print("Car Model : \(carModel)")
        print("Car color : \(color)")
        print("Car price : \(price)")
        print("Year Release : \(yearRelease)")
    }
}

var bmw = [Car]()
bmw.append(Car(carName: "BMW Black", carModel: "345293sefjshfwe", color: "MichMiche KALO", price: "$145234", yearRelease: "2022"))
bmw.append(Car(carName: "BMW RED", carModel: "set43532sdf", color: "Just Red", price: "$125234", yearRelease: "2021"))
bmw.append(Car(carName: "BMW Valba", carModel: "57947sdf", color: "Velved", price: "$95234", yearRelease: "2023"))

var toyota = [Car]()

toyota.append(Car(carName: "Toyota Supra", carModel: "345jg54", color: "White", price: "91009", yearRelease: "2023"))
toyota.append(Car(carName: "Toyota Land Cruiser", carModel: "345jg54", color: "Greay", price: "121009", yearRelease: "201"))
toyota.append(Car(carName: "Toyota Hybrid", carModel: "46542123e", color: "Red", price: "41009", yearRelease: "2022"))
toyota.append(Car(carName: "Toyota Corolla", carModel: "456sddf", color: "Blue", price: "11009", yearRelease: "2028"))

for i in bmw {
    print(i.carDetails())
}
