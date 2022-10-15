//
//  PruebasPreview.swift
//  IEPAM-App
//
//  Created by Sergio on 06/10/22.
//

import SwiftUI

struct PruebasPreview: View {
    var body: some View {
        NavigationView{
            ZStack {
                Color("azulSecundario")
                //                .edgesIgnoringSafeArea(.top)
                    .ignoresSafeArea()
                VStack{
                    Spacer()
                    Text("Armando Casas")
                        .font(.custom("Recoleta-Bold", size: 40))
                    Spacer()
                    
                    Text("Pruebas por realizar")
                        .font(.system(size: 20))
                    RoundedRectangle(cornerRadius: 20)
                        .fill(.white)
                        .frame(width:350, height: 250)
                        .shadow(color: .gray, radius: 2, x: 0, y: 0)
                        .overlay(content: {
                            VStack{
                                HStack{
                                    Image("arrow")
                                        .resizable()
                                        .scaledToFit()
                                        .frame(width: 40)
                                        .rotationEffect(Angle(degrees: 180))
                                    NavigationLink(destination: Deyesavage()){
                                        Image("pruebasPreview")
                                            .resizable()
                                            .scaledToFit()
                                            .frame(height: 150)
                                    }
                                    Image("arrow")
                                        .resizable()
                                        .scaledToFit()
                                        .frame(width: 40)
                                }
                                NavigationLink(destination: Dimensiones()){
                                    Text("Ver todas")
                                        .foregroundColor(Color.white)
                                        .padding(9)
                                        .background(
                                            RoundedRectangle(cornerRadius: 20)
                                                .fill(Color("rojo"))
                                                .shadow(color: .gray, radius: 2, x: 0, y: 0)

                                        )
                                        .buttonStyle(PlainButtonStyle())
                                        .frame(width: 100)
                                }
                                
                            }
                            
                        })
                    Spacer()
                    Text("Pruebas realizadas")
                        .font(.system(size: 20))
                    RoundedRectangle(cornerRadius: 20)
                        .fill(.white)
                        .frame(width: 350, height: 250)
                        .shadow(color: .gray, radius: 2, x: 0, y: 0)
                        .overlay(content: {
                            VStack{
                                Rectangle()
                                    .fill(.clear)
                                    .border(Color("azulPrimario"))
                                    .frame(width:330, height: 40)
                                Rectangle()
                                    .fill(.clear)
                                    .border(Color("azulPrimario"))
                                    .frame(width:330, height: 40)
                                Rectangle()
                                    .fill(.clear)
                                    .border(Color("azulPrimario"))
                                    .frame(width:330, height: 40)
                                Button{
                                }label:{
                                    Text("Ver todas")
                                        .foregroundColor(Color.white)
                                        .padding(9)
                                        .background(
                                            RoundedRectangle(cornerRadius: 20)
                                                .fill(Color("azulPrimario"))
                                                .shadow(color: .gray, radius: 2, x: 0, y: 0)

                                        )
                                        .buttonStyle(PlainButtonStyle())
                                        .frame(width: 100)
                                }
                            }
                        })
                    Spacer()
                    
                }
                
            }
        }
    }
}

struct PruebasPreview_Previews: PreviewProvider {
    static var previews: some View {
        PruebasPreview()
    }
}
