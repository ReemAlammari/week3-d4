

import SwiftUI

struct HomeView: View {
    let myWorkRows: Array<RowData> = [
        RowData(
            title: "Issues",
            leadingImageName: "record.circle",
            leadingImageBackgroundColor: .green
        ),
        RowData(
            title: "Pull Requests",
            leadingImageName: "dots.and.line.vertical.and.cursorarrow.rectangle",
            leadingImageBackgroundColor: .blue
        ),
        RowData(
            title: "Discussions",
            leadingImageName: "bubble.left.and.bubble.right",
            leadingImageBackgroundColor: .purple
        ),
        RowData(
            title: "Repositories",
            leadingImageName: "book.closed",
            leadingImageBackgroundColor: .black
        ),
        RowData(
            title: "Organizations",
            leadingImageName: "building.2",
            leadingImageBackgroundColor: .orange
        ),
        RowData(
            title: "Starred",
            leadingImageName: "star",
            leadingImageBackgroundColor: .yellow
        ),
    ]
    var body: some View {
        ScrollView {
            HStack{
                
                Image(systemName: "magnifyingglass")
                    .resizable()
                    .frame( width: 20 , height: 20 , alignment: .leading)
                    .padding(.horizontal)
                // .imageScale(.large)
                
                Text("Search GitHub")
                    .frame( width: 300 , height: 40 , alignment: .leading)
                
            }//::HStack
            .background(.gray.opacity(0.2))
            .cornerRadius(10)
            .foregroundColor(.white)
            .padding()
            
            VStack {
                HStack {
                    Text("My Work")
                    Spacer()
                    Image(systemName: "ellipsis")
                }
                .padding()
                
                NavigationView{
                    NavigationLink( destination: Text("Empty page")){
                        VStack {
                            ForEach(myWorkRows) { row in
                                makeRow(row: row)
                                if myWorkRows.last?.id != row.id {
                                    Divider()
                                        .padding(.leading)
                                }
                            }
                        }
                    }
                    .padding(.vertical)
                    .background(.white.opacity(0.75))
                    .cornerRadius(8)
                }
                                    
            }
                // .frame(maxWidth: .infinity,alignment: .leading)
                
                .padding(.horizontal)
                
                VStack {
                    HStack {
                        Text("Favorites")
                        Spacer()
                        Image(systemName: "ellipsis")
                    }//::HStack
                    
                    VStack {
                        Text("Add favorite repositories here to have quick access at any time, without having to search")
                            .multilineTextAlignment(.center)
                        Button(
                            action: {},
                            label: {
                                Text("Add Favorites")
                                    .frame(maxWidth: .infinity)
                                    .frame(height: 8 * 8)
                                    .background(RoundedRectangle(cornerRadius: 8).fill(.white))
                                
                            }//label
                            
                        )//???
                    }//VStack
                    .frame(maxWidth: .infinity)
                    .padding(.vertical)
                    .padding(.horizontal)
                    .background(.white.opacity(0.75))
                    .cornerRadius(8)
                    
                    VStack {
                        HStack {
                            Text("Shortcuts")
                            Spacer()
                            Image(systemName: "ellipsis")
                        }//::HStack
                        
                        VStack {
                            //----------------------------
                            ZStack{
                                HStack(alignment: .center, spacing : 0) {
                                    ZStack{
                                        Circle()
                                            .fill(Color.gray .opacity(0.7))
                                            .frame(width: 40, height:40)
                                            .shadow(color: .white , radius: 10 , x: 0, y: 0)
                                            .padding(EdgeInsets(top:10 , leading: 0, bottom: 10, trailing: 0 ))
                                        //                                      .offset(x: )
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
                                            .offset(x: -8)
                                    }//::ZStack
                                    ZStack{
                                        Circle()
                                            .fill(Color.gray .opacity(0.3))
                                            .frame(width: 40, height:40)
                                            .shadow(color: .blue , radius: 10 , x: 0, y: 0)
                                            .padding(EdgeInsets(top:10 , leading: 0, bottom: 10, trailing: 0 ))
                                            .offset(x: -4)
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
                            
                            //--------------------
                            Text("The things you need, one tap away")
                                .fontWeight(.bold )
                                .frame(alignment: .center)
                            Text(" Fast access to your lists of Issues, Pull Requests, or Discussion")
                                .multilineTextAlignment(.center)
                            Button(
                                action: {},
                                label: {
                                    Text("Get started")
                                        .frame(maxWidth: .infinity)
                                        .frame(height: 8 * 8)
                                        .background(
                                            RoundedRectangle(cornerRadius: 8)
                                                .fill(.white)
                                        )//button
                                }//label
                                
                            )//???
                        }//VStack
                        .frame(maxWidth: .infinity)
                        .padding(.vertical)
                        .padding(.horizontal)
                        .background(.white.opacity(0.75))
                        .cornerRadius(8)
                    }
                    
                    VStack(alignment: .leading){
                        
                        Text("Recent")
                            .padding(.top)
                        VStack{
                            Text("Issues and Pull Requests that you've interacted with recently will apear here")
                            //      .padding()
                                .multilineTextAlignment(.center)
                        }
                        .frame(maxWidth: .infinity)
                        .padding(.vertical)
                        .padding(.horizontal)
                        .background(.white.opacity(0.75))
                        .cornerRadius(8)
                    }//::Vstack
                    
                    
                }
                .frame(maxWidth: .infinity, alignment: .leading)
                
                .padding(.horizontal)
                
                
            }
            .background(.gray.opacity(0.25))
        }
    }
        func makeRow(row: RowData) -> some View {
            HStack {
                Image(systemName: row.leadingImageName)
                    .resizable()
                    .scaledToFit()
                    .frame(width: 24, height: 24)
                    .foregroundColor(row.leadingImageForegroundColor)
                    .padding(8)
                    .background(
                        RoundedRectangle(cornerRadius: 8)
                            .fill(row.leadingImageBackgroundColor)
                    )
                Text(row.title)
                Spacer()
                Image(systemName: "chevron.right")
            }
            // .frame(maxWidth: .infinity, alignment: .leading)
            
            .padding(.horizontal)
            
        
        }
   


struct HomeView_Previews: PreviewProvider {
  static var previews: some View {
    HomeView()
  }
}

struct RowData: Identifiable {
  let id = UUID()
  let title: String
  let leadingImageName: String
  let leadingImageForegroundColor: Color = .white
  let leadingImageBackgroundColor: Color
}
