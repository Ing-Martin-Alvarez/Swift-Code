/*
TECHNOLOGICAL INSTITUTE OF COLIMA
STUDENT: Martin Alvarez Salazar
CONTROL NUMBER: 19460870
COURSE: APPS FOR iOS
QUIZ: S3-U1-QZ-02
*/

import Foundation

func add(_ a: Int, _ b: Int) -> Int {
    return a + b
}

func subtract(_ a: Int, _ b: Int) -> Int {
    return a - b
}

func multiply(_ a: Int, _ b: Int) -> Int {
    return a * b
}

func divide(_ a: Int, _ b: Int) -> Double? {
    if b == 0 {
        return nil // Division by zero is not allowed
    }
    return Double(a) / Double(b)
}

func compare(_ a: Int, _ b: Int) -> (largest: Int, smallest: Int, isEqual: Bool) {
    let largest = max(a, b)
    let smallest = min(a, b)
    let isEqual = a == b
    return (largest, smallest, isEqual)
}

func countUpAndDown(_ a: Int, _ b: Int) {
    print("Counting up from \(a) to \(b):")
    for i in a...b {
        print(i)
    }
    
    print("Counting down from \(a) to \(b):")
    for i in stride(from: b, through: a, by: -1) {
        print(i)
    }
}

func printMenu() {
    print("\n--- Function Operations ---")
    print("1. Add")
    print("2. Subtract")
    print("3. Multiply")
    print("4. Divide")
    print("5. Compare")
    print("6. Count")
    print("7. Exit")
    print("Write the desired option: ")
}

// Main program loop
var shouldExit = false
while !shouldExit {
    printMenu()
    
    if let choice = readLine(), let option = Int(choice) {
        switch option {
        case 1, 2, 3, 4, 5, 6:
            print("Enter two integers:")
            if let num1 = Int(readLine() ?? ""), let num2 = Int(readLine() ?? "") {
                switch option {
                case 1:
                    let result = add(num1, num2)
                    print("Result: \(result)")
                case 2:
                    let result = subtract(num1, num2)
                    print("Result: \(result)")
                case 3:
                    let result = multiply(num1, num2)
                    print("Result: \(result)")
                case 4:
                    if let result = divide(num1, num2) {
                        print("Result: \(result)")
                    } else {
                        print("Error: Division by zero is not allowed.")
                    }
                case 5:
                    let comparison = compare(num1, num2)
                    print("Largest: \(comparison.largest), Smallest: \(comparison.smallest), Equal: \(comparison.isEqual)")
                case 6:
                    countUpAndDown(num1, num2)
                default:
                    break
                }
            } else {
                print("Invalid input. Please enter valid integer values.")
            }
        case 7:
            shouldExit = true
            print("Exiting the program.")
        default:
            print("Invalid option. Please select a valid option (1-7).")
        }
    } else {
        print("Invalid input. Please enter a valid option number.")
    }
}
