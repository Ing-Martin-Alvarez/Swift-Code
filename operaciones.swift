/**
Nombre: operaciones.swift
Objetivo: muestra la operación de las funciones en swift
Autor:
Fecha: 28 de agosto de 2023
*/

/**
* Función para sumar dos números enteros
*/
func sumar(num1: Int, num2:Int) -> Int {
  return num1 + num2;
}

/**
* Función para restar  dos números enteros
*/
func restar(num1: Int, num2:Int) -> Int {
  return num1 - num2;
}

/**
 * Función para multiplicar  dos números enteros
 */
func multiplicar(num1: Int, num2:Int) -> Int {
  return num1 * num2;
}

/**
* Función para dividir  dos números enteros
*/
func dividir(num1: Int, num2:Int) -> Float {
  return  Float(num1) / Float(num2)
}

/**
* Función que compare dos números enteros
*/
func compara(num1: Int, num2: Int) -> String {
  // comparamos
  if (num1 > num2) {
    return "El mayor es num1";
  }
  else if (num1 < num2){
    return "El mayor es num2";
  }
 else {
   return "Los números son iguales";
 }

}


/**
*  Función para contas desde num1 hasta num2 y que imprima
*/
func contar(num1: Int, num2: Int){

  if (num1 < num2){
             for i in num1...num2 {
              print("Valor de i:\(i)")
            }
  }
  else if (num1 > num2) {
       for i in (num1...num2) {
              print("Valor de i:\(i)")
            }
  }         
}



// Bloque principal
print("-- Operaciones Básicas en Swift ---");
// Invocamos funciones
print("La suma es: \(sumar(num1: 2, num2:9))");
print("La resta es: \(restar(num1: 8, num2:6))");
print("La multiplicación es: \(multiplicar(num1: -5, num2:-87))");
print("La división es: \(dividir(num1: 81, num2:75))");
print("Compara 2,3: \(compara(num1:2,num2:3))")
print("Compara 3,2: \(compara(num1:3,num2:2))")
print("Compara 3,3: \(compara(num1:3,num2:3))")
contar(num1:5, num2:10);

// Agrega el codigo para hacer un nùmeor indeterminado de operaciones con While

