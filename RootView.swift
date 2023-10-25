//
//  RootView.swift
//  GitHub Clone
//
//  Created by Abdullah Aljahdali on 24/10/2023.
//

import SwiftUI

struct RootView: View {
  var body: some View {
    TabView {
      NavigationStack {
        HomeView()
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
        Label("Home", systemImage: "house")
      }
      
      Text("Dummy View")
        .tabItem {
          Label("2", systemImage: "house")
        }
      Text("Dummy View")
        .tabItem {
          Label("2", systemImage: "house")
        }
      Text("Dummy View")
        .tabItem {
          Label("2", systemImage: "house")
        }
    }
  }
}

struct RootView_Previews: PreviewProvider {
  static var previews: some View {
    RootView()
  }
}
