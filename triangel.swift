/*
TECHNOLOGICAL INSTITUTE OF COLIMA
STUDENT: Martin Alvarez Salazar
CONTROL NUMBER: 19460870
COURSE: APPS FOR iOS
PRACTICE: S4-U1-AC-04 Ternary operators
*/

/*
List of the five things you have learned from the development of this activity

  1.- User Input Handling: You learned how to take user input, handle potential errors (such as non-integer input), and create a user-friendly experience.

  2.- Triangle Inequality Theorem: You learned about the Triangle Inequality Theorem, which is crucial for determining if three sides can form a triangle.

  3.- Ternary Operators: You gained knowledge about using ternary operators to write concise conditional statements in both Python and Swift.

  4.- Triangle Classification: You learned how to classify triangles based on their side lengths as equilateral (all sides equal), isosceles (two sides equal), or scalene (no sides equal).

  5.-Programming Language Flexibility: You saw that the same logic can be implemented in different programming languages (Python and Swift) with slight syntactical variations, showcasing the flexibility of programming skills across languages.  
*/

// Step 1: Get three integer numbers from the keyboard
print("Enter the lengths of the sides:")
if let side1 = Float(readLine() ?? ""), 
   let side2 = Float(readLine() ?? ""), 
   let side3 = Float(readLine() ?? "") {
    
    // Step 2: Validate if the numbers form a triangle using ternary operators
    if(side1 + side2 > side3) && (side1 + side3 > side2) && (side2 + side3 > side1){
      var result = ""
      // Step 3: Identify the type of triangle
      if side1 == side2 && side2 == side3 {
          result = "Equilateral"
      } else if side1 == side2 || side1 == side3 || side2 == side3 {
          result = "Isosceles"
      } else {
          result = "Scalene"
      }
      // Step 4: Display the result
      print("These sides form a \(result) triangle.")
    } else{
      print("These side lengths cannot form a triangle.")
    }  
} else {
    print("Invalid input. Please enter integers only.")
}
