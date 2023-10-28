

import SwiftUI

struct RootView: View {
    var body: some View {
        NavigationStack{
            TabView{
                
                HomePage()
                    .tabItem {
                        Label("Home", systemImage: "house")
                    }
                
                ExplorePage()
                    .tabItem {
                        Label("Explore", systemImage: "globe")
                    }
                
                InboxPage()
                    .tabItem {
                        Label("Inbox", systemImage: "shippingbox")
                    }
                ProfilePage()
                    .tabItem {
                        Label("Profile", systemImage: "person")
                    }
                
                AuthView()
                    .tabItem {
                        Label("Authitication", systemImage: "touchid")
                    }
                
            }
        }
    }
}


/*struct RootView: View {
  var body: some View {
      make()
      
  }
    func make ()-> some View{
        TabView {
          NavigationStack {
              AuthView()
          //  HomeView()
    //ProfilePage()
          
          .tabItem {
            Label("Home", systemImage: "house")
             }
          
              .tabItem {
                Label("InBox", systemImage: "box")
              }
           Text("Authintication")
          .tabItem {
            Label("Authintication", systemImage: "touchid")
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
}*/

struct RootView_Previews: PreviewProvider {
  static var previews: some View {
    RootView()
  }
}
