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
                    HStack{
                        
                        Image(systemName: "magnifyingglass")
                            .resizable()
                            .frame( width:15, height: 20 , alignment: .leading)
                            .padding(.horizontal)
                        // .imageScale(.large)
                        
                        Text("Search GitHub")
                            .frame( width: 300 , height: 40 , alignment: .leading)
                        
                    }//::HStack
                    
                    .background(.gray.opacity(0.4))
                    .cornerRadius(10)
                    .foregroundColor(.white)
                    .padding()
                    
                    VStack(alignment: .leading ) {
                        
                        
                        
                        Text("Discover")
                            .padding()
                            .foregroundColor(.white)
                            .font(.title)
                        
                        VStack{
                            
                            HStack{
                                
                                Image(systemName: "fire")
                                    .resizable()
                                    .frame(width: 15 , height: 15)
                                    .padding()
                                    .background(.purple)
                                    .cornerRadius(10)
                                
                                Text("Trending Repositories")
                                
                                Spacer()
                                Image(systemName: "chevron.forward")
                                
                            }//::HStack
                            
                            Divider()
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
                        
                        .background(.gray.opacity(0.2))
                        .foregroundColor(.white)
                        .cornerRadius(10)
                        .frame(width:370 , height: 400)
                         
                    }//::ZStack
                    
                    Text("Activity")
                    HStack {
                        Image("man")
                            .resizable()
                            .clipShape(Circle())
                            .frame(width: 30 , height: 30)
                        
                            Text("apple/swift-syntax")
                                .foregroundColor(.white)
                            
                         }
                    HStack{
                        Image("AppleLogo")
                            .resizable()
                            .frame(width: 20 , height: 20)
                            .background(.white)
                            .cornerRadius(10)
                        Text("apple/ swift-syntax")
                      }
                    
                    Text("509.0.1")
                        .font(.largeTitle)
                        .bold()
                 
                }//::VStack
                Spacer()
                }//::ScrolView
            }//::ZStack
    }
}

#Preview {
    ExplorePage()
}
