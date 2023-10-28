//
//  ExplorePage.swift
//  GitHubClone
//
//  Created by Reem Alammari on 10/04/1445 AH.
//

import SwiftUI

struct ExplorePage: View {
    var body: some View {
        ZStack{
            Color.gray
                .opacity(0.2)
                .ignoresSafeArea(.all)
            
            ScrollView{
                VStack(alignment : .leading) {
                    Text("Explore")
                        .foregroundColor(.white)
                        .padding(.leading)
                        .font(.largeTitle)
                        .bold()
                    HStack {
                        
                        Image(systemName: "magnifyingglass")
                            .resizable()
                            .frame( width:15, height: 20 , alignment: .leading)
                            .padding(.horizontal)
                        // .imageScale(.large)
                        
                        Text("Search GitHub")
                            .frame( width: 300 , height: 40 , alignment: .leading)
                        
                    }//::HStack
                    
                    .background(.white.opacity(0.75))
                    .cornerRadius(10)
                    .foregroundColor(.gray)
                    .padding(.horizontal)
                    
                    VStack(alignment: .leading ) {
                        
                        
                        
                        Text("Discover")
                            .padding()
                            .foregroundColor(.white)
                            .font(.title2)
                            .bold()
                        
                        VStack{
                            
                            HStack{
                                
                                Image(systemName: "flame")
                                    .font(.system(size: 30))
                                    .frame(width: 15 , height: 15)
                                    .padding()
                                    .background(.purple)
                                    .cornerRadius(10)
                                
                                Text("Trending Repositories")
                                    .padding()
                                    .font(.title3)
                                Spacer()
                                Image(systemName: "chevron.forward")
                                
                            }//::HStack
                            
                            Divider()
                            
                            HStack{
                                Image(systemName: "face.smiling")
                                    .font(.system(size: 30))
                                    .frame(width: 12 , height: 12)
                                    .padding()
                                    .background(.blue)
                                    .cornerRadius(10)
                                
                                Text("Awesome Lists")
                                    .padding()
                                    .font(.title3)
                                
                                Spacer()
                                Image(systemName: "chevron.forward")
                                  
                            }
                        }//::HStack
                        .padding(.horizontal)
                        .background(.gray.opacity(0.2))
                        .foregroundColor(.white)
                        .cornerRadius(10)
                        .frame(width:370, height: 100 , alignment: .center)
                        .padding(.trailing)
                        
                         
                    }//::ZStack
                    .padding()
                    VStack(alignment: .leading, spacing: 20){
                        Text("Activity")
                            .foregroundColor(.white)
                            .padding(.top)
                            .padding(.horizontal)
                            .padding(.leading)
                            .foregroundColor(.white)
                            .font(.title2)
                            .bold()
                        HStack {
                            Image("man")
                                .resizable()
                                .clipShape(Circle())
                                .frame(width: 30 , height: 30)
                                .padding(.horizontal)
                            Text("apple/swift-syntax")
                                .foregroundColor(.white)
                            
                        }
                        HStack{
                            Image("AppleLogo")
                                .resizable()
                                .frame(width: 30 , height: 30)
                                .background(.white)
                                .cornerRadius(8)
                                .padding(.horizontal)
                            Text("apple/ swift-syntax")
                        }
                        
                        Text("509.0.1")
                            .font(.largeTitle)
                            .bold()
                            .padding()
                        
                    }
                    .foregroundColor(.white)
                    
                    HStack{
                        Image(systemName: "star")
                        Text("12.600")
                            .padding(.horizontal)
                        Circle()
                            .frame(width: 16, height: 16)
                            .foregroundColor(.blue)
                        Text("Type Script")
                        
                    }
                    .foregroundColor(.white)
                    .font(.title3)
                    .padding(.horizontal)
                    
                    
                    HStack{
                        Image(systemName: "person")
                        Text("26 contrbuters")
                        Image(systemName: "chevron.forward")
                        
                    }
                    .foregroundColor(.white)
                    .font(.title3)
                    .padding(.horizontal)
                    
                    
                        Button(action: {}, label: {
                            HStack{
                                ZStack{
                                    
                                        Image(systemName: "star")
                                           .bold()
                                           .foregroundColor(.white)
                                            .padding(.trailing)
                                            .frame( width: 100, height: 100, alignment :.leading)
                                        Text(" Star ")
                                           .font(.title2)
                                            .padding()
                                            .frame(width: 380)
                                            .background(Color.gray.opacity(0.4))
                                            .cornerRadius(8*2)
                                            .padding(.horizontal)
                                            .padding(.trailing)
                                }
                                .foregroundColor(.white)
                            }
                            })
                     
                }//::VStack
                .padding(.leading)
                }//::ScrolView
            }//::ZStack
    }
}

#Preview {
    ExplorePage()
}
