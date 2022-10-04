//
//  home.swift
//  meditacion
//
//  Created by Daniel on 3/10/22.
//

import SwiftUI

struct home: View {
    
    var body: some View {
        NavigationStack{
            ZStack{
                ScrollView(showsIndicators: false){
                    VStack{
                        //header
                        VStack{
                            HStack{
                                VStack(alignment: .leading){
                                    Text("Good Morning")
                                        .fontWeight(.bold)
                                    Text("Shirshid")
                                        .fontWeight(.bold)
                                }
                                .padding()
                                Spacer()
                            }
                            HStack{
                                Image(systemName: "search")
                            }
                            
                        }
                        .font(.title)
                        .frame(maxWidth: .infinity)
                        .frame(height: 350)
                        .background(Color("header1"))
                        
                        //Categories
                        Grid {
                            GridRow {
                                NavigationLink(destination: meditation()){
                                    VStack{
                                        Image("il1")
                                            .resizable(resizingMode: .stretch)
                                            .frame(width: 140, height: 120)
                                        VStack(){
                                            Text("Diet")
                                            Text("Recomendation")
                                        }
                                        .fontWeight(.bold)
                                        .foregroundColor(.black)
                                        .font(.body)
                                        .padding(.top, 10.0)
                                    }
                                    .frame(height: 220)
                                    .frame(maxWidth: .infinity)
                                    .background(.white)
                                    .cornerRadius(12)
                                }
                                
                                NavigationLink(destination:meditation()){
                                    VStack{
                                        Image("il2")
                                            .resizable(resizingMode: .stretch)
                                            .frame(width: 130, height: 130)
                                        VStack(){
                                            Text("Kegel")
                                            Text("Exercises")
                                        }
                                        .fontWeight(.bold)
                                        .foregroundColor(.black)
                                        .font(.body)
                                        .padding(.top, 10.0)
                                    }
                                    .frame(height: 220)
                                    .frame(maxWidth: .infinity)
                                    .background(.white)
                                    .cornerRadius(12)
                                }
                            }
                            .padding(.top, -60)
                            
                            GridRow {
                                NavigationLink(destination: meditation()){
                                    VStack{
                                        Image("il3")
                                            .resizable(resizingMode: .stretch)
                                            .frame(width: 140, height: 120)
                                        VStack(){
                                            Text("Meditation")
                                        }
                                        .fontWeight(.bold)
                                        .font(.body)
                                        .foregroundColor(.black)
                                        .padding(.top, 10.0)
                                    }
                                    .frame(height: 220)
                                    .frame(maxWidth: .infinity)
                                    .background(.white)
                                    .cornerRadius(12)
                                }
                                
                                NavigationLink(destination: meditation()){
                                    VStack{
                                        Image("il4")
                                            .resizable(resizingMode: .stretch)
                                            .frame(width: 130, height: 130)
                                        VStack(){
                                            Text("Yoga")
                                        }
                                        .fontWeight(.bold)
                                        .foregroundColor(.black)
                                        .font(.body)
                                        .padding(.top, 10.0)
                                    }
                                    .frame(height: 220)
                                    .frame(maxWidth: .infinity)
                                    .background(.white)
                                    .cornerRadius(12)
                                }
                            }
                            .padding(.bottom, 30)
                            
                        }
                        .padding(.horizontal, 20)
                        .background(Color("fondo"))
                        Spacer()
                    }
                }
                .ignoresSafeArea()
            }
            .navigationTitle("")
            .navigationBarHidden(true)
        }
       
    }
}

struct home_Previews: PreviewProvider {
    static var previews: some View {
        home()
    }
}
