//
//  Dimensiones.swift
//  IEPAM-App
//
//  Created by Sergio on 10/10/22.
//

import SwiftUI

struct Dimensiones: View {
    var body: some View {
//        NavigationView{
        ZStack {
            Color("azulSecundario")
            //                .edgesIgnoringSafeArea(.top)
                .ignoresSafeArea()
            VStack(spacing:0){
                Image("caminata")
                    .resizable()
                    .scaledToFit()
                //                    .cornerRadius(radius: 20.0, corners: [.topLeft, .topRight])
                    .cornerRadius(20)
                //                    .ignoresSafeArea()
//                NavigationView{
                    RoundedRectangle(cornerRadius: 0)
                        .fill(.clear)
                        .overlay(content: {
                            VStack(){
                                Text("Pruebas por realizar")
                                    .font(.custom("Recoleta-Bold", size: 30))
                                    .frame(width: 400, height: 80)
                                
                                    .background(.white)
                                    .background(Color("azulSecundario"))
                                VStack(alignment: .leading){
                                    Spacer()
                                    NavigationLink(destination: Deyesavage()){
                                        Text("Cognitiva")
                                            .foregroundColor(.black)
                                            .font(.system(size: 20, weight: .semibold))
                                    }
                                    ProgressView( value: 1, total: 100)
                                        .frame(width: 340)
                                        .tint(Color("rojo"))
                                    Spacer()
                                    NavigationLink(destination: PruebasPorRealizar()){
                                        Text("Emocional")
                                            .font(.system(size: 20, weight: .semibold))
                                    }
                                    ProgressView(value: 1, total: 100)
                                        .frame(width: 340)
                                        .tint(Color("rojo"))
                                    Spacer()
                                    NavigationLink(destination: MMSE()){
                                        Text("Prueba MMSE")
                                            .foregroundColor(.black)
                                            .font(.system(size: 20, weight: .semibold))
                                    }
                                    ProgressView(value: 1, total: 100)
                                        .frame(width: 340)
                                        .tint(Color("rojo"))
                                    Spacer()
                                    
                                }
                                .frame(width:400)
                                .background(Color("azulSecundario"))
                                
                                
                            }
                            .cornerRadius(20)
                            .offset(y:-30)
                            //                        .frame(width: 0)
                        })
//                }
            }
        }
            
        }
//    var body: some View {
//        NavigationView{
//            ZStack{
//                Color("azulSecundario")
//                    .ignoresSafeArea()
//                GeometryReader {proxy in
//                    VStack(alignment: .leading){
//                        NavigationLink(destination: PruebasPorRealizar()){
//                            Text("Cognitiva")
//                                .foregroundColor(.black)
//                                .font(.system(size: 20, weight: .semibold))
//                        }
//                        Spacer()
//
//                    }
//                    .frame(width:400)
//                }
//            }
//        }
//    }
}

struct Dimensiones_Previews: PreviewProvider {
    static var previews: some View {
        Dimensiones()
    }
}
