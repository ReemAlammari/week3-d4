//
//  ValidateEmail.swift
//  GitHubClone
//
//  Created by Reem Alammari on 12/04/1445 AH.
//

import Foundation

extension String {
    func isValidEmail()-> Bool {
        //test @email.com  this true
        // but this ftyfghkj false 😄
        let regex = try! NSRegularExpression(pattern: "^[a-zA-Z0-9.!#$%&'*+/=?^_`{|}~-]+@[a-zA-Z0-9](?:[a-zA-Z0-9-]{0,61}[a-zA-Z0-9])?(?:\\.[a-zA-Z0-9](?:[a-zA-Z0-9-]{0,61}[a-zA-Z0-9])?)*$", options: .caseInsensitive)

        return (regex.firstMatch(in: self , range: NSRange(location: 0, length: count)) != nil)
    }
    
}
