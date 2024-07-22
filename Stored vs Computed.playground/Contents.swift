import UIKit

// Struct level -> Stored Propoties
struct Person1{
    var firstName:String
    var lastName:String
    
    init(firstName: String, lastName: String) {
        self.firstName = firstName
        self.lastName = lastName
    }
}

var p1 = Person1(firstName: "Soumya", lastName: "Mishra")
p1.firstName
p1.lastName

// Class level -> Stored Propoties
class Person2{
    var firstName:String
    var lastName:String
    
    init(firstName: String, lastName: String) {
        self.firstName = firstName
        self.lastName = lastName
    }
}

let p2 = Person2(firstName: "S", lastName: "Mishra")
p2.firstName = "Soumya"
print(p2.firstName + " " + p2.lastName)

// Lazy Propoties
struct Person3 {
    /// Stored Propoties
    var firstName:String
    var lastName:String
    
    init(firstName: String, lastName: String) {
        self.firstName = firstName
        self.lastName = lastName
    }
    
    /// Lazy Propties / Stored Propoties
    lazy var fullName:String = {
        return firstName + lastName
    }()
    
    var fullNameComputed:String {
        return firstName + lastName
    }
}

var p3 = Person3(firstName: "Soumya", lastName: "Mishra")
print(p3.fullName)
print(p3.fullNameComputed)
p3.firstName = "S"
p3.lastName = "M"
print(p3.fullName)
print(p3.fullNameComputed)
p3.fullName = "SM"
print(p3.fullName)
print(p3.fullNameComputed)


class Calculator{
    var counter: Int = 0
    
    lazy var getCalculate: (() -> Void)? = { [weak self] in
        print("Hello")
        self?.counter += 1
    }
}

var cal = Calculator()
print(cal.counter)
cal.getCalculate?()
print(cal.counter)
cal.getCalculate?()
print(cal.counter)
cal.getCalculate?()
print(cal.counter)

// Computed Propties
struct Person4{
    var firstName:String
    var lastName:String
    
    init(firstName: String, lastName: String) {
        self.firstName = firstName
        self.lastName = lastName
    }
    
    var fullName: String{
        return firstName + lastName
    }
}

var p4 = Person4(firstName: "S", lastName: "M")
print(p4.fullName)
p4.firstName = "Soumya"
p4.lastName = "Mishra"
print(p4.fullName)
