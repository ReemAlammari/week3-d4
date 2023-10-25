//
//  ContentView.swift
//  GitHubClone
//
//  Created by Reem Alammari on 09/04/1445 AH.
//

import SwiftUI

struct MainView: View {
    var body: some View {
        ZStack{
            Color.gray
                .opacity(0.2)
                .ignoresSafeArea(.all)
            ScrollView{
                VStack {
                    
                    HStack{
                        
                        Image(systemName: "magnifyingglass")
                            .resizable()
                            .frame( width: 20 , height: 20 , alignment: .leading)
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
                        
                        
                       
                        Text("My Work")
                            .padding()
                            .foregroundColor(.white)
                            .font(.title)
                        
                        VStack{
                            
                        HStack{
                            
                            Image(systemName: "record.circle")
                                .resizable()
                                .frame(width: 20 , height: 20)
                                .padding(.all)
                                .background(.green)
                                .cornerRadius(10)
                                 
                            Text("Issues")
                            
                            Spacer()
                            Image(systemName: "chevron.forward")
                                
                        }//::HStack
                        
                            Divider()
                        HStack{
                            Image(systemName: "point.topleft.down.curvedto.point.filled.bottomright.up")
                                .resizable()
                                .frame(width: 20 , height: 20)
                                .padding(.all)
                                .background(.blue)
                                .cornerRadius(10)
                                
                               
                                 
                            Text("Pull Requests")
                            Spacer()
                            Image(systemName: "chevron.forward")
                                 
                                 
                            
                        }//::HStack
                            Divider()
                            HStack{
                                Image(systemName: "bubble.left.and.bubble.right")
                                    .resizable()
                                    .frame(width: 20 , height: 20)
                                    .padding(.all)
                                    .background(.purple)
                                    .cornerRadius(10)
                                     
                                   
                                Text("Discussions")
                                Spacer()
                                Image(systemName: "chevron.forward")
                                     
                                     
                                
                            }//::HStack
                            Divider()
                            HStack{
                                Image(systemName: "rectangle.3.group.fill")
                                    .resizable()
                                    .frame(width: 20 , height: 20)
                                    .padding(.all)
                                    .background(.gray)
                                    .cornerRadius(10)
                                    
                                   
                                Text("Projects")
                                Spacer()
                                Image(systemName: "chevron.forward")
                                    
                                     
                                
                            }//::HStack
                            Divider()
                            HStack{
                                Image(systemName: "record.circle")
                                    .resizable()
                                    .frame(width: 20 , height: 20)
                                    .padding(.all)
                                    .background(.orange)
                                    .cornerRadius(10)
                                    
                                   
                                Text("Organizations")
                                Spacer()
                                Image(systemName: "chevron.forward")
                                    
                                     
                                
                            }//::HStack
                            Divider()
                            HStack{
                                Image(systemName: "star")
                                    .resizable()
                                    .frame(width: 20 , height: 20)
                                    .padding(.all)
                                    .background(.yellow)
                                    .cornerRadius(10)
                                    
                                   
                                Text("Starred")
                                Spacer()
                                Image(systemName: "chevron.forward")
                                    
                                
                            }//::HStack
                            
                    }//::VStack
                            .padding()
                            .background(.gray.opacity(0.2))
                            .foregroundColor(.white)
                            .cornerRadius(10)
                            .frame(width:350 , height: 400)
                             Spacer()
                        
                }
                    VStack(spacing : -4){
                        HStack{
                            Text("Favorites")
                                .padding(.top)
                                .font(.title)
                                Spacer()
                            Image(systemName: "ellipsis")
                                .font(.title)
                        }//::HStack
                        .padding()
                        .foregroundColor(.white)
                        
                    Text("""
                    Add favorite reposittories here to have quick access at any time, without having to search
                    """)
                   
                    .padding()
                    .background(.gray.opacity(0.2))
                    .cornerRadius(10)
                    .foregroundColor(.white)
                       
                        
                    }//:VStack
                 
                    Spacer()
                }//::VStack
                 

            }//::ScrollView
            Spacer()
            
        }//::ZStack
    }//::Body
}//::struct

#Preview {
    MainView()
}
