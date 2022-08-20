import Cocoa
import Foundation


//Object-Oriented Swift
//1
class Animal {
    var gender: Gender
    
    enum Gender{
        case male
        case female
        case undefined
    }
    
    init(gender: Gender = Gender.undefined){
        self.gender = gender
    }
    
    func eat(){
        print("I eat everything!")
    }
}

//2
class Elephant: Animal {
    override func eat() {
        print("I eat banana!")
    }
}

class Tiger: Animal {
    override func eat() {
        print("I eat meat!")
    }
}

class Horse: Animal {
    override func eat() {
        print("I eat grass!")
    }
}

//3
//A's data type should be Animal
class Zoo {
    var weeklyHot: Animal
    
    init(weeklyHot: Animal){
        self.weeklyHot = weeklyHot
    }
}

let zoo = Zoo(weeklyHot: Tiger())

//4. What’s the difference between Struct and Class ?
/*
 a. Struct has default init(); Class must need initiallizers
 b. Struct is value type; Class is reference type
    -Due to this characteristic, Struct is immutable.
 
 
 c. Some class only capabilities:
    -Inheritance enables one class to inherit the characteristics of another
    -Type casting enables you to check and interpret the type of a class instance at runtime
    -Deinitializers enable an instance of a class to free up any resources it has assigned
    -Reference counting allows more than one reference to a class instance
*/

//5. What’s the difference between instance method and type method ?
/*
 Instance method:
 a. Instance methods are functions that belong to instances of a particular class, structure, or enumeration.
 b. An instance method can be called only on a specific instance of the type it belongs to. It can’t be called in isolation without an existing instance.
 c. Instance methods have exactly the same syntax as functions
 d. Has self property, which is equal to the instance
 
 Type method:
 a. Use static keyword or class keyword(in class) to specify type method
 b. Don't need an instance to call the method. Type method can be called any time by using "TypeNameOfTypeMethod.typeMethod()"
*/

//6. What does Initializer do in class and struct ?
/*
 Initilizer is used to create a new instance of a particular type. In struct, there is a default initilizer; but in class you must give it a initializer.
 If all instance of a type share a property, you can init it in the initializer as a default property.
*/

//7. What does self mean in an instance method and a type method ?
/*
 In instance method:
    it refers to the instance itself
 
 In type method:
    it refers to the actual type(instead of instance)
*/

//8. What’s the difference between reference type and value type ?
/*
 Reference type:
    -stored in heap
    -unique identities
    -mutable
 
 
 Value type:
    -stored in stack
    -equal if values are equal
    -immutable
    -
*/


//Enumerations and Optionals in Swift
//1
enum Gasoline : String {
    case oil92 = "92", oil95 = "95", oil98 = "98", diesel = "77"
    
    func getPrice() -> Int {
        return Int(self.rawValue)!
    }
}

let oil = Gasoline.oil92
oil.getPrice()
//what enum associated value is and how it works?
/*
 Associated value allow you to bind custom value or values with each enum case.
 Associated value between cases can be different in data type and amounts.
 Enum can have either associated values or raw values, but not both.
 
 Associated values are set when you create a new constant or variable based on one of the enumeration’s cases, and can be different each time you do so.
*/

//2
class Pet {
    var name: String
    
    init(name: String){
        self.name = name
    }
}

class People {
    
    var pet: Pet?
        
    init(pet: Pet? = nil) {
        self.pet = pet
    }
}

var p1 = People(pet: Pet(name: "Roblox"))
func unwrappedPet(pet: Pet?) {
   guard let pet = pet else {
       print("p1 has no pet!")
       return
   }
    print("p1's pet called \(pet.name)")
}
unwrappedPet(pet: p1.pet)

var p2 = People()
if let unwrappedPet = p2.pet {
    print("p2's pet called \(unwrappedPet.name)")
} else {
    print("p2 has no pet!")
}


//Protocol in Swift
//1
//struct Person {
//    var name: String
//}

protocol PoliceMan {
    func arrestCriminals() -> Void
}

//2
//struct Person: PoliceMan {
//    var name: String
//
//    func arrestCriminals() {
//        print("The person arrest criminals")
//    }
//}

//3
protocol ToolMan {
    func fixComputer() -> Void
}

//4
struct Person {
    var name: String
    var toolMan: ToolMan

    func arrestCriminals() {
        print("Person who arrests criminals")
    }
}

//5
struct Engineer: ToolMan {
    func fixComputer() {
        print("Person who fixes computers")
    }
}

//6
let steven = Person(name: "Steven", toolMan: Engineer())


//Error Handling in Swift
enum GuessNumberGameError: Error {
        case wrongNumber
    }

class GuessNumberGame {
    var targetNumber = 10
    
    func guess(number: Int) throws {
        guard number == targetNumber else {
            throw GuessNumberGameError.wrongNumber
        }
        
        print("Guess the right number: \(targetNumber)")
    }
    
}

let game = GuessNumberGame()

do{
    try game.guess(number: 20)
} catch {
    print("You guess the wrong number :(")
}

