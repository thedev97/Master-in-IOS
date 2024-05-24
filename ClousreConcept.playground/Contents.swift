import UIKit

/*let printInfo = {
    print("Hello World")
}

printInfo()

let multiplyTable : (Int, Int) -> Int = {
    (val, range) in for range in 1...range{
        print("\(val) * \(range) = \(val*range)")
    }
    return 0
}

multiplyTable(2, 10)
*/

class Test{
    func printAddition(){
        print("Step 1")
        add(5, andNum2: 4) { result in
            sample()
            print("Result = \(result)")
        }
        print("Final Step")
    }
    
    // Non Escaping Clousre -> Because it doesn't any kind of blocking in code (async happening without blocking the code)
    func add(_ num1:Int, andNum2 num2:Int, completionHandler: (_ result : Int) -> Void) {
        print("Step 2")
        let sum = num1 + num2
        print("Step 3")
        completionHandler(sum)
    }
    
    func sample(){
        print("Sample")
    }
    
    func printSubstarction(){
        print("Step 1")
        sub(7, andNum2: 5) { [weak self] result in
            self?.sample()
            print("Result = \(result)")
        }
        print("Final Step")
    }
    
    func sub(_ num1:Int, andNum2 num2:Int, completionHandler: @escaping (_ result:Int) -> Void) {
        print("Step 2")
        let sub = num1 - num2
        DispatchQueue.main.asyncAfter(deadline: .now() + 5.0) {
            print("Step 3")
            completionHandler(sub)
        }
    }
}

let test = Test()
/// Non Escaping Clousre
//test.printAddition()
/*
 Step 1
 Step 2
 Step 3
 9
 Final Step
*/

/// Escaping Clousre
test.printSubstarction()

