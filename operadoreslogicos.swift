
/**
Nombre: operadoreslogicos.swift
Objetivo: muestra los operadores lógicos en swift
Autor:
Fecha: 30/08/2023
*/


var a = true
var b = false
var x = true
var y = false

// Operador AND (&&)
var resultadoAND = a && x  // resultadoAND es true

// Operador OR (||)
var resultadoOR = b || y   // resultadoOR es false

// Operador NOT (!)
var resultadoNOTA = !a     // resultadoNOTA es false
var resultadoNOTB = !b     // resultadoNOTB es true

print("Resultado operador AND: \(resultadoAND)")
print("Resultado operador OR: \(resultadoOR)")
print("Resultado operador NOT (a): \(resultadoNOTA)")
print("Resultado operador NOT (b): \(resultadoNOTB)")
