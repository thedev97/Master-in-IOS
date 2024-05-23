import UIKit

var value = 0

func understandingDefer() -> Int {
    defer {
        value +=  1
    }
    return value
}

print(understandingDefer()) // 0
print(value) // 1

func interviewQues1(){
    print("Step 1")
    defer {
        print("Step 2")
    }
    defer {
        print("Step 4")
    }
    defer {
        print("Step 5")
    }
    print("Step 3")
}

print(interviewQues1()) // 1, 3, 5, 4, 2


func interviewQues2(){
    print("Step 1")
    defer {
        print("Step 2")
    }
    defer {
        defer{
            print("Step 6")
        }
        print("Step 4")
    }
    defer {
        print("Step 5")
    }
    print("Step 3")
}

print(interviewQues2()) // 1, 3, 5, 4, 6, 2
