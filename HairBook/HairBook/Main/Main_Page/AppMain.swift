//
//  ContentView.swift
//  HairBook
//
//  Created by 신동혁 on 2023/05/26.
//

import SwiftUI

struct AppMainPage: View {
    
    @State private var currentPage = 0
    @State private var whichtabSelected = 0

    
//    let images = ["hairstyle1", "hairstyle1", "hairstyle1", "hairstyle1", "hairstyle1"]
    
    var body: some View {
        ZStack{
            Color.white.ignoresSafeArea()
            TabView(selection: $whichtabSelected){
                HomeView()
                    .tabItem{
                        Image(systemName: "house")
                    }
                    .tag(0)
                searchView(whichtabSelected: $whichtabSelected)
                    .tabItem{
                        Image(systemName: "magnifyingglass")
                    }
                    .tag(1)
                writeView(whichtabSelected: $whichtabSelected)
                    .tabItem{
                        Image(systemName: "plus.circle")
                    }
                    .tag(2)
                tagView(whichtabSelected: $whichtabSelected)
                    .tabItem{
                        Image(systemName: "bookmark")
                    }
                    .tag(3)
                userView(whichtabSelected: $whichtabSelected)
                    .tabItem{
                        Image(systemName: "person.circle")
                    }
                    .tag(4)
                    
            }
        }
        
        
        
    }
}

struct HomeView: View{
//    @Environment(\.presentationMode) var presentationMode
    @State private var sheetShowTrue = false
    
    @State private var isalwaysTrue = true
    var body: some View{
        NavigationView{
            ScrollView{
                VStack{
                    HStack{
                        Text("오늘의 BEST 스토리 👍")
                            .font(.title2)
                            .fontWeight(.bold)
                            .padding(.top, 10)
                                                
                        Spacer()
                    }
                    
                    
                    HStack{
                        Button(action: {
                            sheetShowTrue = true
                        }){
                            Image("hairstyle_1")
                                .resizable()
                                .scaledToFit()
                                .frame(width: 380, height: 380)
                        }
                        .sheet(isPresented: $sheetShowTrue){
                            StyleInfo()
                        }
                        
                            
                            
                        //여기에 사진 추가할거야
                        
                    }
                    
                    HStack{
                        Text("이번주 핫한 태그들 🔥") // Fire emoji added here
                            .font(.title3)
                            .fontWeight(.bold)
                            .padding(.top, 10)
                        
                        Spacer()
                        
                    }
                    
                    ScrollView(.horizontal, showsIndicators: false) {
                        HStack(spacing: 10) {
                            TagButton(tag: "#포니테일")
                            TagButton(tag: "#번헤어")
                            TagButton(tag: "#포마드헤어")
                            TagButton(tag: "#풀뱅")
                            TagButton(tag: "#웨트헤어")
                            TagButton(tag: "#가르마헤어")
                        }.padding(.horizontal, 20)
                        Spacer()
                        Spacer()
                    }
                    
                    HStack{
                        Text("AI가 진단해주는 내 헤어 상태 🤖 ") // Fire emoji added here
                            .font(.body)
                            .fontWeight(.bold)
                            .padding(.top, 10)
                        
                        Spacer()
                        
                        Button(action: {
                            // Handle tag button tapped
                        }) {
                            Text("지금 바로 체험 ->")
                                .font(.headline)
                                .foregroundColor(.white)
                                .padding(10)
                                .background(Color(red: 252 / 255, green: 178 / 255, blue: 173 / 255))
                                .cornerRadius(10)
                        }
                    }
                    
                    HStack{
                        Image("hairstyle2")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 380, height: 380)
                            .cornerRadius(35)
                            
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



struct searchView: View {
    
    @Binding var whichtabSelected: Int
    
    @State var text : String = ""
    @State var textediting : Bool = false
    var body: some View {
        NavigationView {
            ScrollView {
                VStack {
                    HStack{
                        TextField("검색어를 넣어주세요" , text : self.$text).padding(15).padding(.horizontal,15).background(Color(.systemGray6)).cornerRadius(15)
                            .overlay{
                                HStack{
                                    Spacer()
                                    
                                    if self.textediting{
                                        Button(action : {
                                            textediting = false
                                            text = ""
                                            UIApplication.shared.sendAction(#selector(UIResponder.resignFirstResponder), to: nil, from: nil, for: nil)
                                        }){
                                            Image(systemName: "multiply.circle.fill").foregroundColor(Color.black)
                                                .padding()
                                        }
                                    }else{
                                        Image(systemName: "magnifyingglass")
                                        .foregroundColor(Color.black)
                                        .padding()
                                    }
                                }
                            }.onTapGesture {
                                self.textediting = true
                            }
                    }
                    
                    Group{
                        VStack{
                            Spacer()
                            Spacer()
                            
                        }
                        HStack{
                            Text("오늘 많이 검색된 키워드").font(.title3).bold()
                                .padding(.top, 10)
                            Spacer()
                        }
                        VStack{
                            Spacer()
                            Spacer()
                            
                        }
                        ScrollView(.horizontal, showsIndicators: false) {
                            
                            HStack(spacing: 10) {
                                TagButton(tag: "01 포니테일")
                                TagButton(tag: "02 뉴진스")
                                TagButton(tag: "03 웬디컷")
                                TagButton(tag: "04 김우빈")
                                TagButton(tag: "05 반깐머리")
                                TagButton(tag: "06 반묶음머리")
                            }.padding(.horizontal, 20)
                            
                        }
                        VStack{
                            Spacer()
                            Spacer()
                            
                        }
                        HStack{
                            Text("추천 포스트").font(.title3).bold()
                                .padding(.top, 10)
                            Spacer()
                        }
                        Group{
                            VStack{
                                GeometryReader{ geometry in
                                    
                                }
                                HStack(spacing: 5){
                                    Image("hairstyle2")
                                        .resizable()
                                        .scaledToFit()
                                        .frame(width: 120, height: 120)
                                    VStack(spacing: 5){
                                        Text("연보라 끼얹은 발레아쥬 염색 후기 💜")
                                            .font(.system(size: 13))
                                            .fontWeight(.bold)
                                        Text("2023.05.25 - 조회 1,140회")
                                            .font(.system(size: 13))
                                            .foregroundColor(.gray)
                                            .padding(.trailing,40)
                                        Spacer()
                                        HStack{
                                            heartheart
                                            Text("256").font(.system(size: 13))
                                                .foregroundColor(.gray)
                                            message
                                            Text("12").font(.system(size: 13))
                                                .foregroundColor(.gray)
                                            
                                        }.padding(.trailing,87)
                                        
                                        
                                            
                                    }.padding()
                                }
                                HStack(spacing: 5){
                                    Image("hairstyle3")
                                        .resizable()
                                        .scaledToFit()
                                        .frame(width: 120, height: 120)
                                    VStack(spacing: 5){
                                        Text("한 손으로도 가능한 똥머리 묶기 😍")
                                            .font(.system(size: 13))
                                            .fontWeight(.bold)
                                        Text("2023.05.20 - 조회 7,340회")
                                            .font(.system(size: 13))
                                            .foregroundColor(.gray)
                                            .padding(.trailing,25)
                                        Spacer()
                                        HStack{
                                            heartheart
                                            Text("480").font(.system(size: 13))
                                                .foregroundColor(.gray)
                                            message
                                            Text("54").font(.system(size: 13))
                                                .foregroundColor(.gray)
                                            
                                        }.padding(.trailing,87)
                                        
                                        
                                            
                                    }.padding()
                                }
                                HStack(spacing: 5){
                                    Image("hairstyle4")
                                        .resizable()
                                        .scaledToFit()
                                        .frame(width: 120, height: 120)
                                    VStack(spacing: 5){
                                        Text("악세사리 포인트 예쁘게 주는 법 ♥️")
                                            .font(.system(size: 13))
                                            .fontWeight(.bold)
                                        
                                        Text("2023.05.20 - 조회 7,340회")
                                            .font(.system(size: 13))
                                            .foregroundColor(.gray)
                                            .padding(.trailing,27)
                                        Spacer()
                                        HStack{
                                            heartheart
                                            Text("215").font(.system(size: 13))
                                                .foregroundColor(.gray)
                                            message
                                            Text("50").font(.system(size: 13))
                                                .foregroundColor(.gray)
                                            
                                        }.padding(.trailing,87)
                                        
                                        
                                            
                                    }.padding()
                                }
                                
                                HStack(spacing: 5){
                                    Image("hairstyle_1")
                                        .resizable()
                                        .scaledToFit()
                                        .frame(width: 120, height: 120)
                                    VStack(spacing: 5){
                                        Text("땋은 머리 스타일링 쉽게 하기!")
                                            .font(.system(size: 13))
                                            .fontWeight(.bold)
                                            .padding(.trailing,30)
                                        
                                        Text("2023.05.20 - 조회 7,340회")
                                            .font(.system(size: 13))
                                            .foregroundColor(.gray)
                                            .padding(.trailing,27)
                                        Spacer()
                                        HStack{
                                            heartheart
                                            Text("343").font(.system(size: 13))
                                                .foregroundColor(.gray)
                                            message
                                            Text("72").font(.system(size: 13))
                                                .foregroundColor(.gray)
                                            
                                        }.padding(.trailing,87)
                                        
                                        
                                            
                                    }.padding()
                                }

                                HStack{
                                    
                                }
                            }
                        }
                    }
                    
                }
                .navigationBarItems(
                    leading: HStack {
                        Button(action: {                            whichtabSelected = 0 // 메인페이지로
                        }) {
                            Image(systemName: "arrowshape.turn.up.backward")
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
    var heartheart : some View{
        Image(systemName: "heart").foregroundColor(.red)
    }
    
    var message : some View{
        Image(systemName: "ellipsis.message")
    }
}




struct writeView: View {
    
    @Binding var whichtabSelected: Int
    @State private var selectedCamera: String = ""
    @State private var numberOfPhotos: Int = 1
    
    
    @State private var title: String = ""
    @State private var mainContent: String = ""

    @State private var filledStars = 0
    
    var body: some View {
        NavigationView {
            ScrollView {
                VStack {
                    HStack(alignment: .top){
                        Button(action: {
                                                    // Handle camera button action
                        }) {
                            Image(systemName: "camera")
                                .font(.title)
                                .foregroundColor(.blue)
                        }
                        .padding()
                                                
                                                
                        // Plus Button for Number of Photos
                        Button(action: {
                            numberOfPhotos += 1
                        }) {
                            Image(systemName: "plus")
                                .font(.title)
                                .foregroundColor(.blue)
                        }
                        .padding()
                        
                        Spacer()
                    }
                    
                    VStack{
                        Group{
                            HStack{
                                TextField("제목을 입력해주세요", text: $title).frame(width: 360)
                            }
                            HStack{
                                TextEditor(text: $mainContent)
                                    .frame(width: 360, height: 200)
                                    .cornerRadius(20)
                                    .border(Color.gray, width: 1)
                                    .padding()
                            }
                        }
                                            
                        Group{
                            HStack{
                                Text("모질")
                                    .font(.title3).padding(.horizontal,20)
                                ScrollView(.horizontal, showsIndicators: false) {
                                    
                                    HStack(spacing: 10) {
                                        
                                        hairButton(tag: "직모")
                                        hairButton(tag: "반곱슬")
                                        hairButton(tag: "곱슬")
                                        hairButton(tag: "직접입력")
                                    }.padding(.horizontal, 20)
                                    
                                }
                                
                            }
                            
                            HStack{
                                Text("얼굴형")
                                    .font(.title3).padding(.horizontal,20)
                                ScrollView(.horizontal, showsIndicators: false) {
                                    
                                    HStack(spacing: 10) {
                                        
                                        hairButton(tag: "긴")
                                        hairButton(tag: "둥근")
                                        hairButton(tag: "각진")
                                        hairButton(tag: "하트")
                                        hairButton(tag: "계란")
                                        hairButton(tag: "역삼각")
                                        hairButton(tag: "직접입력")
                                    }.padding(.horizontal, 20)
                                    
                                }
                                
                            }
                            
                            HStack{
                                Text("숱")
                                    .font(.title3).padding(.horizontal,20)
                                ScrollView(.horizontal, showsIndicators: false) {
                                    
                                    HStack(spacing: 10) {
                                        
                                        hairButton(tag: "적음")
                                        hairButton(tag: "보통")
                                        hairButton(tag: "많음")
                                        hairButton(tag: "직접입력")
                                    }.padding(.horizontal, 20)
                                    
                                }
                                
                            }
                            
                            HStack{
                                Text("탈색")
                                    .font(.title3).padding(.horizontal,20)
                                ScrollView(.horizontal, showsIndicators: false) {
                                    
                                    HStack(spacing: 10) {
                                        
                                        hairButton(tag: "0회")
                                        hairButton(tag: "1회")
                                        hairButton(tag: "2회")
                                        hairButton(tag: "3회")
                                        hairButton(tag: "직접입력")
                                    }.padding(.horizontal, 20)
                                    
                                }
                                
                            }
                            HStack{
                                Text("퍼스널컬러")
                                    .font(.title3).padding(.horizontal,20)
                                ScrollView(.horizontal, showsIndicators: false) {

                                    HStack(spacing: 10) {

                                        hairButton(tag: "봄웜")
                                        hairButton(tag: "여름쿨")
                                        hairButton(tag: "가을웜")
                                        hairButton(tag: "겨울쿨")
                                        hairButton(tag: "직접입력")
                                    }.padding(.horizontal, 20)

                                }

                            }
                            HStack{
                                Text("기장")
                                    .font(.title3).padding(.horizontal,20)
                                ScrollView(.horizontal, showsIndicators: false) {

                                    HStack(spacing: 10) {

                                        hairButton(tag: "짧음")
                                        hairButton(tag: "중간")
                                        hairButton(tag: "길다")
                                        hairButton(tag: "직접입력")
                                    }.padding(.horizontal, 20)

                                }

                            }

                        }
                                                
                        
                        
                        
                        Group{
                            VStack{
                                Spacer()
                                Spacer()
                            }
                            
                            HStack{
                                Text("이 헤어의 만족도는?")
                                    .font(.title3).padding(.horizontal,20)
                                ForEach(0..<5){
                                    index in
                                    Image(systemName: filledStars >= index ? "star.fill" : "star")
                                        .font(.title3)
                                        .foregroundColor(.yellow)
                                        .onTapGesture {
                                            filledStars = index
                                        }
                                }
                                Spacer()
                                
                                
                            }
                            VStack{
                                Spacer()
                                Spacer()
                            }
                            VStack(alignment : .leading){
                                Text("해시태그")
                                    .font(.title3).padding(.horizontal,20)
                                TextField("해시태그를 작성해 보세요!", text: $title).frame(width: 360).padding(.horizontal,20)
                                
                            }
                        }
                        
                    }
                
                    
                }
                .navigationBarItems(
                    leading: HStack {
                        Button(action: {                            whichtabSelected = 0 // 메인페이지로
                        }) {
                            Image(systemName: "arrowshape.turn.up.backward")
                                .font(.title2)
                                .foregroundColor(.black)
                        }
                    },
                    trailing: HStack {
                        Button(action: {
                            // 알림 심볼 동작
                        }) {
                            Text("등록")
                        }
                    }
                )
                .padding()
            }
        }

    }
    
}

struct tagView: View {
    
    @Binding var whichtabSelected: Int
    
    var body: some View {
        NavigationView {
            ScrollView {
                VStack {
                    
                    HStack{
                        Text("북마크").font(.title2).bold()
                            .padding(.top, 10)
                        Spacer()
                    }
                    Group{
                        VStack{
                            Spacer()
                            Spacer()
                        }
                        HStack{
                            Text("1개의 포스트").font(.title3).bold()
                                .padding(.top, 10).foregroundColor(.gray)
                            Spacer()
                        }
                        
                        VStack{
                            Spacer()
                            Spacer()
                        }
                        
                        HStack{
                            Text("-------------------------------------").font(.title3).bold().padding(.top, 10).foregroundColor(.gray)
                            Spacer()
                        }
                        
//                        HStack{
//                            VStack{
//                                Text("악세사리 포인트 예쁘게 주는 법 ♥️")
//                                    .font(.system(size: 13))
//                                    .fontWeight(.bold)
//
//                                Text("2023.05.20 - 조회 7,340회")
//                                    .font(.system(size: 13))
//                                    .foregroundColor(.gray)
//                                    .padding(.trailing,27)
//                                Spacer()
//                                HStack{
//                                    Image(systemName: "heart")
//                                    Text("215").font(.system(size: 13))
//                                        .foregroundColor(.gray)
//                                    Image(systemName: "ellipsis.message")
//                                    Text("50").font(.system(size: 13))
//                                        .foregroundColor(.gray)
//
//                                }.padding(.trailing,87)
//                            }
//
//                        }
                        HStack(spacing: 5){
//                            Image("hairstyle4")
//                                .resizable()
//                                .scaledToFit()
//                                .frame(width: 120, height: 120)
                            VStack(spacing: 5){
                                Text("악세사리 포인트 예쁘게 주는 법 ♥️")
                                    .font(.system(size: 18))
                                    .fontWeight(.bold)
                                    .padding(.trailing,55)
                                
                                Text("2023.05.20 - 조회 7,340회")
                                    .font(.system(size: 15))
                                    .foregroundColor(.gray)
                                    .padding(.trailing,123)
                                Spacer()
                                HStack{
                                    Text("@username01").font(.system(size: 15)).foregroundColor(.gray)
                                    Image(systemName: "heart")
                                    Text("215").font(.system(size: 15))
                                        .foregroundColor(.gray)
                                    Image(systemName: "ellipsis.message")
                                    Text("50").font(.system(size: 15))
                                        .foregroundColor(.gray)
                                    
                                }.padding(.trailing,87)
                                
                                
                                    
                            }.padding()
                            
                            Spacer()
                        }
                    
                    }
                

                }
                .navigationBarItems(
                    leading: HStack {
                        Button(action: {                            whichtabSelected = 0 // 메인페이지로
                        }) {
                            Image(systemName: "arrowshape.turn.up.backward")
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


struct userView: View {
    
    @Binding var whichtabSelected: Int
    
    var body: some View {
        NavigationView {
            ScrollView {
                VStack {
                    Group{
                        Image("User1")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 120, height: 120)
                        Text("@username01").font(.system(size: 20)).bold()
                        VStack{
                            Spacer()
                            Spacer()
                            Spacer()
                        }
                        HStack{
                            Spacer()
                            VStack{
                                Text("45").font(.system(size: 20)).bold()
                            }
                            Spacer()
                            VStack{
                                Text("2,893").font(.system(size: 20)).bold()
                            }
                            Spacer()
                            VStack{
                                Text("13").font(.system(size: 20)).bold()
                            }
                            Spacer()
                        }
                        VStack{
                            Spacer()
                            Spacer()
                        }
                        HStack{
                            Spacer()
                            VStack{
                                Text("팔로잉").font(.system(size: 17))
                            }
                            Spacer()
                            VStack{
                                Text("팔로워").font(.system(size: 17))
                            }
                            Spacer()
                            VStack{
                                Text("스토리").font(.system(size: 17))
                            }
                            Spacer()
                        }
                    }
                    Group{
                        VStack{
                            Spacer()
                            Spacer()
                            Spacer()
                        }
                        ZStack{
                            
                            Rectangle().fill(Color(red: 236 / 255, green: 254 / 255, blue: 238 / 255)).frame(width: 340, height: 40)
                            Text("모질          탈색          숱          기장          얼굴형 ")

                        }
                        Text("직모          1회          많음         장발      역삼각형 ")
                        VStack{
                            Spacer()
                            Spacer()
                        }
                    }
                    
                    Group{
                        VStack{
                            GeometryReader{ geometry in
                                
                            }
                            
                            HStack(spacing: 5){
                                Image("hairstyle2")
                                    .resizable()
                                    .scaledToFit()
                                    .frame(width: 120, height: 120)
                                Button(action: {
                                    // Handle tag button tapped
                                }) {
                                    VStack(spacing: 5){
                                        Text("연보라 끼얹은 발레아쥬 염색 후기 💜")
                                            .font(.system(size: 13))
                                            .foregroundColor(.black)
                                            .fontWeight(.bold)
                                        Text("2023.05.25 - 조회 1,140회")
                                            .font(.system(size: 13))
                                            .foregroundColor(.gray)
                                            .padding(.trailing,40)
                                        Spacer()
                                        HStack{
                                            heartheart
                                            Text("256").font(.system(size: 13))
                                                .foregroundColor(.gray)
                                            message
                                            Text("12").font(.system(size: 13))
                                                .foregroundColor(.gray)
                                            
                                        }.padding(.trailing,87)
                                        
                            
                                            
                                    }.padding()
                                }
                                
                            }
                            HStack(spacing: 5){
                                Image("hairstyle3")
                                    .resizable()
                                    .scaledToFit()
                                    .frame(width: 120, height: 120)
                                Button(action: {
                                    // Handle tag button tapped
                                }) {
                                    VStack(spacing: 5){
                                        Text("한 손으로도 가능한 똥머리 묶기 😍")
                                            .font(.system(size: 13))
                                            .fontWeight(.bold)
                                            .foregroundColor(.black)
                                        Text("2023.05.20 - 조회 7,340회")
                                            .font(.system(size: 13))
                                            .foregroundColor(.gray)
                                            .padding(.trailing,25)
                                        Spacer()
                                        HStack{
                                            heartheart
                                            Text("480").font(.system(size: 13))
                                                .foregroundColor(.gray)
                                            message
                                            Text("54").font(.system(size: 13))
                                                .foregroundColor(.gray)
                                            
                                        }.padding(.trailing,87)
                                        
                                        
                                            
                                    }.padding()
                                }
                            }
                            HStack(spacing: 5){
                                Image("hairstyle4")
                                    .resizable()
                                    .scaledToFit()
                                    .frame(width: 120, height: 120)
                                Button(action: {
                                    // Handle tag button tapped
                                }) {
                                    VStack(spacing: 5){
                                        Text("악세사리 포인트 예쁘게 주는 법 ♥️")
                                            .font(.system(size: 13))
                                            .fontWeight(.bold)
                                            .foregroundColor(.black)
                                        
                                        Text("2023.05.20 - 조회 7,340회")
                                            .font(.system(size: 13))
                                            .foregroundColor(.gray)
                                            .padding(.trailing,27)
                                        Spacer()
                                        HStack{
                                            heartheart
                                            Text("215").font(.system(size: 13))
                                                .foregroundColor(.gray)
                                            message
                                            Text("50").font(.system(size: 13))
                                                .foregroundColor(.gray)
                                            
                                        }.padding(.trailing,87)
                                        
                                        
                                            
                                    }.padding()
                                }
                                
                            }
                            
                            HStack(spacing: 5){
                                Image("hairstyle_1")
                                    .resizable()
                                    .scaledToFit()
                                    .frame(width: 120, height: 120)
                                Button(action: {
                                    // Handle tag button tapped
                                }) {
                                    VStack(spacing: 5){
                                        Text("땋은 머리 스타일링 쉽게 하기!")
                                            .font(.system(size: 13))
                                            .fontWeight(.bold)
                                            .foregroundColor(.black)
                                            .padding(.trailing,30)
                                        
                                        Text("2023.05.20 - 조회 7,340회")
                                            .font(.system(size: 13))
                                            .foregroundColor(.gray)
                                            .padding(.trailing,27)
                                        Spacer()
                                        HStack{
                                            heartheart
                                            Text("343").font(.system(size: 13))
                                                .foregroundColor(.gray)
                                            message
                                            Text("72").font(.system(size: 13))
                                                .foregroundColor(.gray)
                                            
                                        }.padding(.trailing,87)
                                        
                                        
                                            
                                    }.padding()
                                }
                                
                            
                            }

                            HStack{
                                
                            }
                        }
                    }
                
                     
                    
                    
                }
                .navigationBarItems(
                    leading: HStack {
                        Button(action: {                            whichtabSelected = 0 // 메인페이지로
                        }) {
                            Image(systemName: "arrowshape.turn.up.backward")
                                .font(.title2)
                                .foregroundColor(.black)
                        }
                    },
                    trailing: HStack {
                        Button(action: {
                            // 알림 심볼 동작
                        }) {
                            Image(systemName: "ellipsis")
                                .font(.title2)
                                .foregroundColor(.black)
                        }
                    }
                )
                .padding()
            }
        }

    }
    
    var heartheart : some View{
        Image(systemName: "heart").foregroundColor(.red)
    }
    
    var message : some View{
        Image(systemName: "ellipsis.message").foregroundColor(.black)
    }
}




// 머리 스타일 태그 버튼 구조체
struct TagButton: View {
    var tag: String
    
    var body: some View {
        Button(action: {
            // Handle tag button tapped
        }) {
            Text(tag)
                .font(.headline)
                .foregroundColor(.black)
                .padding(10)
                .background(Color(red: 236 / 255, green: 254 / 255, blue: 238 / 255))
                .cornerRadius(10)
        }
    }
}

struct hairButton: View {
    var tag: String
    
    var body: some View {
        Button(action: {
            // Handle tag button tapped
        }) {
            Text(tag)
                .font(.headline)
                .foregroundColor(.gray)
                .padding(10)
                .background(Color.white)
                .cornerRadius(10)
        }
    }
}


struct AppMainPage_Previews: PreviewProvider {
    static var previews: some View {
        AppMainPage()
    }
}
