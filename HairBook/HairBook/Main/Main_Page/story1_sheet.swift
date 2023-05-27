



//연보라 끼얹은 발레아쥬 염색 후기 💜




import SwiftUI



struct story1_sheet: View {

    var body: some View {
        ZStack{
            Color.white.ignoresSafeArea()
            NavigationView{
                ScrollView {
                    VStack {
                        Image("hairstyle2")
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
                            Text("곱슬          2회          많음         장발      역삼각형 ")
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
                        Text("기분 전환이 필요한 시기, 발레아쥬 염색을 결정하게 되었어요. 새로운 스타일로 변화를 주고 싶을 떈 펌과 염색만 한 게 없죠! 색이 진짜 잘 나왔습니다! 이 정도까지는 예상하지도 못했는데, 제 생각보다 더 잘 나온 색깔에 하루종일 기분이 좋았어요 .. ! 제가 시도한 스타일은 아까도 말씀드렸듯이 발레아쥬 염색인데 , 발레아쥬라는 단어가 생소하신 분들도 있을 것 같아 먼저 발레아쥬가 무엇을 뜻하는지부터 알려드릴게요! 칠하다(paint)라는 뜻이 담겨있는 발레아쥬는 페인트를 칠하듯이 뿌리부터 아래쪽까지 가닥가닥 새로로 작업하여 자연스러운 하이라이트 효과를 내는 헤어스타일입니다! 일정하게 간격을 두거나 반복적이고 규칙적인 디자인에서 벗어나 디자이너의 감성으로 자유로운 표현이 가능하니까 유니크하고 더 자연스럽게 연출할 수 있겠죠? 제가 직접 이 스타일은 시도해 본 결과 매우 만족스러웠습니다. 무엇보다 인위적인 느낌이 들지 않고 자연스럽달까요? 여러분들꼐 적극 추천해 드려요 ㅎㅎ").font(.system(size: 15)).padding(.leading , 12)
                    }.frame(width: 370)
                    
                    

                        
                        
                         
                        
                        
                    }
                    .padding()
                }
        }
        
    }

    
    
    
    
    var titleSection : some View{
        VStack{
            HStack{
                Text("연보라 끼얹은 발레아쥬 염색 후기 💜").font(.system(size: 20)).fontWeight(.bold)
                
            }.padding(.trailing, 50)
            Spacer()
            HStack{
                Text("2023.05.20 - 조회 6,742회").font(.footnote).foregroundColor(Color.gray)
                
            }.padding(.trailing, 185)
            
        }
    }
    
}
struct story1_sheet_Previews: PreviewProvider {
    static var previews: some View {
        story1_sheet()
    }
}
