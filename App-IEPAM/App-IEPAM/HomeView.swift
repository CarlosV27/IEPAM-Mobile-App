//
//  ContentView.swift
//  App-IEPAM
//
//  Created by Alumno on 23/09/22.
//

import SwiftUI

struct HomeView: View {
    var body: some View {
        GeometryReader { proxy in
            
            VStack {
                Text("Hola Mundo")
                    .padding()
            }
            
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
