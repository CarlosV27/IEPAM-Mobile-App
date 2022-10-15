//
//  HomeView.swift
//  IEPAM-App
//
//  Created by Sergio Chavez on 02/10/22.
//

import SwiftUI

struct HomeView: View {
    var body: some View {
        NavigationView{
            ZStack {
                Color("azulSecundario")
                //                .edgesIgnoringSafeArea(.top)
                    .ignoresSafeArea()
                VStack{
                    HStack{
                        NavigationLink(destination: Perfil()){
                            Image("fotoUsuario")
                                .resizable()
                                .scaledToFit()
                                .frame(width: 95)
                        }
                        
                        Text("Hola, Armando!")
                            .font(.custom("Recoleta-Bold", size: 30))
                    }
                    CompactHomeView(vista: "Recordatorios", color: "rojo")
                    CompactHomeView(vista: "Recomendaciones", color: "azulPrimario")
                }
                
            }
            
            
        }
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
