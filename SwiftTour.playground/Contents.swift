// A Brief Tour of Swift
// Created by Dakota Kim
// For iOS MVD Students - happy learning!

print("Hello, World!")

// Variables
var firstName = "Dakota" // Implicitly typed

var lastName : String = "Kim" // Explicitly typed

// Constants
let pi = 3.14

// String Interpolation
let greeting = "Hello, my name is \(firstName) \(lastName)"
print(greeting)

// Arrays/Lists
var threeStooges = ["Larry", "Curly", "Moe"]

// Accessing List Elements
print("My favorite Stooge is \(threeStooges[1])!")

// Adding elements to List
threeStooges.append("Dakota")

// Creating an Empty Array
var emptyArray = [String]()

// Dictionaries
var wishes = [
    "Scarecrow": "A brain",
    "Tinman": "A heart",
    "Lion": "The nerve"
]

// Empty Dictionary
var emptyDictionary = [String : String]()

// Adding keys + values to Dictionary
wishes["Dorothy"] = "Go home"
print(wishes)

// Control Flow

// If Statements

var year = 2020

if year > 2004 {
    print("Facebook exists!")
}

if year % 2 == 0 {
    print("The year \(year) is even!")
} else {
    print("The year \(year) is odd!")
}

// Ternary Statements
// The ternary operator allows you to run a check and return one of two values depending on the result of that check

let score = 88
let result = score > 85 ? "Pass" : "Fail"

// Switch statements

let choice = 2

switch choice {
case 0:
    print("You get a Nintendo Wii!")
case 1:
    print("You get a Prius!")
case 2:
    print("You get a Roomba!")
default:
    print("That's not a valid choice, my friend. Try again!")
}

// For Loops

let people = ["Daniel Striped Tiger", "King Friday the XIII", "Lady Elaine Fairechild", "X the Owl"]

for person in people {
    switch person {
    case "Daniel Striped Tiger":
        print("Hello, Daniel! How are you today?")
    case "King Friday the XIII":
        print("Greetings, your majesty! What is the Roayl business today?")
    case "Lady Elaine Fairechild":
        print("Lady Elaine, how are things in the Museum-Go-Round?")
    default:
        print("Hello there \(person)! Would you like to be friends?")
    }
}

for x in 0...5 {
    if x == 0 {
        print("Let's start counting!")
    } else if (x == 5) {
        print("5! What a fun time we had!")
    } else {
        print(x)
    }
}

// While Loops

var age = 0

while age < 18 {
    print("You are \(age) years old! You can't vote yet!")
    age += 1 // increment syntax
}

// Functions

// The below returns a string "-> String"

func greet(person: String, day: String) -> String {
    return "Hello \(person), today is \(day)."
}

func helloWorld() {
    print("Hello, World!")
}

print(greet(person: "Fred", day: "Friday"))

helloWorld()

// Functions with Multiple returns

func getColor(color: String) -> (r: Int, g: Int, b: Int) {
    // pretend there's cool logic here
    return (100, 255, 5)
}

// Classes

class Cat {
    var name : String
    var color : String
    
    init(name: String, color: String) {
        self.name = name
        self.color = color
    }
    
    func describeCat() {
        print("My cat \(name) has \(color) hair")
    }
}

let smokey = Cat(name: "Smokey", color: "Grey")
smokey.describeCat()

// Enums

enum Rank: Int {
    case junior
    case middle
    case senior

    func simpleDescription() -> String {
        switch self {
        case .junior:
            return "junior"
        case .middle:
            return "middle"
        case .senior:
            return "senior"
        }
    }
}
let rank = Rank.junior

print("I am rank: \(rank.simpleDescription())")

// Protocols

// A protocol defines a blueprint of methods, properties, and other requirements that suit
// a particular task or piece of functionality. The protocol can then be adopted by a class,
// structure, or enumeration to provide an actual implementation of those requirements.
// Any type that satisfies the requirements of a protocol is said to conform to that protocol.

protocol Animal {
    var species: String { get }
}

class Human: Animal {
    var species: String = "Homo sapiens."
    var height : Int
    var age : Int
    
    init(height: Int, age: Int) {
        self.age = age
        self.height = height
    }
}


