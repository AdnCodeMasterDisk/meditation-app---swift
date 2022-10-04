//
//  meditation.swift
//  meditacion
//
//  Created by Daniel on 3/10/22.
//

import SwiftUI

struct meditation: View {
    var body: some View {
        ZStack{
            ScrollView(showsIndicators: false){
                VStack{
                    //header
                    VStack{
                        HStack{
                            VStack(alignment: .leading){
                                NavigationLink(destination: home()){
                                    HStack{
                                        Image(systemName: "chevron.left")
                                            .font(.system(size: 16))
                                            .foregroundColor(.black)
                                        Text("Back")
                                            .foregroundColor(.black)
                                            .font(.subheadline)
                                    }
                                }
                                Text("Meditation")
                                    .fontWeight(.bold)
                                    .foregroundColor(.black)
                                    .padding(.top, 15)
                                Text("3 - 10 min course")
                                    .font(.body)
                                    .fontWeight(.bold)
                                    .padding(.top, 5)
                                Text("Centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of")
                                    .font(.system(size: 14))
                                    .padding(.top, 30 )
                                    .foregroundColor(.secondary)
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
                    .background(Color("header2"))
                    
                    //Listado Sessiones
                    Grid {
                        GridRow {
                            VStack{
                                HStack(){
                                    Image(systemName: "play.circle.fill")
                                        .font(.system(size: 34))
                                    Text("Session 1")
                                }
                                .font(.body)
                            }
                            .frame(height: 80)
                            .frame(maxWidth: .infinity)
                            .background(.white)
                            .cornerRadius(12)
                            
                            VStack{
                                HStack(){
                                    Image(systemName: "play.circle.fill")
                                        .font(.system(size: 34))
                                    Text("Session 2")
                                }
                                .font(.body)
                            }
                            .frame(height: 80)
                            .frame(maxWidth: .infinity)
                            .background(.white)
                            .cornerRadius(12)
                        }
                        .padding(.top, -60)
                        GridRow {
                            VStack{
                                HStack(){
                                    Image(systemName: "play.circle.fill")
                                        .font(.system(size: 34))
                                    Text("Session 3")
                                }
                                .font(.body)
                            }
                            .frame(height: 80)
                            .frame(maxWidth: .infinity)
                            .background(.white)
                            .cornerRadius(12)
                            
                            VStack{
                                HStack(){
                                    Image(systemName: "play.circle.fill")
                                        .font(.system(size: 34))
                                    Text("Session 4")
                                }
                                .font(.body)
                            }
                            .frame(height: 80)
                            .frame(maxWidth: .infinity)
                            .background(.white)
                            .cornerRadius(12)
                        }
                        GridRow {
                            VStack{
                                HStack(){
                                    Image(systemName: "play.circle.fill")
                                        .font(.system(size: 34))
                                    Text("Session 5")
                                }
                                .font(.body)
                            }
                            .frame(height: 80)
                            .frame(maxWidth: .infinity)
                            .background(.white)
                            .cornerRadius(12)
                            
                            VStack{
                                HStack(){
                                    Image(systemName: "play.circle.fill")
                                        .font(.system(size: 34))
                                    Text("Session 6")
                                }
                                .font(.body)
                            }
                            .frame(height: 80)
                            .frame(maxWidth: .infinity)
                            .background(.white)
                            .cornerRadius(12)
                        }
                        .padding(.bottom, 40)
                    }
                    .padding(.horizontal, 20)
                    
                    VStack(alignment: .leading){
                        Text("Meditation")
                            .font(.headline)
                            .fontWeight(.bold)
                            .padding(.leading)
                        
                        HStack{
                            Image("il3")
                                .resizable(resizingMode: .stretch)
                                .frame(width: 110, height: 90)
                                
                            VStack(alignment: .leading){
                                Text("Basic 2")
                                    .fontWeight(.bold)
                                Text("Start your deepen you practice")
                                    .font(.subheadline)
                            }
                            
                        }
                        
                        .frame(maxWidth: .infinity)
                        .frame(height: 110)
                        .background(.white)
                        .cornerRadius(12)
                        .padding()
                        .padding(.bottom, 100)
                    }
                }
            }
            .ignoresSafeArea()
            .background(Color("fondo"))
        }
        .navigationBarHidden(true)
    }
}

struct meditation_Previews: PreviewProvider {
    static var previews: some View {
        meditation()
    }
}
