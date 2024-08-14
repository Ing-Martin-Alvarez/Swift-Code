/**
*Nombre: variables.swift
*Objetivo: muestra las variables en swift
*Autor:
*Fecha: 28 de agsoto de 2023

------------------------------------------------------
En swift tenemos 8 tipos de datos:
Swift tiene varios tipos de datos que se utilizan para representar diferentes tipos de valores. 

1. Tipos Numéricos:
   - Int: Representa números enteros. Ejemplo: `let edad: Int = 25`
   - UInt: Representa números enteros sin signo. Ejemplo: `let cantidad: UInt = 100`
   - Float: Representa números de punto flotante de precisión simple. Ejemplo: `let altura: Float = 1.75`
   - Double: Representa números de punto flotante de precisión doble. Ejemplo: `let peso: Double = 70.5`

2. Tipos de Texto:
   - String: Representa una cadena de caracteres. Ejemplo: let nombre: String = "Juan"`

3. Tipos Booleanos:
   - Bool: Representa valores booleanos (`true` o `false`). Ejemplo: `let esActivo: Bool = true`

4. Tipos de Colecciones:
   - Array: Representa una colección ordenada de elementos del mismo tipo. Ejemplo: `let numeros: [Int] = [1, 2, 3, 4, 5]`
   - Dictionary: Representa una colección de pares clave-valor. Ejemplo: `let diccionario: [String: Any] = ["nombre": "Ana", "edad": 28]`
   - Set: Representa una colección no ordenada de elementos únicos. Ejemplo: `let conjunto: Set<Int> = [1, 2, 3, 4, 5]`

5. Tipos Opcionales:
   -Optional: Representa un valor que puede ser nulo (nil). Ejemplo: var telefono: String?

6. Tipos de Caracteres:
   - Character: Representa un único carácter Unicode. Ejemplo: let inicial: Character = "A"

7. Tipos de Tuplas:
   - Tuple: Representa una agrupación de valores de diferentes tipos. Ejemplo: `let coordenadas = (x: 10, y: 20)`

8. Tipos de Funciones:
   -Function: Representa una función que toma argumentos y devuelve un valor. Ejemplo: `func saludar(nombre: String) -> String { return "Hola, \(nombre)" }`

9. Tipos de Cierre (Closures):
   - Closure: Representa un bloque de código que puede ser pasado y utilizado como argumento de funciones u otras operaciones. Ejemplo: `{ (x: Int, y: Int) -> Int in return x + y }`
*/


import Foundation

// Para declarar una varibale usamos la palabara reservada var.Swift infiere  el tipo de datos

// Variables enteras
var num : Int

// Asignar valor
num = 2345;
print("El valor del número entero num es: \(num)");

// Variables tipo cadenas o String
var myName : String;
myName = "Jesús Alberto verduzco Ramírez";
print("Mi nombre es: \(myName)");

// Tipo Character
var car : Character;
car = "c";
print("El caracter guardado es: \(car)");
car = "P"
print("El caracter guardado es: \(car)");

// Tipo Flotante
var numFloat : Float;
numFloat = 23.45;
var myFloat = 23.14
print("El número flotante es : \(numFloat), y la otra es: \(myFloat) ");

// Tipo Double
var numDoble : Double;
numDoble = 345.6789;
print("La variable doble contiene: \(numDoble)")

// Tipo Boolean
var soltero : Bool;
soltero = false;
print("\(myName) es casado: \(soltero)");


// Tuplas. Definición de una tupla que representa información de una persona
// Las tuplas en Swift son inmutables por defecto, lo que significa que una vez que se crean 
// con ciertos valores, no puedes cambiar esos valores individuales. 
//Si se necesita modificar los valores de una tupla, debes crear una nueva tupla con los valores actualizados.

let persona: (nombre: String, edad: Int, altura: Double) = ("Juan", 30, 1.75)
// Acceso a los elementos de la tupla
print("Nombre: \(persona.nombre)")
print("Edad: \(persona.edad) años")
print("Altura: \(persona.altura) metros")




















