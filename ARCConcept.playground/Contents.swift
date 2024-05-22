import UIKit

class Vechile{
    var car: Car?
    let id: String
    
    init(car: Car?, id: String) {
        self.car = car
        self.id = id
        print("\(self) allocated")
    }
    
    deinit{
        print("\(self) deallocated")
    }
}

class Car{
    weak var vechile: Vechile?
    let name: String
    
    init(vechile: Vechile?, name: String) {
        self.vechile = vechile
        self.name = name
        print("\(self) allocated")
    }
    
    deinit {
        print("\(self) deallocated")
    }
}

// So in this case i'll use the weak or unowned ref for deallocated both of the reference objects
var vechile: Vechile? = Vechile(car: nil, id: "1")
var car: Car? = Car(vechile: nil, name: "Audi")
vechile?.car = car
car?.vechile = vechile
vechile = nil
car = nil

/*
// In this caes both Car & Vechile are allocated & also be deallocated
Vechile(car: nil, id: "1")
Car(vechile: nil, name: "Audi")
*/

/*
// In this caes both Car & Vechile are allocated but it's not be deallocated
let vechile = Vechile(car: nil, id: "1")
let car = Car(vechile: nil, name: "Audi")
*/

/*
// In this caes both Car & Vechile are allocated & also be deallocated
var vechile: Vechile? = Vechile(car: nil, id: "1")
var car: Car? = Car(vechile: nil, name: "Audi")
vechile = nil
car = nil
*/

/*
 // In this case both objects are String ref each other so it's not be deallocated
 var vechile: Vechile? = Vechile(car: nil, id: "1")
 var car: Car? = Car(vechile: nil, name: "Audi")
 vechile?.car = car
 car?.vechile = vechile
 vechile = nil
 car = nil
 */

