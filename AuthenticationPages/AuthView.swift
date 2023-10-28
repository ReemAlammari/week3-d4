//
//  AuthView.swift
//  GitHubClone
//
//  Created by Reem Alammari on 11/04/1445 AH.
//

import SwiftUI

struct LogIn: Identifiable {
    
    let id = UUID()
    let photo :String
    let title :String
    let BackgraoubColor :Color
    let borderColor : Color
    let colorTitle : Color
}
//-------------------------------------------------------------------------------------

struct AuthView: View {
    let option: Array<LogIn> = [
        .init(photo: "Google", title: "Continue with google", BackgraoubColor: .white, borderColor: .black , colorTitle : .black),
        .init(photo: "apple", title: "Continue with Apple", BackgraoubColor: .black, borderColor: .black, colorTitle: .white),
        .init(photo: "Facebook", title: "Continue with Facebook", BackgraoubColor: .blue , borderColor: .blue, colorTitle: .white),
        .init(photo:"envelope", title: "Log in with email", BackgraoubColor: .pink , borderColor: .pink , colorTitle: .white)
    ]
    //-------------------------------------------------------------------------------------
    var body: some View {
        NavigationView{
            ZStack{
                Color.gray.opacity(0.25).edgesIgnoringSafeArea(.all)
                //     ignoresSafeArea()
                VStack(spacing: 0){
                    VStack(alignment: .center){
                        Text("GitHub Clone")
                            .font(.largeTitle)
                            .bold()
                            .frame(width:300 ,height: 50)
                    }
                    .frame(maxWidth: .infinity)
                    
                    .padding(150)
                    
                    //-------------------------------------------------------------------------------------
                    //making  navig§ation link to the buttons
                    VStack (spacing: 8){
                        
                        ForEach(option) { button in
                            
                            NavigationLink(destination: {
                                if option.last?.id == button.id {
                                    LogInPage()
                                }else {
                                    Text(button.title)
                                    
                                }
                                
                            }, label: {
                                makeButtons(option: button)
                            })
                            
                            .padding(.horizontal)
                        }
                    }
                    //-------------------------------------------------------------------------------------
                    
                    ZStack{
                        
                        NavigationLink(destination: LogInPage(), label: {
                            Text("New To GitHubClone? Sign Up")
                                .font(.title3)
                                .bold()
                            .underline() } )
                        .padding(.top)
                    }
                    
                    
                    Text("By Clicking Sign Up, Continue with Apple,Continue with Google, Continue with Facebok, you agree to GitHub Clone's [Term of Use](www.google.com),[Privacy Policy](www.google.com), and [Cookie Policy](www.google.com).")
                        .multilineTextAlignment(.center)
                        .frame(width: 370,height: 120)
                    
                }
            }
            
        }
    }
}

//-------------------------------------------------------------------------------------

func makeButtons(option: LogIn)  -> some View {
    ZStack(alignment: .leading){
        
        Text(option.title)
            .foregroundColor(option.colorTitle)
            .font(.title2) .bold()
           .frame(width:300, height: 35)
           .padding()
            .overlay {
                    RoundedRectangle(cornerRadius: 16)
                    .stroke(option.borderColor)
                     }
            .background(Color(option.BackgraoubColor).cornerRadius(16))
            
        Image(option.photo)
            .resizable()
            .frame(width: 8*5 , height: 8*5)
            .padding(.horizontal)
            
        Spacer()
        
    }
    
}
//-------------------------------------------------------------------------------------

#Preview {
    AuthView()
}
