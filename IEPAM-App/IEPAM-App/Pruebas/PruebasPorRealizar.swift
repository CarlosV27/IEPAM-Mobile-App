//
//  PruebasPorRealizar.swift
//  IEPAM-App
//
//  Created by Sergio on 06/10/22.
//

import SwiftUI

struct PruebasPorRealizar: View {
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
                    RoundedRectangle(cornerRadius: 0)
                        .fill(.clear)
                        .overlay(content: {
                            VStack(){
                                Text("Cognitiva")
                                    .font(.custom("Recoleta-Bold", size: 30))
                                    .frame(width: 400, height: 80)
                                
                                    .background(.white)
                                    .background(Color("azulSecundario"))
                                VStack(alignment: .leading){
                                    Spacer()
                                    NavigationLink(destination: Deyesavage()){
                                        Text("Escala Deyesavage")
                                            .foregroundColor(.black)
                                            .font(.system(size: 20, weight: .semibold))
                                    }
                                    ProgressView( value: 1, total: 100)
                                        .frame(width: 340)
                                        .tint(Color("rojo"))
                                    Spacer()
                                    NavigationLink(destination: Deyesavage()){
                                        Text("Prueba de reloj")
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
                }
            }
            
        }
//    }
}

//step 1 -- Create a shape view which can give shape
struct CornerRadiusShape: Shape {
    var radius = CGFloat.infinity
    var corners = UIRectCorner.allCorners

    func path(in rect: CGRect) -> Path {
        let path = UIBezierPath(roundedRect: rect, byRoundingCorners: corners, cornerRadii: CGSize(width: radius, height: radius))
        return Path(path.cgPath)
    }
}

//step 2 - embed shape in viewModifier to help use with ease
struct CornerRadiusStyle: ViewModifier {
    var radius: CGFloat
    var corners: UIRectCorner

    func body(content: Content) -> some View {
        content
            .clipShape(CornerRadiusShape(radius: radius, corners: corners))
    }
}
//step 3 - crate a polymorphic view with same name as swiftUI's cornerRadius
extension View {
    func cornerRadius(radius: CGFloat, corners: UIRectCorner) -> some View {
        ModifiedContent(content: self, modifier: CornerRadiusStyle(radius: radius, corners: corners))
    }
}

struct PruebasPorRealizar_Previews: PreviewProvider {
    static var previews: some View {
        PruebasPorRealizar()
    }
}
