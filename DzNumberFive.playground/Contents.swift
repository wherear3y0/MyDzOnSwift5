import Foundation
import PlaygroundSupport

enum windowCheck{
    case open
    case closed
}

enum engineCheck{
    case off
    case on
}

protocol Car {
    var brand: String {get}
    var year: Int {get}
    var window: windowCheck {get set}
    var engine: engineCheck {get set}
}

extension Car {
    mutating func chacgeEngine(engine: engineCheck){
        self.engine = engine
    }
    mutating func changeWindow(window: windowCheck){
        self.window = window
    }
    
}

class car: Car {
    var brand: String
    var year: Int
    var window: windowCheck = .closed
    var engine: engineCheck = .off
    
    init(brand: String, year: Int, window: windowCheck, engine: engineCheck){
        self.brand = brand
        self.year = year
        self.window = window
        self.engine = engine
    }
    
}

class sportCar: car, CustomStringConvertible{
    var description: String {
        return " Двигатель \(engine), окна \(window), год выпуска \(year)"
    }
}

class trunkCar: car, CustomStringConvertible{
    var description: String{
        return" Двигатель \(engine), окна \(window), год выпуска \(year)"
    }
}

var mazzeratti = sportCar(brand: "ppp", year: 1990, window: .closed, engine: .off)
mazzeratti.chacgeEngine(engine: .on)
mazzeratti.changeWindow(window: .open)

print(mazzeratti.description)
