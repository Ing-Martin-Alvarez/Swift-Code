/*
TECHNOLOGICAL INSTITUTE OF COLIMA
STUDENT: Martin Alvarez Salazar
CONTROL NUMBER: 19460870
COURSE: APPS FOR iOS
PRACTICE: S4-U1-EX-01 First unit test
*/

// Inicializamos un diccionario vacío para almacenar las facturas (número de factura: importe)
var facturas: [Int: Double] = [:]

// Variables para rastrear el monto total recaudado y el monto pendiente
var montoTotalRecaudado: Double = 0.0

// Bucle principal del programa
var continuar = true

while continuar {
    print("\n===== SATURNO ENTERPRISE =====")
    print("¿Qué deseas hacer?")
    print("1. Agregar una nueva factura")
    print("2. Pagar una factura existente")
    print("3. Eliminar una factura")
    print("4. Ver el monto recaudado y el monto pendiente")
    print("5. Ver lista de facturas pendientes")
    print("6. Finalizar")
    print("---------------------------------")
    print("Escribe el número de la opcion a trabajar: ")

    if let opcion = readLine(), let eleccion = Int(opcion) {
        switch eleccion {
        case 1:
            // Agregar una nueva factura con validación
            var facturaAgregada = false
            while !facturaAgregada {
                print("\nIngrese el número de factura:")
                if let numeroFactura = readLine(), let numero = Int(numeroFactura) {
                    if facturas[numero] == nil {
                        // Verificar si la factura ya existe
                        print("Ingrese el importe de la factura:")
                        if let importeFactura = readLine(), let importe = Double(importeFactura) {
                            facturas[numero] = importe
                            print("Factura agregada exitosamente.")
                            facturaAgregada = true
                        } else {
                            print("Importe inválido.")
                        }
                    } else {
                        print("Ya existe una factura con ese número.")
                        print("Por favor, ingrese otro número para registrar la factura.")
                    }
                } else {
                    print("Número de factura inválido.")
                }
            }
        case 2:
            // Pagar una factura existente
            print("\nIngrese el número de factura a pagar:")
            if let numeroFactura = readLine(), let numero = Int(numeroFactura) {
                if let importe = facturas[numero] {
                    print("Factura encontrada con un importe de \(importe).")
                    print("¿Cuánto deseas abonar?")
                    if let abonoStr = readLine(), let abono = Double(abonoStr), abono >= 0 {
                        if abono <= importe {
                            montoTotalRecaudado += abono
                            facturas[numero] = importe - abono
                            print("Pago realizado con éxito.")
                        } else {
                            print("El abono no puede ser mayor que el importe de la factura.")
                        }
                    } else {
                        print("Abono inválido.")
                    }
                } else {
                    print("Factura no encontrada.")
                }
            } else {
                print("Número de factura inválido.")
            }
        case 3:
            // Eliminar una factura
            print("\nIngrese el número de factura a eliminar:")
            if let numeroFactura = readLine(), let numero = Int(numeroFactura) {
                if facturas[numero] != nil {
                    //montoTotalRecaudado -= importe
                    facturas[numero] = nil
                    print("Factura eliminada con éxito.")
                } else {
                    print("Factura no encontrada.")
                }
            } else {
                print("Número de factura inválido.")
            }
        case 4:
            // Ver el monto recaudado y el monto pendiente
            print("\nMonto total recaudado: \(montoTotalRecaudado)")
            let montoPendiente = facturas.values.reduce(0.0, +)
            print("Monto pendiente de cobrar: \(montoPendiente)")
        case 5:
            // Ver lista de facturas pendientes
            print("\nLista de facturas pendientes:")
            for (numero, importe) in facturas {
                print("Factura #\(numero): Monto \(importe)")
            }
        case 6:
            // Finalizar el programa
            continuar = false
        default:
            print("Opción no válida.")
        }
        
        // Mostrar el estado actual
        print("\nMonto total recaudado: \(montoTotalRecaudado)")
        let montoPendiente = facturas.values.reduce(0.0, +)
        print("Monto pendiente de cobrar: \(montoPendiente)")
    } else {
        print("Opción no válida.")
    }
}

print("\n¡Programa finalizado!")
