import UIKit

// Let vs Var
class AppDev {
    var tech: String
    let rating: Int
    
    init(tech: String, rating: Int) {
        self.tech = tech
        self.rating = rating
    }
}

/*struct AppDev{
    var tech: String
    let rating: Int
}*/

/// Struct :
/// Lte: Immutable (Value can't be changed) so changed to var
/// here we can't change the rating value because it's alrady intialized by let
var app1 = AppDev(tech: "IOS SDK", rating: 5)
app1.tech = "Flutter SDK"
print(app1.tech)

// Class: Even my root object is let, i can still modify the property which is var.


// Static vs Class

/// Static and Class both are same, we can't access them using object, these are class level
/// We  can access them using class name

class MyClass{
    func test() {
        print("Test")
    }
    
    static func test1(){
        print("Test1")
    }
    
    class func test2(){
        print("Test2")
    }
}

let myClass = MyClass()
myClass.test()
MyClass.test1()
MyClass.test2()

/// Major difference is Static can't be overiden bu Class can be overriden
class MyChildClass: MyClass {
    override func test() {
        print("Test")
    }
    
    override class func test2() {
        print("Test2")
    }
}

/// Example
class Test{
    static var num = 5
    var count:Int
    
    init(count: Int) {
        self.count = count
    }
    
    func totalValue() {
        print(count + Test.num)
    }
}

let test1 = Test(count: 5)
test1.totalValue() // 10

Test.num = 20
let test2 = Test(count: 10)
test2.totalValue()
