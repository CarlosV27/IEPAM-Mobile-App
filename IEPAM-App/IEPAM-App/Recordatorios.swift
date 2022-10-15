//
//  Recordatorios.swift
//  IEPAM-App
//
//  Created by Sergio on 06/10/22.
//

import SwiftUI

struct Recordatorios: View {
    var body: some View {
        ZStack {
            Color("azulSecundario")
            //                .edgesIgnoringSafeArea(.top)
                .ignoresSafeArea()
            VStack{
                Text("Recordatorios")
                    .font(.custom("Recoleta-Bold", size: 40))
//                Spacer()
                
                Tarjeta(titulo: "Tomar la prueba 1", contenido: "Debes tomar la prueba del reloj, acude a tu clinica más cercana para hacerlo.", fecha: "01.09.2022")
                
                Tarjeta(titulo: "Tomar la prueba 2", contenido: "Recuerda hacer la prueba de Escala Abreviada de Depresión desde la app.", fecha: "08.09.2021")
                
                Tarjeta(titulo: "Completar la prueba 3", contenido: "Aún te falta completar una sección de la prueba de Escala de Valoración Sociofamiliar, puedes regresar a hacerlo ahora.", fecha: "08.09.2022")
                
                Tarjeta(titulo: "Tomar la prueba 3", contenido: "Recuerda hacer la prueba de Índice de Barthel desde la app.", fecha: "08.09.2022")
            }
            
        }
    }
}

struct Tarjeta: View{
    @State var titulo: String
    @State var contenido: String
    @State var fecha: String
    var body: some View{
        ZStack{
            RoundedRectangle(cornerRadius: 20)
                .fill(Color("rojo"))
                .frame(width: 350,height: 130)
                .shadow(color: .gray, radius: 2, x: 0, y: 0)

            HStack{
                Spacer()
                RoundedRectangle(cornerRadius: 20)
                    .fill(Color.white)
                    .frame(width: 330)
                
            }
            .frame(width: 350,height: 130)
            VStack(alignment: .leading){
                Text(titulo)
                    .font(.system(size:23))
                Text(contenido)
                    .frame(height: 50)
                Text(fecha)
                    .foregroundColor(Color.gray)
                    .font(.system(size:15))
                
            }
            .padding(.leading,40)
            .frame(maxWidth: .infinity, alignment: .leading)
            .frame(width: 350,height: 60)
        }
        Spacer()
            .frame(height: 10)
    }
}
struct Recordatorios_Previews: PreviewProvider {
    static var previews: some View {
        Recordatorios()
    }
}
