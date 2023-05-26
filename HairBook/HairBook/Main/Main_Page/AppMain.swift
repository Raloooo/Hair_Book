//
//  ContentView.swift
//  HairBook
//
//  Created by 신동혁 on 2023/05/26.
//

import SwiftUI

struct AppMainPage: View {
    @State private var currentPage = 0
    
//    let images = ["hairstyle1", "hairstyle1", "hairstyle1", "hairstyle1", "hairstyle1"]
    
    var body: some View {
        TabView{
            HomeView()
                .tabItem{
                    Image(systemName: "house")
                }
            Text("search")
                .tabItem{
                    Image(systemName: "magnifyingglass")
                }
            Text("add 글")
                .tabItem{
                    Image(systemName: "plus.circle")
                }
            Text("bookmark")
                .tabItem{
                    Image(systemName: "bookmark")
                }
            Text("user")
                .tabItem{
                    Image(systemName: "person.circle")
                }
                
        }
        
        
    }
}

struct HomeView: View{
    var body: some View{
        NavigationView{
            ScrollView {
                VStack{
                    HStack{
                        Text("오늘의 BEST 스토리")
                                            .font(.title2)
                                            .fontWeight(.bold)
                                            .padding(.top, 10)
                        Text("👍").font(.system(size: 30))
                        
                        Spacer()
                    }
                    
                    
                    HStack{
                        Image("hairstyle1")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 380, height: 380)
                            .cornerRadius(50)
                        //여기에 사진 추가할거야
                        
                    }
                    
                }
                .navigationBarItems(
                    leading: HStack {
                        Button(action: {
                            // 메뉴 심볼 동작
                        }) {
                            Image(systemName: "line.horizontal.3")
                                .font(.title2)
                                .foregroundColor(.black)
                        }
                    },
                    trailing: HStack {
                        Button(action: {
                            // 알림 심볼 동작
                        }) {
                            Image(systemName: "bell")
                                .font(.title2)
                                .foregroundColor(.black)
                        }
                    }
                )
                .padding()
            }
        }
    }
}












struct AppMainPage_Previews: PreviewProvider {
    static var previews: some View {
        AppMainPage()
    }
}
