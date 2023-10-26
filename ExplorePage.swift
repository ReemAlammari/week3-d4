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
                                    .resizable()
                                    .frame(width: 15 , height: 15)
                                    .padding()
                                    .background(.purple)
                                    .cornerRadius(10)
                                
                                Text("Trending Repositories")
                                
                                Spacer()
                                Image(systemName: "chevron.forward")
                                
                            }//::HStack
                            
                            Divider().background(.white)
                            HStack{
                                Image(systemName: "face")
                                    .resizable()
                                    .frame(width: 15 , height: 15)
                                    .padding(.all)
                                    .background(.blue)
                                    .cornerRadius(10)
                                
                                
                                
                                Text("Awesome Lists")
                                Spacer()
                                Image(systemName: "chevron.forward")
                                  
                            }
                        }//::HStack
                        .padding(.horizontal)
                        .background(.gray.opacity(0.2))
                        .foregroundColor(.white)
                        .cornerRadius(10)
                        .frame(width:380, height: 100 , alignment: .center)
                        
                         
                    }//::ZStack
                    .padding()
                    VStack(alignment: .leading, spacing: 20){
                        Text("Activity")
                            .foregroundColor(.white)
                            .font(.title2)
                            .bold()
                            .padding(.horizontal)
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
                }//::VStack
               
                }//::ScrolView
            }//::ZStack
    }
}

#Preview {
    ExplorePage()
}
