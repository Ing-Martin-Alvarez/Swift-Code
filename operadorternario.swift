/**
Nombre: Ternario.swift
Objetivo: muestra la operación del operador Ternario en swift
Autor:
Fecha: 30/08/2023
*/

// El operador ternario es una alternativa a las estructuras IF
// Es mas simple y elegante. Aquí un ejemplo

var edad : Int = 21;



//Operador ternario tiene 3 partes: 
//   condicion-interrogante-cuando se cumple condicion: valor que toma la //variable cuando no se cumple la condición
// Mediante operador ternario valoramos si eres mayor de edad..regresar una cadena 

var mayorEdad:String = edad >= 18 ? "Si, ya eres mayor de edad" : "No, aun eres menor de edad"
print(mayorEdad)

// Ternario con números enteros
var num1 : Int = 61
var num2 : Int = 40
var res : String
res = num1 > num2 ? " Mayor: \(num1), Menor: \(num2)": " Mayor: \(num2) Menor: \(num1)"
print(res)

// Ternario con tipo de retorno entero
var n3 : Int = 100
var n4 : Int = 98
// Ternario
var total : Int
total = n3 >= n4 ? n3 : n4
print("El número mayor es : \(total)")  


/* Escribe un playground que capture dos números por el teclado
y compare con operado ternario: mayor, menor o iguales
*/

