//Polymorphism example & implementations
/*
 An example of add superclass value with overriding Property
 class Car: Vehicle {
     var gear = 1
     override var description: String {
         return super.description + " in gear \(gear)"
     }
 }
 */
enum VehicleType {
    case truck
    case privateCar
    case bus
    case train
    case CNG
    case leguna
    case amphibiousVehicle
    case waterVehicle
    
    var vehicleTitle: String {
        switch self {
        case .truck:
            return "Cargo Truck."
        case .privateCar:
            return "Private Car."
        case .bus:
            return "Local or Private Bus."
        case .train:
            return "Tain."
        case .CNG:
            return "Auto/CNG(indian subcotinent)."
        case .leguna:
            return "Leguna Only available in Bangladesh."
        case .amphibiousVehicle:
            return "Amphibious Vehicle is the unique type of vehicle that can run both of land & water."
        case .waterVehicle:
            return "Water-vehicle only can run on water."
        }
    }
}
enum WaterVehicleType {
    case cargoShip
    case passengerShip
    case boat
    case speedBoat
    case vela
    case ferry
    case fishingShip
    case fishigBoat
    
    var waterVehicleTitle: String {
        switch self {
        case .cargoShip:
            return "General cargo vessels carry packaged items like chemicals, foods, furniture, machinery, motor- and military vehicles, footwear, garments, etc"
        case .passengerShip:
            return "Passenger ship is basically using for huge amount of passenger tranportation."
        case .boat:
            return "Boat is basically personal property using for small task."
        case .speedBoat:
            return "Speed boat"
        case .vela:
            return "Build by timber & rope"
        case .ferry:
            return "Using for land vehicle transportations"
        case .fishingShip:
            return "Using for ocean fishing"
        case .fishigBoat:
            return "Using for fishing in river & lake."
        }
    }
}
class Vehicle {
    var numberOfWheel: Int?
    var numberOfgear: Int
    var vehicleAge: Int
    var maxSpeed: Int
    var milage: Float
    var vehicleCC: Int
    var vehicleType: VehicleType
    
    init(numberOfWheel: Int?, numberOfgear: Int, vehicleAge: Int, maxSpeed: Int, milage: Float, vehicleCC: Int, vehicleType: VehicleType) {
        self.numberOfWheel = numberOfWheel
        self.numberOfgear = numberOfgear
        self.vehicleAge = vehicleAge
        self.maxSpeed = maxSpeed
        self.milage = milage
        self.vehicleCC = vehicleCC
        self.vehicleType = vehicleType
    }
    func vehicleDetails() {
        print("numberOfWheel: \(numberOfWheel ?? .zero)")
        print("numberOfgear: \(numberOfgear)")
        print("vehicleAge: \(vehicleAge)")
        print("maxSpeed: \(maxSpeed)")
        print("milage: \(milage)")
        print("vehicleCC: \(vehicleCC)")
        print("vehicleType: \(vehicleType.vehicleTitle)")
    }
}
// Print for example
//var mycar = Vehicle(numberOfWheel: 4, numberOfgear: 5, vehicleAge: 2, maxSpeed: 290, milage: 13, vehicleCC: 1200, vehicleType: .privateCar)
//mycar.vehicleDetails()

class AmphibiousVehicle: Vehicle {
    var totalSize: Double
    var waterMilage: Float
    init(totalSize: Double, waterMilage: Float, vehicle: Vehicle) {
        self.totalSize = totalSize
        self.waterMilage = waterMilage
//        self.vehicleCC = vehicleCC
        super.init(numberOfWheel: vehicle.numberOfWheel, numberOfgear: vehicle.numberOfgear, vehicleAge: vehicle.vehicleAge, maxSpeed: vehicle.maxSpeed, milage: vehicle.milage, vehicleCC: vehicle.vehicleCC, vehicleType: vehicle.vehicleType)
    }
    override func vehicleDetails() {
        super.vehicleDetails()
        print("totalSize = \(totalSize)")
        print("waterMilage = \(waterMilage)")
    }
}

class waterVehicle: Vehicle {
    var vehicleSize: Int
    var type: WaterVehicleType
    var amounOfMaxLimit: Int
    init(vehicleSize: Int, type: WaterVehicleType, amounOfMaxLimit: Int, vehicle: Vehicle) {
        self.vehicleSize = vehicleSize
        self.type = type
        self.amounOfMaxLimit = amounOfMaxLimit
        super.init(numberOfWheel: vehicle.numberOfWheel, numberOfgear: vehicle.numberOfgear, vehicleAge: vehicle.vehicleAge, maxSpeed: vehicle.maxSpeed, milage: vehicle.milage, vehicleCC: vehicle.vehicleCC, vehicleType: vehicle.vehicleType)
    }
    override func vehicleDetails() {
        super.vehicleDetails()
        print("Water Vehicle size: \(vehicleSize)sq feet")
        print("Water Vehicle Type: \(type.waterVehicleTitle)")
        print("Water Vehicle Limit: \(amounOfMaxLimit)ton")
    }
}

var ship: waterVehicle = .init(vehicleSize: 4570, type: .cargoShip, amounOfMaxLimit: 1144, vehicle: .init(numberOfWheel: nil, numberOfgear: 5, vehicleAge: 2, maxSpeed: 290, milage: 13, vehicleCC: 1200, vehicleType: .waterVehicle))

ship.vehicleDetails()
