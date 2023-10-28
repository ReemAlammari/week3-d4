//
//  SignUpPage.swift
//  GitHubClone
//
//  Created by Reem Alammari on 12/04/1445 AH.
//

import SwiftUI

struct SignUpPage: View {
    @State private var userName : String = ""
    @State private var email : String = ""
    @State private var password : String = ""
    
    //------------------------------------------------------------------------
    
    private func isValidPassword (_ password : String)-> Bool{
        //at least 1 special char
        //minimum 6 characters long
        //1 uppercase character
        
        let passwordRegex = NSPredicate(format: "SELF MATCHES %@", "^(?=.*[a-z])(?=.*[$@$#!%*?&])(?=.*[A-Z]).{6,}$")
        
        return passwordRegex.evaluate(with: password)
        
    }
    //------------------------------------------------------------------------
    private func isValidName (_ userName : String)-> Bool{
        
        let userNameRegex = NSPredicate(format: "SELF MATCHES %@", "^(?=.*[a-z])(?=.*[$@$#!%*?&])(?=.*[A-Z]).{6,}$")
        
        return userNameRegex.evaluate(with: userName)
        
    }
    //------------------------------------------------------------------------
    
    var body: some View {
        NavigationView{
            ZStack{
                Color.gray.opacity(0.3).edgesIgnoringSafeArea(.all)
                VStack{
                    HStack{
                        Text("Create a new account")
                            .font(.title)
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
                    //------------------------------------------------------------------------
                    
                    HStack{
                        Image(systemName: "person")
                        TextField("Enter User Name .." , text: $userName)
                        
                        if (userName.count != 0){
                            Image(systemName: isValidName(userName) ?  "checkmark"  : "xmark")
                                .fontWeight(.bold)
                                .foregroundColor(isValidName(userName) ? .green : .red)
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
                    //------------------------------------------------------------------------
                    
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
                        .foregroundColor(.gray)}
                    .padding(.horizontal)
                    
                    //--------------------------------------------------------------------------
                    
                    
                    NavigationLink(destination: LogInPage(), label: {
                        Text("Already have an accont?")
                            .foregroundColor(.blue)
                    })
                    
                    Spacer()
                    Spacer()
                    
                    Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                        Text("Sign Up")
                        
                            .font(.title2.bold())
                            .foregroundColor(.white)
                            .frame(maxWidth: 300)
                            .padding()
                            .background( RoundedRectangle(cornerRadius: 10).fill(Color.gray))
                        
                    })
                    Spacer()
                }
            }
            .navigationTitle("Sign Up")
            .navigationBarTitleDisplayMode(.inline)
            .navigationBarItems(leading: Image(systemName: "chevron.backward"))
        }
        
    }
}

#Preview {
    SignUpPage()
}
