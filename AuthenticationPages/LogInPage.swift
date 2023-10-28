//
//  LogInForTest.swift
//  GitHubClone
//
//  Created by Reem Alammari on 12/04/1445 AH.
//

import SwiftUI

struct LogInPage: View {
   // @Binding var currentShowing: String
    @State private var email : String = ""
    @State private var password : String = ""
    
    private func isValidPassword (_ password : String)-> Bool{
        //at least 1 special char
        //minimum 6 characters long
        //1 uppercase character
        
        let passwordRegex = NSPredicate(format: "SELF MATCHES %@", "^(?=.*[a-z])(?=.*[$@$#!%*?&])(?=.*[A-Z]).{6,}$")
 
        return passwordRegex.evaluate(with: password)
        
    }
    
    var body: some View {
        NavigationView{
            ZStack{
                Color.gray.opacity(0.3).edgesIgnoringSafeArea(.all)
                VStack{
                    HStack{
                        Text("Welcome Back 😀")
                            .font(.largeTitle)
                            .bold()
                            .padding()
                            .padding(.top)
                            .frame(alignment: .center)
                            .padding(.horizontal)
                        
                        
                        
                        
                        
                      Spacer()
                    }
                    //.padding()
                    .padding(.horizontal)
                    Spacer()
                    HStack{
                        Image(systemName: "envelope")
                        TextField("Enter Email .." , text: $email)
                    
                        if (email.count != 0){
                            Image(systemName: email.isValidEmail() ?  "checkmark"  : "xmark")
                                .fontWeight(.bold)
                                .foregroundColor(email.isValidEmail() ? .green : .red)
                        }
                        
                       
                        Spacer()
                    }//::HStack
                    .padding()
                    .overlay{
                        RoundedRectangle(cornerRadius: 8*2)
                            .stroke(lineWidth: 2)
                            .foregroundColor(.gray)
                    }
                    .padding(.horizontal)
  //-------------------------------------------------------------------------
                    HStack{
                        Image(systemName: "lock")
                        SecureField("Enter Password .." , text: $password)
                            .keyboardType(UIKeyboardType.phonePad)
                        if (password.count != 0){
                            Image(systemName: isValidPassword(password) ? "checkmark" : "xmark")
                                .fontWeight(.bold)
                                .foregroundColor(isValidPassword(password) ? .green : .red )
                        }
                        
                        Spacer()
                    }//::HStack
                    .padding()
                    .overlay{
                        RoundedRectangle(cornerRadius: 8*2)
                            .stroke(lineWidth: 2)
                            .foregroundColor(.gray)
                    }
                    .padding(.horizontal)
                    .padding(.bottom)
                    
                  NavigationLink(destination: SignUpPage() , label:
                                   
                    {
                     Text("Don't have an accont?")
                            .foregroundColor(.blue)
                        
                    })
                   
                    Spacer()
                    Spacer()
                    
                    Button(action: { }, label: {
                        Text("Sign In")
                        .font(.title2.bold())
                        .foregroundColor(.white)
                        .frame(maxWidth: 300)
                        .padding()
                        .background( RoundedRectangle(cornerRadius: 10).fill(Color.gray))
                      
                    })
                    Spacer()
                }
            }
            .navigationTitle("Log In")
            .navigationBarTitleDisplayMode(.inline)
            .navigationBarItems(leading: Image(systemName: "chevron.backward"))
        }
        
    }
}
#Preview {
    LogInPage()
}
