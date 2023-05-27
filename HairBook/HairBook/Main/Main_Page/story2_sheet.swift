//
//  story2_sheet.swift
//  HairBook
//
//  Created by 신동혁 on 2023/05/27.
//

import SwiftUI


//한 손으로도 가능한 똥머리 묶기 😍
struct story2_sheet: View {
    var body: some View {
        ZStack{
            Color.white.ignoresSafeArea()
            NavigationView{
                ScrollView {
                    VStack {
                        Image("hairstyle3")
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
                            Text("직모          1회          많음         장발         달걀형 ")
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
                        Text("한 손으로 가능한 똥머리 묶기는 편리한 머리 스타일 중 하나로, 다른 손이나 도구 없이도 손쉽게 만들 수 있어요!! 이 스타일을 만들기 위해서는 먼저 머리를 뒤쪽으로 모아야 해요. 그리고 모은 머리를 고무줄이나 핀으로 고정해요. 고무줄을 사용하는 경우에는 머리를 한 번 묶은 후, 두 번째로 묶을 때는 중간에 통과시키지 않고 끝까지 끌어 당기면 됩니당!! 핀을 사용하는 경우에는 머리를 모은 후, 핀을 사용하여 안정적으로 고정시켜야 해요. 이번 머리 스타일은 간단하면서도 풍성하고 정돈된 느낌을 주기 때문에 다양한 상황에서 활용할 수 있어요 한 손으로 가능한 똥머리 묶기는 헤어 스타일링이 급한 상황이나 일상적인 활동에서 유용한 선택이 될 수 있을 겁니다. 지금까지 한 손으로 가능한 똥머리 묶기 포스팅이였습니다!").font(.system(size: 15)).padding(.leading , 12)
                    }.frame(width: 370)
                    
                    

                        
                        
                         
                        
                        
                    }
                    .padding()
                }
        }
        
    }

    
    
    
    
    var titleSection : some View{
        VStack{
            HStack{
                Text("한 손으로도 가능한 똥머리 묶기 😍").font(.system(size: 20)).fontWeight(.bold)
                
            }.padding(.trailing, 70)
            Spacer()
            HStack{
                Text("2023.05.19 - 조회 7,870회").font(.footnote).foregroundColor(Color.gray)
                
            }.padding(.trailing, 185)
            
        }
    }

}

struct story2_sheet_Previews: PreviewProvider {
    static var previews: some View {
        story2_sheet()
    }
}
