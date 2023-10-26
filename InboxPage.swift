//
//  InboxPage.swift
//  GitHubClone
//
//  Created by Reem Alammari on 09/04/1445 AH.
//

import SwiftUI

struct InboxPage: View {
    var body: some View {
        ZStack{
            Color.gray
                 .opacity(0.99)
                .ignoresSafeArea(.all)
    //-------------------------------------------------------
            VStack(alignment: .leading) {
            
                Text("   Inbox")
                    .font(.largeTitle)
                    .foregroundColor(.white)
                    .bold()
                    .padding(.horizontal)
            
                
                HStack(spacing: 0)
                {
                  
                    Button(action: {}) {
                        ZStack(alignment: .center)
                        {
                            Text(" Inbox")
                                .padding(EdgeInsets(top: 8, leading: 10, bottom: 8, trailing: 40))
                                .bold()
                                .frame(width: 100 )
                                .foregroundColor(Color.white)
                                .background(Color.white.opacity(0.6))
                                .cornerRadius(100)
                            
                            Spacer()
                            
                            Image(systemName: "chevron.down")
                                .padding(20)
                                .foregroundColor(.white)
                                .frame(width: 120 , alignment: .trailing)
                        }//::ZStack
                        
                      }
                    .padding()
                    
                        Button(action: {}) {
                            Text("Unread")
                                .padding(EdgeInsets(top: 8, leading: 10, bottom: 8, trailing: 10))
                                .bold()
                                .frame(width: 100 , alignment: .center)
                                .foregroundColor(Color.white)
                                .background(Color.white.opacity(0.6))
                                .cornerRadius(100)
                        }
                        
                        Button(action: {}) {
                            ZStack{
                                Text("Repository")
                                    .padding(EdgeInsets(top: 8, leading: 8 , bottom: 8, trailing: 20))
                                    .bold()
                                    .frame(width: 130 , alignment: .leading)
                                    .foregroundColor(Color.white)
                                    .background(Color.white.opacity(0.6))
                                    .cornerRadius(100)
                                Spacer()
                                
                                Image(systemName: "chevron.down")
                                    .padding(10)
                                    .foregroundColor(.white)
                                    .frame(width: 120 , alignment: .trailing)
                            }//::ZStack
                            
                        }//::HStack
                        .padding()
                }//::HStack
                .padding(.horizontal)
                Divider().background(.white)
               
                Spacer()
                Image("InboxImage")
                    .resizable()
                    .opacity(0.4)
                    .frame(width: 405 ,height: 300)
                    .padding()
                Text("  All cought up!")
                    .font(.largeTitle)
                    .padding()
                    .frame(alignment: .center)
                Text("  Take a break, write some code, and do what to do best")
                    .padding()
                    .multilineTextAlignment(.center)
                    .padding(.horizontal)
                    
                Spacer()
            }//::VStack
            .foregroundColor(.white)
         }//::ZStack
//        .frame(maxWidth: .infinity, alignment: .leading)
//
//        .padding(.horizontal)
    }//>>body
}

#Preview {
    InboxPage()
}
