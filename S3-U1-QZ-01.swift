/*
TECHNOLOGICAL INSTITUTE OF COLIMA
STUDENT: Martin Alvarez Salazar
CONTROL NUMBER: 19460870
COURSE: APPS FOR iOS
QUIZ: S3-U1-QZ-01
*/

import Foundation

// Function to get an integer input from the user
func keyboard(order: String) -> Int? {
    print(order, terminator: "")
    return Int(readLine() ?? "")
}

// Get the first and second integer from the user
if let num1 = keyboard(order: "Enter the first integer: "),
   let num2 = keyboard(order: "Enter the second integer: ") {
    
    // Perform operations
    let sum = num1 + num2
    let difference = num1 - num2
    let product = num1 * num2
    
    // Check if the second number is not zero before performing division
    if num2 != 0 {
        let division = Double(num1) / Double(num2)
        
        // Print results
        print("Sum: \(sum)")
        print("Difference: \(difference)")
        print("Product: \(product)")
        print("Division: \(division)")
    } else {
        print("Sum: \(sum)")
        print("Difference: \(difference)")
        print("Product: \(product)")
        print("Error: Division by zero is not allowed.")
    }
} else {
    print("Invalid input. Please enter valid integer values.")
}