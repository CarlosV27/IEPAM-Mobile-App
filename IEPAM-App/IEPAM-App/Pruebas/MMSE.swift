//
//  MMSE.swift
//  IEPAM-App
//
//  Created by Sergio on 06/10/22.
//

import SwiftUI

struct MMSE: View {
    var body: some View {
        ZStack{
            Color("azulSecundario")
                .ignoresSafeArea()
            VStack{
//                Rectangle()
//                    .fill(.white)
//                    .frame(height: 110)
//                    .overlay(content: {
//                        Text("ESCALA ABREVIADA DE DEPRESIÓN GERIÁTRICA DEYESAVAGE")
//                            .font(.system(size: 25))
//                    })
//                    .cornerRadius(radius: 20.0, corners: [.bottomLeft, .bottomRight])
                Text("MINI-MENTAL STATE EXAMINATION DE FOLSTEIN (MMSE-30)")
                    .font(.system(size: 25, weight: .semibold))
                Spacer()
                ProgressView(value: 19,total: 100)
                    .background(.white)
                    .tint(.green)
                    .frame(width: 250, height: 30)
                    .progressViewStyle(RoundedRectProgressViewStyle())
                    .cornerRadius(20)
                    .shadow(color: .gray, radius: 2, x: 0, y: 0)

                Spacer()
                RoundedRectangle(cornerRadius: 20)
                .fill(.white)
                .frame(width: 350, height: 300)
                .shadow(color: .gray, radius: 2, x: 0, y: 0)
                .overlay(content: {
                    VStack {
                        Text("Repita estas 3 palabras hasta entenderlas")
                            .font(.system(size: 24))
                        Spacer()
                        VStack{
                            Button {
                                print("Hola")
                            } label: {
                                Text("Manzana")
                                    .font(.custom("Inter-Regular", size: 20))
                                    .foregroundColor(.white)
                                    .padding()
                                    
                            }
                            .frame(width: 150)
                            .background(Color("azulPrimario"))
                            .clipShape(RoundedRectangle(cornerRadius: 20))
                            Spacer()
                            Button {
                                print("Hola")
                            } label: {
                                Text("Caballo")
                                    .font(.custom("Inter-Regular", size: 20))
                                    .foregroundColor(.white)
                                    .padding()
                                    
                            }
                            .frame(width: 150)
                            .background(Color("azulPrimario"))
                            .clipShape(RoundedRectangle(cornerRadius: 20))
                            Spacer()
                            Button {
                                print("Hola")
                            } label: {
                                Text("Centavo")
                                    .font(.custom("Inter-Regular", size: 20))
                                    .foregroundColor(.white)
                                    .padding()
                                    
                            }
                            .frame(width: 150)
                            .background(Color("azulPrimario"))
                            .clipShape(RoundedRectangle(cornerRadius: 20))
                        }
                        .frame(width: 200)
                    }.frame(height: 140)
                    
                })
                Spacer()
                    .frame(height: 130)
            }
            
        }
    }
}

struct MMSE_Previews: PreviewProvider {
    static var previews: some View {
        MMSE()
    }
}
