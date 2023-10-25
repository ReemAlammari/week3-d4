//
//  HomePage.swift
//  GitHubClone
//
//  Created by Reem Alammari on 09/04/1445 AH.
//

import SwiftUI

struct HomePage: View {
    var body: some View {
        ZStack{
            Color.gray
                .opacity(0.2)
                .ignoresSafeArea(.all)
            ScrollView{
                VStack {
                    
                    HStack{
                        Image(systemName: "star")
                            .resizable()
                            .bold()
                            .frame(width: 15 , height: 15)
                            .padding(.all)
                            .background(.yellow)
                            .cornerRadius(10)
                             
                        Text("Starred")
                            .frame(maxWidth: .infinity)
                        Spacer()
                        Image(systemName: "chevron.forward")
                        
                        
                    }//::HStack
                    .padding(9)
                    .background(.gray.opacity(0.2))
                    .foregroundColor(.white)
                  
                    .cornerRadius(10)
                    .frame(width:380 , height: 100)
                    Spacer()
                    HStack{
                        Text("Favorites")
                            .font(.title)
                        Spacer()
                        Image(systemName: "ellipsis")
                            .font(.title)
                    }//::HStack
                    .foregroundColor(.white)
                    .padding(.horizontal)
                    VStack{
                        Text("""
                Add favorite reposittories here to have quick access at any time, without having to search
                """)
                        
                        Button(action: {}) {
                            Text("Add Favorites")
                                .fontWeight(.bold)
                                .padding(EdgeInsets(top: 12, leading: 120, bottom: 12, trailing: 120))
                                .foregroundColor(Color.blue)
                                .background(Color.gray.opacity(0.5))
                                .cornerRadius(10)
                        }
                        
                    }//::VStack
                    .padding()
                    .background(.gray.opacity(0.2))
                    .cornerRadius(10)
                    .foregroundColor(.white)
                    
                    HStack{
                        Text("Shortcuts")
                        
                            .font(.title)
                        Spacer()
                        Image(systemName: "ellipsis")
                            .font(.title)
                    }//::HStack
                    .foregroundColor(.white)
                    .padding(.horizontal)
                    
                    VStack {
                        ZStack{
                            HStack(alignment: .center, spacing : 0) {
                                ZStack{
                                    Circle()
                                        .fill(Color.gray .opacity(0.7))
                                        .frame(width: 40, height:40)
                                        .shadow(color: .white , radius: 10 , x: 0, y: 0)
                                        .padding(EdgeInsets(top:10 , leading: 0, bottom: 10, trailing: 0 ))
                                    Image(systemName: "bolt")
                                        .shadow(radius: 80)
                                        .foregroundColor( .white)
                                        .shadow(radius: 100)
                                    
                                }//::ZStack
                                ZStack{
                                    Circle()
                                        .fill(Color.gray .opacity(0.3))
                                        .frame(width: 40, height:40)
                                        .shadow(color: .green , radius: 10 , x: 0, y: 0)
                                        .padding(EdgeInsets(top:10 , leading: 0, bottom: 10, trailing: 0 ))
                                    Image(systemName: "record.circle")
                                      //  .background()
                                        .foregroundColor(.green)
                                }//::ZStack
                                ZStack{
                                    Circle()
                                        .fill(Color.gray .opacity(0.3))
                                        .frame(width: 40, height:40)
                                        .shadow(color: .blue , radius: 10 , x: 0, y: 0)
                                        .padding(EdgeInsets(top:10 , leading: 0, bottom: 10, trailing: 0 ))
                                    Image(systemName: "point.topleft.down.curvedto.point.filled.bottomright.up")
                                        .foregroundColor(/*@START_MENU_TOKEN@*/.blue/*@END_MENU_TOKEN@*/)
                                }//::ZStack
                                ZStack{
                                    Circle()
                                        .fill(Color.gray .opacity(0.3))
                                        .frame(width: 40, height:40)
                                        .shadow(color: .purple , radius: 10 , x: 0, y: 0)
                                        .padding(EdgeInsets(top:10 , leading: 0, bottom: 10, trailing: 0 ))
                                    Image(systemName: "bubble.left.and.bubble.right")
                                        .foregroundColor(.purple)
                                }//::ZStack
                                ZStack{
                                    Circle()
                                        .fill(Color.gray .opacity(0.3))
                                        .frame(width: 40, height:40)
                                        .shadow(color: .orange , radius: 10 , x: 0, y: 0)
                                        .padding(EdgeInsets(top:10 , leading: 0, bottom: 10, trailing: 0 ))
                                    Image(systemName: "building.2")
                                        .foregroundColor(.orange)
                                }//::ZStack
                                ZStack{
                                    Circle()
                                        .fill(Color.gray .opacity(0.3))
                                        .frame(width: 40, height:40)
                                        .shadow(color: .purple , radius: 10 , x: 0, y: 0)
                                        .padding(EdgeInsets(top:10 , leading: 0, bottom: 10, trailing: 0 ))
                                    Image(systemName: "bag")
                                        .foregroundColor(.purple)
                                    
                                   }//::ZStack
                                ZStack{
                                    Circle()
                                        .fill(Color.gray .opacity(0.3))
                                        .frame(width: 40, height:40)
                                        .shadow(color: .white , radius: 10 , x: 0, y: 0)
                                        .padding(EdgeInsets(top:10 , leading: 0, bottom: 10, trailing: 0 ))
                                       
                                    Image(systemName: "platter.2.filled.ipad")
                                        .foregroundColor(.white)
                                        
                                    
                                   }//::ZStack
                                
                            }//::HStack
                            
                         .frame(maxWidth : 100)
                            
                        }//::ZStack
                        
                        
                        
                        Text("The things you need, one tap away")
                            .fontWeight(.bold )
                            .frame(alignment: .center)
                            .padding(5)
                        // .font(.callout)
                        
                        Text("""
                             Fast access to your lists of Issues, Pull Requests, or Discussion
                             """)
                        .frame(width: 350 , height: 40 ,  alignment: .center)
                        .font(.footnote )
                        Button(action: {}) {
                            Text("Get started")
                                .fontWeight(.bold)
                                .padding(EdgeInsets(top: 12, leading: 120, bottom: 12, trailing: 120))
                                .foregroundColor(Color.blue)
                                .background(Color.gray.opacity(0.5))
                                .cornerRadius(10)
                        }//::Button
                        
                    }//::VStack
                    .frame(alignment: .center)
                    .padding()
                    .background(.gray.opacity(0.2))
                    .cornerRadius(10)
                    .foregroundColor(.white)
                    
                    VStack(alignment: .leading){
                        Text("Recent")
                            .padding(.top)
                            .font(.title)
                        
                        Text("Issues and Pull Requests that you've interacted with recently will apear here")
                            .padding(.bottom)
                            .frame(width: 380 , alignment: .center)
                            .background(.gray.opacity(0.2))
                            .cornerRadius(10)
                        
                    }//::Vstack
                    .padding()
                    
                    .foregroundColor(.white)
                    
                    
                }//::Vstck
            }//>>ScrollView
        }//::ZStack
    }
}
#Preview {
    HomePage()
}
