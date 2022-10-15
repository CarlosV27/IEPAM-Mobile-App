//
//  TestInicial.swift
//  IEPAM-App
//
//  Created by Sergio on 06/10/22.
//

import SwiftUI

struct TestInicial: View {
    @State var showView: Bool = false
    var body: some View {
            GeometryReader {proxy in
                VStack{
                    Text("Cuentános")
                        .font(.custom("Recoleta-Bold", size: 50))
                        .frame(maxWidth: .infinity, alignment: .center)
                        .padding(.bottom, 35)
                        .padding(.top, 30)
                        .multilineTextAlignment(.center)
                    Text("¿Tiene problemas:")
                        .font(.custom("Inter-Bold", size: 25))
                        .padding()
                    Spacer()
                        .frame(height: 40)
                    VStack {
                        HStack() {
                            Text("de memoria?")
                                .font(.custom("Inter-Regular", size: 20))
                                .padding()
                            Spacer()
//                                .frame(width: 20)
                            Button {
                                print("Hola")
                            } label: {
                                Text("Si")
                                    .font(.custom("Inter-Bold", size: 20))
                                    .foregroundColor(.white)
                                    .padding()
                            }
                            .frame(width: 60, height: 60)
                            .background(Color("azulPrimario"))
                            .clipShape(RoundedRectangle(cornerRadius: 20))
                            Button {
                                print("Hola")
                            } label: {
                                Text("No")
                                    .font(.custom("Inter-Bold", size: 20))
                                    .foregroundColor(.white)
                                    .padding()
                            }
                            .frame(width: 60, height: 60)
                            .background(Color("azulPrimario"))
                            .clipShape(RoundedRectangle(cornerRadius: 20))
                        }
                        Spacer()
                            .frame(height: 25)
                        HStack() {
                            Text("de orientación\nde tiempo?")
                                .font(.custom("Inter-Regular", size: 20))
                                .padding()
                            Spacer()
//                                .frame(width: 20)
                            Button {
                                print("Hola")
                            } label: {
                                Text("Si")
                                    .font(.custom("Inter-Bold", size: 20))
                                    .foregroundColor(.white)
                                    .padding()
                            }
                            .frame(width: 60, height: 60)
                            .background(Color("azulPrimario"))
                            .clipShape(RoundedRectangle(cornerRadius: 20))
                            Button {
                                print("Hola")
                            } label: {
                                Text("No")
                                    .font(.custom("Inter-Bold", size: 20))
                                    .foregroundColor(.white)
                                    .padding()
                            }
                            .frame(width: 60, height: 60)
                            .background(Color("azulPrimario"))
                            .clipShape(RoundedRectangle(cornerRadius: 20))
                        }
                        Spacer()
                            .frame(height: 25)
                        HStack() {
                            Text("de orientación\nde espacio")
                                .font(.custom("Inter-Regular", size: 20))
                                .padding()
                            Spacer()
//                                .frame(width: 20)
                            Button {
                                print("Hola")
                            } label: {
                                Text("Si")
                                    .font(.custom("Inter-Bold", size: 20))
                                    .foregroundColor(.white)
                                    .padding()
                            }
                            .frame(width: 60, height: 60)
                            .background(Color("azulPrimario"))
                            .clipShape(RoundedRectangle(cornerRadius: 20))
                            Button {
                                print("Hola")
                            } label: {
                                Text("No")
                                    .font(.custom("Inter-Bold", size: 20))
                                    .foregroundColor(.white)
                                    .padding()
                            }
                            .frame(width: 60, height: 60)
                            .background(Color("azulPrimario"))
                            .clipShape(RoundedRectangle(cornerRadius: 20))
                        }
                        Spacer()
                            .frame(height: 25)
                        HStack() {
                            Text("de depresión?")
                                .font(.custom("Inter-Regular", size: 20))
                                .padding()
                            Spacer()
//                                .frame(width: 20)
                            Button {
                                print("Hola")
                            } label: {
                                Text("Si")
                                    .font(.custom("Inter-Bold", size: 20))
                                    .foregroundColor(.white)
                                    .padding()
                            }
                            .frame(width: 60, height: 60)
                            .background(Color("azulPrimario"))
                            .clipShape(RoundedRectangle(cornerRadius: 20))
                            Button {
                                print("Hola")
                            } label: {
                                Text("No")
                                    .font(.custom("Inter-Bold", size: 20))
                                    .foregroundColor(.white)
                                    .padding()
                            }
                            .frame(width: 60, height: 60)
                            .background(Color("azulPrimario"))
                            .clipShape(RoundedRectangle(cornerRadius: 20))
                        }
                        Spacer()
                            .frame(height: 25)
                        HStack() {
                            Text("para escribir?")
                                .font(.custom("Inter-Regular", size: 20))
                                .padding()
                            Spacer()
//                                .frame(width: 20)
                            Button {
                                print("Hola")
                            } label: {
                                Text("Si")
                                    .font(.custom("Inter-Bold", size: 20))
                                    .foregroundColor(.white)
                                    .padding()
                            }
                            .frame(width: 60, height: 60)
                            .background(Color("azulPrimario"))
                            .clipShape(RoundedRectangle(cornerRadius: 20))
                            Button {
                                print("Hola")
                            } label: {
                                Text("No")
                                    .font(.custom("Inter-Bold", size: 20))
                                    .foregroundColor(.white)
                                    .padding()
                            }
                            .frame(width: 60, height: 60)
                            .background(Color("azulPrimario"))
                            .clipShape(RoundedRectangle(cornerRadius: 20))
                        }
                        
                        Button {
                            print("Hola")
                            showView.toggle()
                        } label: {
                            Text("Aceptar")
                                .font(.custom("Inter-Bold", size: 20))
                                .foregroundColor(.white)
                                .padding()
                        }
                        .frame(width: 120, height: 60)
                        .background(Color("azulPrimario"))
                        .clipShape(RoundedRectangle(cornerRadius: 20))
                        .shadow(color: .gray, radius: 2, x: 0, y: 0)
                        
                    }
                    .frame(width: 350)
                }
            }.fullScreenCover(isPresented: $showView){
                Home()
            }
        }
}

struct TestInicial_Previews: PreviewProvider {
    static var previews: some View {
        TestInicial()
    }
}
