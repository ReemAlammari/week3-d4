//
//  ProfilePage.swift
//  GitHubClone
//
//  Created by Reem Alammari on 10/04/1445 AH.
//

import SwiftUI

struct AnyProfile: Identifiable {
  let id = UUID()
  let title: String
  let subTitle: String = ""
  let sysImage: String
}

struct List : Identifiable {
  let id = UUID()
  let title: String
  let leadingImageName: String
  let leadingImageForegroundColor: Color = .white
  let leadingImageBackgroundColor: Color
}

struct ProfilePage: View {
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
      )]
    //------------------------------------------------------------------------------
    
  let row1:Array<AnyProfile> = [AnyProfile(title:"@hjkkk" , sysImage: "building.2"),
                                AnyProfile(title:"USA, Washinton" , sysImage: "map")]
  let row2:Array<AnyProfile> = [ AnyProfile(title:"lab.sa"  , sysImage: "link" ),
                                 AnyProfile(title:"Developer Program" , sysImage: "command.square.fill")]
  let row3:Array<AnyProfile> = [AnyProfile(title:"12", sysImage: "person"  ) ,
                                AnyProfile(title:"flowing" , sysImage: "slowmo")]
    var body: some View {
        ScrollView {
            VStack(alignment:.leading){
                
                HStack {
                    Image("man")
                        .resizable()
                        .clipShape(Circle())
                        .frame(width: 70 , height: 70)
                        .padding(.leading)
                    VStack{
                        Text("Steve Jobs")
                        // .foregroundColor(.white)
                            .font(.title3)
                            .bold()
                            
                        Text("SteveJob")
                    }
                    .padding(.trailing)
                }//First HStack
                HStack{
                    ForEach(row1){ detail in Label(
                        title: { Text(detail.title) },
                        icon: { Image(systemName: detail.sysImage) }
                    )
                    } .padding(.horizontal)
                }
                HStack{
                    ForEach(row2){ detail in Label(
                        title: { Text(detail.title) },
                        icon: { Image(systemName: detail.sysImage) }
                    )
                    } .padding(.horizontal)
                }
                HStack{
                    ForEach(row3){ detail in Label(
                        title: { Text(detail.title) },
                        icon: { Image(systemName: detail.sysImage) }
                    )
                    } .padding(.horizontal)
                }
                
                HStack{
                    Image(systemName: "trophy")
                    ZStack{
                        Image("yolo")
                            .resizable()
                            .clipShape(Circle())
                            .frame(width: 70 , height: 70)
                            .offset(x:-5)
                        Image("tt")
                            .resizable()
                            .clipShape(Circle())
                            .frame(width: 70 , height: 70)
                            .offset(x:40)
                        Image("oo")
                            .resizable()
                            .clipShape(Circle())
                            .frame(width: 70 , height: 70)
                            .offset(x:90)
                    }
                    
                }.frame(maxWidth: .infinity, alignment: .leading)
                    .padding(.horizontal)
                
                
                VStack {
                    ForEach(myWorkRows) { row in
                        makeRow(row: row)
                        if myWorkRows.last?.id != row.id {
                            Divider()
                                .padding(.leading)
                        }
                    }
                }
                // .padding()
                .background(.white.opacity(0.75))
                .cornerRadius(10)
                .frame(maxWidth: .infinity, alignment: .leading)
                .padding(.horizontal)
                
                
                //  }
                
            }//First VStack
            
            //  }//>>EndScrol
            HStack{
                Image(systemName: "pin")
                    .resizable()
                    .frame(width: 20 ,height: 30)
                Text("Pinned")
                    .font(.title2)
            }
            .frame(maxWidth: .infinity, alignment: .leading)
            
            .padding(.horizontal)
            
            ScrollView (.horizontal ,showsIndicators:  false) {
                HStack{
                    ZStack(alignment: .leading){
                        
                        RoundedRectangle(cornerRadius: 8)
                            .frame(width: 8 * 46 ,height: 8 * 25)
                            .foregroundColor(.white.opacity(0.75))
                        VStack(alignment : .leading){
                            HStack{
                                Image("AppleLogo")
                                    .resizable()
                                    .frame(width: 8 * 5 , height: 8 * 5)
                                    .background(.white)
                                    .cornerRadius(10)
                                    .padding()
                                Text("apple/swiftui.com")
                                
                                
                            }.padding()
                            
                            
                            HStack {
                                
                                Image(systemName: "star.fill")
                                    .foregroundColor(.yellow)
                                    .padding(.leading)
                                Text("50")
                                HStack {
                                    
                                    Image(systemName: "circle.fill")
                                        .foregroundColor(.red)
                                        .padding(.leading)
                                    Text("swift")
                                    
                                }
                            }
                            
                            
                        }
                    }
                    
                    ZStack{
                        
                        RoundedRectangle(cornerRadius: 8)
                            .frame(width: 8 * 46 ,height: 8 * 25)
                            .foregroundColor(.white.opacity(0.75))
                        
                        HStack{
                            Image("Facebook")
                                .resizable()
                                .frame(width:  8 * 5 , height: 8 * 5)
                                .background(.white)
                                .cornerRadius(10)
                            Text("facebook.com.")
                            
                        }
                    }
                    ZStack{
                        
                        RoundedRectangle(cornerRadius: 8)
                            .frame(width: 8 * 46 ,height: 8 * 25)
                            .foregroundColor(.white.opacity(0.75))
                        HStack{
                            Image("Google")
                                .resizable()
                                .frame(width: 8 * 5 , height: 8 * 5)
                                .background(.white)
                                .cornerRadius(10)
                            Text("google.com")
                        }
                    }
                    
                }
                Spacer()
                
            }
        }
     .frame(maxWidth: .infinity, alignment: .leading)
     .background(.gray.opacity(0.25))
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
    
    }
     
#Preview {
    ProfilePage()
}
