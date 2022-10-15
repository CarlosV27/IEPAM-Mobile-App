//
//  Deyesavage.swift
//  IEPAM-App
//
//  Created by Sergio on 06/10/22.
//

import SwiftUI

struct Deyesavage: View {
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
                Text("ESCALA ABREVIADA DE DEPRESIÓN GERIÁTRICA DEYESAVAGE")
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
                .frame(width: 350, height: 250)
                .shadow(color: .gray, radius: 2, x: 0, y: 0)

                .overlay(content: {
                    VStack {
                        Text("¿Está usted satisfecho con su vida?")
                            .font(.system(size: 24))
                        Spacer()
                        HStack{
                            Button {
                                print("Hola")
                            } label: {
                                Text("Si")
                                    .font(.custom("Inter-Regular", size: 20))
                                    .foregroundColor(.white)
                                    .padding()
                                    
                            }
                            .frame(width: 90)
                            .background(Color("azulPrimario"))
                            .clipShape(RoundedRectangle(cornerRadius: 20))
                            Spacer()
                            Button {
                                print("Hola")
                            } label: {
                                Text("No")
                                    .font(.custom("Inter-Regular", size: 20))
                                    .foregroundColor(.white)
                                    .padding()
                                    
                            }
                            .frame(width: 90)
                            .background(Color("rojo"))
                            .clipShape(RoundedRectangle(cornerRadius: 20))
                        }
                        .frame(width: 200)
                    }.frame(height: 140)
                    
                })
                Spacer()
                    .frame(height: 170)
            }
            
        }
    }
}


struct RoundedRectProgressViewStyle: ProgressViewStyle {
    func makeBody(configuration: Configuration) -> some View {
        ZStack(alignment: .leading) {
            RoundedRectangle(cornerRadius: 20)
                .frame(width: 250, height: 20)
                .foregroundColor(.white)
            
            
            RoundedRectangle(cornerRadius: 20)
                .frame(width: CGFloat(configuration.fractionCompleted ?? 0) * 230, height: 20)
                .foregroundColor(.green)
        }
        .padding()
        .padding(sides: [.left], value: 20)
    }
}

enum Side: Equatable, Hashable {
    case left
    case right
}

extension View {
    func padding(sides: [Side], value: CGFloat = 8) -> some View {
        HStack(spacing: 0) {
            if sides.contains(.left) {
                Spacer().frame(width: value)
            }
            self
            if sides.contains(.right) {
                Spacer().frame(width: value)
            }
        }
    }
}


struct Deyesavage_Previews: PreviewProvider {
    static var previews: some View {
        Deyesavage()
    }
}
