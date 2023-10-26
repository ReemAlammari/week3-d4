//
//  RootView.swift
//  GitHub Clone
//
//  Created by Abdullah Aljahdali on 24/10/2023.
//

import SwiftUI

struct RootView: View {
  var body: some View {
  //  make()
      AuthView()
  }
    func make ()-> some View{
        TabView {
          NavigationStack {
            HomeView()
    //ProfilePage()
          }
          .tabItem {
            Label("Home", systemImage: "house")
          }
          
          NavigationStack {
            Text("Dummy View")
              .navigationTitle("1")
              .tabItem {
                Label("2", systemImage: "house")
              }
          }
          .tabItem {
            Label("Navication", systemImage: "house")
          }
          
          Text("Explore")
            .tabItem {
              Label("Explore", systemImage: "house")
            }
          Text("Profile")
            .tabItem {
              Label("Profile", systemImage: "person")
            }
        
        }
    }
}

struct RootView_Previews: PreviewProvider {
  static var previews: some View {
    RootView()
  }
}
