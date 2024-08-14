/**
Nombre: operadoresdecomparacion.swift
Objetivo: muestra los operadores lógicos en swift
Autor:
Fecha: 30/08/2023

Los operadores de comparación en Swift se utilizan para comparar valores y expresiones, 
y devuelven un valor booleano (true o false) según si la comparación es verdadera o falsa:
Mayor que (>)
Menor que (<)
Mayor o igual que (>=)
Menor o igual que (<=)
Igual que (==)
Diferente de (!=)
*/

var a = 5
var b = 10
var cadena1 = "Hola"
var cadena2 = "Hola"

// Operadores de comparación
var esMayor = a > b          // esMayor es false
var esMenorIgual = a <= b    // esMenorIgual es true
var sonIguales = cadena1 == cadena2   // sonIguales es true
var noSonIguales = cadena1 != cadena2 // noSonIguales es false

// Imprimimos resultados

print("Es mayor: \(esMayor)")
print("Es menor o igual: \(esMenorIgual)")
print("Son iguales: \(sonIguales)")
print("No son iguales: \(noSonIguales)")

// Escribe una función que reciba dos números enteros y los compare

