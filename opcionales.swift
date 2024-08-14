
/**
Nombre: opcionales.swift
Objetivo: muestra las variables opcionales en swift
Autor:
Fecha: 28 de agsoto de 2023
*/

// Declaramos una variable tipo string
var prueba: String

// Declaramos una variable de tipo String opcional 
var opcional: String?
// Si no le asignamos valor toma nil por default
print(opcional!)
// Diferencia con opcional
prueba = "Hola"
print(prueba)
// Ahora le damos valores a opcional e imprimimos, pero hay un problema
opcional = "hola"
print(opcional!)
// hay dos maneras: verificando la existencia del valor de un opcional
/*
if let opc1 = opcional {
  print(opc1)
}
else {
  // cuando no tiene valor
  print("tiene un valor nil")
}
*/
// La otra forma: forzando el desenvolvimiento del valor de un opcional
print(opcional!)




