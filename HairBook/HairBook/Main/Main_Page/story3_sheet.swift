//
//  story3_sheet.swift
//  HairBook
//
//  Created by 신동혁 on 2023/05/27.
//

import SwiftUI


//악세사리 포인트 예쁘게 주는 법 ♥️
struct story3_sheet: View {
    var body: some View {
        ZStack{
            Color.white.ignoresSafeArea()
            NavigationView{
                ScrollView {
                    VStack {
                        Image("hairstyle4")
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
                            Text("직모          2회          적음         장발         달걀형 ")
                            VStack{
                                Spacer()
                                Spacer()
                            }
                        }
                            
                            HStack{
                                
                                Text("퍼스널컬러").font(.body).bold()
                                Text("겨울 쿨 딥").font(.body)
                                
                            }.padding(.trailing, 185)
                            
                            VStack{
                                Spacer()
                                Spacer()
                            }
                            
                            HStack{
                                
                                Text("이 헤어의 만족도?").font(.body).bold()
                                ForEach(0..<5) { _ in
                                    Image(systemName: "star.fill").font(.system(size: 15)).foregroundColor(.yellow)
                                }
                                
                                
                                
                                    
                                
                            }.padding(.trailing, 78)
                            
                            
                            Text("--------------------------------------------------------").font(.footnote).foregroundColor(Color.gray)
                            
                            VStack{
                                Spacer()
                                Spacer()
                            }
                            
                        }
                    HStack{
                        Text("악세사리는 패션을 완성시키는 중요한 요소이며, 잘 활용하면 개성적이고 매력적인 스타일을 구축할 수 있습니다. 지금부터 제가 드리는 팁을 참고하여 자유로운 시도를 통해 독특한 매력을 발산해보세요!").font(.system(size: 15)).padding(.leading , 12)
                    }.frame(width: 370)
                    
                    

                        
                        
                         
                        
                        
                    }
                    .padding()
                }
        }
        
    }

    
    
    
    
    var titleSection : some View{
        VStack{
            HStack{
                Text("악세사리 포인트 예쁘게 주는 법 ♥️").font(.system(size: 20)).fontWeight(.bold)
                
            }.padding(.trailing, 70)
            Spacer()
            HStack{
                Text("2023.05.19 - 조회 7,870회").font(.footnote).foregroundColor(Color.gray)
                
            }.padding(.trailing, 185)
            
        }
    }
}

struct story3_sheet_Previews: PreviewProvider {
    static var previews: some View {
        story3_sheet()
    }
}
