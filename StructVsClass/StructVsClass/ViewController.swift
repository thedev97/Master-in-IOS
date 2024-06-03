//
//  ViewController.swift
//  StructVsClass
//
//  Created by Soumya Ranjan Mishra on 03/06/24.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        let emp1 = Employee()
        emp1.name = "Soumya"
        let emp2 = emp1
        emp2.name = "Ranjan"
        
        // For Stuct Case:
        /*print(emp1.name ?? "") /// Ranjan
        print(emp2.name ?? "") /// Soumya
        */
        
        // For Class Case:
        print(emp1.name ?? "") /// Ranjan
        print(emp2.name ?? "") /// Ranjan
    }
}

/// Struct : Value Type (Copy the value and paste it to aonter object)
/*struct Employee {
    var name: String?
 }*/
   
/// Class : Refrence Type (It's not copied the object value, it's replace the object address. it's refrence to each other)
class Employee{
    var name: String?
}

/// Class have deint() but Struct don't have
/// Struct have default designated intiallizers but Class don't have
/// Class supports inheritance but Stuct don't have supports diretcly ,
/// Strcut have support inheritance indirectly through protocol using getter & setter method
/// Struct don't allowing weak refrerence , when we talking about retain cycle & string ref it's all includued with class not in struct
/// Struct never create the retain cycle.
