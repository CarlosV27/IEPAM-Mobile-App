//
//  CompactHomeView.swift
//  IEPAM-App
//
//  Created by Sergio on 03/10/22.
//

import SwiftUI

struct CompactHomeView: View {
    @State var vista = ""
    @State var color = ""
    @State var nombre = ""
    var body: some View {
        ZStack{
            VStack{
                HStack{
                    Spacer()
                    Text(vista)
                        .font(.system(size:25))
                    Spacer()
                    NavigationLink(destination: Recordatorios()){
                        Text("Ver todos")
                            .foregroundColor(Color.white)
                            .padding(9)
                            .background(
                                RoundedRectangle(cornerRadius: 20)
                                    .fill(Color(color))
                                    .shadow(color: .gray, radius: 2, x: 0, y: 2)
                            )
                            .buttonStyle(PlainButtonStyle())
                            .frame(width: 100)
                    }
                    Spacer()
                }
//                ZStack{
//                    RoundedRectangle(cornerRadius: 20)
//                        .fill(Color(color))
//                        .frame(width: 350,height: 60)
//                    HStack{
//                        Spacer()
//                        RoundedRectangle(cornerRadius: 20)
//                            .fill(Color.white)
//                            .frame(width: 330)
//                    }
//                    .frame(width: 350,height: 60)
//                    VStack(alignment: .leading){
//                        Text(nombre)
//                            .font(.system(size:20))
//                        Text("01.09.2022")
//                            .foregroundColor(Color.gray)
//                            .font(.system(size:15))
//                        
//                    }
//                    .padding(.leading,40)
//                    .frame(maxWidth: .infinity, alignment: .leading)
//                    .frame(width: 350,height: 60)
//                }
//                Spacer()
//                    .frame(height: 10)
//                ZStack{
//                    RoundedRectangle(cornerRadius: 20)
//                        .fill(Color(color))
//                        .frame(width: 350,height: 60)
//                    HStack{
//                        Spacer()
//                        RoundedRectangle(cornerRadius: 20)
//                            .fill(Color.white)
//                            .frame(width: 330)
//                    }
//                    .frame(width: 350,height: 60)
//                    VStack(alignment: .leading){
//                        Text("Tomar la prueba 1")
//                            .font(.system(size:20))
//                        Text("01.09.2022")
//                            .foregroundColor(Color.gray)
//                            .font(.system(size:15))
//                        
//                    }
//                    .padding(.leading,40)
//                    .frame(maxWidth: .infinity, alignment: .leading)
//                    .frame(width: 350,height: 60)
//                }
//                Spacer()
//                    .frame(height: 10)
//                ZStack{
//                    RoundedRectangle(cornerRadius: 20)
//                        .fill(Color(color))
//                        .frame(width: 350,height: 60)
//                    HStack{
//                        Spacer()
//                        RoundedRectangle(cornerRadius: 20)
//                            .fill(Color.white)
//                            .frame(width: 330)
//                    }
//                    .frame(width: 350,height: 60)
//                    VStack(alignment: .leading){
//                        Text("Tomar la prueba 1")
//                            .font(.system(size:20))
//                        Text("01.09.2022")
//                            .foregroundColor(Color.gray)
//                            .font(.system(size:15))
//                        
//                    }
//                    .padding(.leading,40)
//                    .frame(maxWidth: .infinity, alignment: .leading)
//                    .frame(width: 350,height: 60)
//                }
                
                TarjetaPreview(vista: vista, color: color, nombre: "Tomar la prueba 1",fecha: "01.09.2022")
                TarjetaPreview(vista: vista, color: color, nombre: "Tomar la prueba 2",fecha: "01.09.2022")
                TarjetaPreview(vista: vista, color: color, nombre: "Tomar la prueba 3",fecha: "01.09.2022")
                
            }
        }
        
    }
    func decidirVista(vista: String){
        if(vista == "Recordatorios"){
            color = "rojo"
        }else{
            color = "azulPrimario"
        }
    }
}

struct TarjetaPreview: View{
    @State var vista = ""
    @State var color = ""
    @State var nombre = ""
    @State var fecha = ""
    var body: some View{
        ZStack{
            RoundedRectangle(cornerRadius: 20)
                .fill(Color(color))
                .frame(width: 350,height: 60)
                .shadow(color: .gray, radius: 2, x: 0, y: 0)
            HStack{
                Spacer()
                RoundedRectangle(cornerRadius: 20)
                    .fill(Color.white)
                    .frame(width: 330)
            }
            .frame(width: 350,height: 60)
            VStack(alignment: .leading){
                Text(nombre)
                    .font(.system(size:20))
                Text(fecha)
                    .foregroundColor(Color.gray)
                    .font(.system(size:15))
                
            }
            .padding(.leading,40)
            .frame(maxWidth: .infinity, alignment: .leading)
            .frame(width: 350,height: 60)
            
        }
        
    }
}

struct CompactHomeView_Previews: PreviewProvider {
    static var previews: some View {
        CompactHomeView(vista: "Recordatorios")
    }
}
