//
//  SocialMediaView.swift
//  LaserLineClinicsKomotini
//
//  Created by Angelos Staboulis on 24/4/22.
//

import SwiftUI

struct SocialMediaView:View{
    @State var items = ["Facebook Page","Phone","Facebook Messenger"]
    @Environment(\.openURL) var openURL
    var body:some View{
        LinearGradient(colors: [.red,.white,.red], startPoint: .top, endPoint: .bottom)
            .overlay {
                ScrollView{

                VStack{
                        Image(uiImage: UIImage(named: "logo") ?? UIImage()).resizable().frame(width: 180, height: 180, alignment: .center)
                        Button {
                            openURL(URL(string:"https://www.facebook.com/laserlineclinicskomotinis")!)
                        } label: {
                            Text(items[0]).foregroundColor(.white)
                        }.background {
                            Rectangle()
                                .frame(width: 300, height: 60, alignment: .center)
                                .foregroundColor(.blue)
                                .cornerRadius(22.0)
                        }.padding(30.0)
                        Button {
                            openURL(URL(string:"tel://2531030901")!)
                        } label: {
                            Text(items[1]).foregroundColor(.white)
                        }.background {
                            Rectangle()
                                .frame(width: 300, height: 60, alignment: .center)
                                .foregroundColor(.blue)
                                .cornerRadius(22.0)
                        }.padding(30.0)
                        Button {
                            openURL(URL(string:"https://m.me/laserlineclinicskomotinis")!)
                        } label: {
                            Text(items[2]).foregroundColor(.white)
                        }.background {
                            Rectangle()
                                .frame(width: 300, height: 60, alignment: .center)
                                .foregroundColor(.blue)
                                .cornerRadius(22.0)
                        }.padding(30.0)
                    }.frame(width: 400, height: 900, alignment: .top)
                }
                
            }.frame(width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height-150, alignment: .top)
        
    }
}
struct SocialMediaView_Previews: PreviewProvider {
    static var previews: some View {
        SocialMediaView()
    }
}
