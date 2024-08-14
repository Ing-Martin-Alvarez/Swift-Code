/**
Nombre: punto.swift
Objetivo: muestra la operación de la POO en swift 
Autor:
Fecha: 4 de septiembre  de 2023
*/
import Foundation

public class Punto {

   // Definimos atributos
   private var x : Int
   private var y : Int

   /**
   * Método constructor de la clase
   */
   public init(valorX: Int, valorY:Int){
      // Actualizamos las variables de la clase
      self.x = valorX
      self.y = valorY
   }
   
   // Lista de métodos get
   public func getX() -> Int {
      return self.x
   }

   public func getY() -> Int {
      return self.y
   }
   
   
   // Lista de métodos set
   public func setX(valorX: Int){
     self.x = valorX
   }


   
    // Lista de métodos set
   public func setY(valorY: Int){
     self.y = valorY
   }
   

   // Agrega un método que determine la distancia euclidiana entre
   // dos puntos

   public func  calculaDistancia(pa: Punto, pb:Punto)->Double{
      // Calculamos la distancia
       var dist:Double
       dist = sqrt(pow(Double(pb.getX()-pa.getX()),2)+pow(Double(pb.getY()-pa.getY()),2))

      return dist
   }
}


class Circunferencia : Punto {

    // Definimos atributos
   private var radio : Float

   // Constructor de la clase
     init(vX: Int, vY:Int, valorRadio:Float){
      // Actualizamos el atributo de esta clase
      self.radio = valorRadio
      // Invocamos el constructor de la superclase Punto
      super.init(valorX: vX, valorY:vY)

   }
   
   // Método get para el radio
   func getRadio()->Float {
      return self.radio
   }

  // Método para set para el radio
  func setRadio(valorRadio:Float){
       self.radio = valorRadio
  }

  //Método para calcular el área de la circunferencia
  func calculaArea()->Float{
      return Float.pi * pow(self.getRadio(), 2)
  }
}
var c1 = Circunferencia(vX: 2, vY:2, valorRadio:12.2)
print("Las coordenadas del centro  son: \(c1.getX()),\(c1.getY())")
print("El valor del radio es  \(c1.getRadio())")
print("El área es   \(c1.calculaArea())")










/*
// Instanciamos
var p1 = Punto(valorX:2, valorY:2)
var p2 = Punto(valorX:4, valorY:4)
print("Las coordenadas del p1 son: \(p1.getX()),\(p1.getY())")
print("Las coordenadas del p2 son: \(p2.getX()),\(p2.getY())")
print("La distancia entre los dos puntos es: \(p2.calculaDistancia(pa:p1, pb:p2))")

*/
