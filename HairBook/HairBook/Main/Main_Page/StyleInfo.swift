//
//  StyleInfo.swift
//  HairBook
//
//  Created by 신동혁 on 2023/05/27.
//

import SwiftUI



struct StyleInfo: View {

    var body: some View {
        NavigationView {
            ScrollView {
                VStack {
                    Image("hairstyle1")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 413, height: 413)
                    Group{
                        titleSection
                        
                        Spacer()
                        
                        Text("--------------------------------------------------------").font(.footnote).foregroundColor(Color.gray)
                        
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
                        
                        HStack{
                            
                            Text("퍼스널컬러").font(.body).bold()
                            Text("가을 웜 딥").font(.body)
                            
                        }.padding(.trailing, 185)
                        
                        VStack{
                            Spacer()
                            Spacer()
                        }
                        
                        HStack{
                            
                            Text("이 헤어의 만족도?").font(.body).bold()
                            ForEach(0..<4) { _ in
                                Image(systemName: "star.fill").font(.system(size: 15)).foregroundColor(.yellow)
                            }
                            Image(systemName: "star").font(.system(size: 15))
                                    .foregroundColor(.yellow)
                            
                            
                                
                            
                        }.padding(.trailing, 78)
                        
                        
                        Text("--------------------------------------------------------").font(.footnote).foregroundColor(Color.gray)
                        
                        VStack{
                            Spacer()
                            Spacer()
                        }
                        
                    }
                Text("새로운 스타일로 변화를 주고 싶을 떈 펌과 염색만 한 게 없죠! ").font(.system(size: 15)).padding(.leading , 12)

                    
                    
                     
                    
                    
                }
//                .navigationBarItems(
//                    leading: HStack {
//                        Button(action: {
//
//                        }) {
//                            Image(systemName: "arrowshape.turn.up.backward")
//                                .font(.title2)
//                                .foregroundColor(.black)
//                        }
//                    },
//                    trailing: HStack {
////                        Button(action: {
////                            // 알림 심볼 동작
////                        }) {
////                            Text("등록")
////                        }
//                    }
//                )
                .padding()
            }
        }

    
    
    
    
    var titleSection : some View{
        VStack{
            HStack{
                Text("한 쪽으로 땋은 머리 스타일링 쉽게 하기!").font(.system(size: 20)).fontWeight(.bold)
                
            }.padding(.trailing, 27)
            Spacer()
            HStack{
                Text("2023.05.25 - 조회 1140회").font(.footnote).foregroundColor(Color.gray)
                
            }.padding(.trailing, 185)
            
        }
    }
    
}
struct StyleInfo_Previews: PreviewProvider {
    static var previews: some View {
        StyleInfo()
    }
}
