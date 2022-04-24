//
//  SocialMediaView.swift
//  LaserLineClinicsKomotini
//
//  Created by Angelos Staboulis on 24/4/22.
//

import SwiftUI

struct SocialMediaView:View{
    var body:some View{
        ZStack(alignment: .center) {
                List{
                    HStack{
                        Image(uiImage: UIImage(named: "logo") ?? UIImage()).frame(width: 300, height: 145, alignment: .center)
                    }.position(x: (UIScreen.main.bounds.width / 2)-35, y: 70)
                
                    Button {
                        UIApplication.shared.openURL(URL(string: "https://www.facebook.com/laserlineclinicskomotinis")!)
                    } label: {
                        Text("Facebook Page")
                    }.frame(width: 300, height: 45, alignment: .leading)
                    Button {
                        UIApplication.shared.openURL(URL(string: "mailto:info@laselineclinics.gr")!)
                    } label: {
                        Text("Send Email")
                    }.frame(width: 300, height: 45, alignment: .leading)
                }
            }

    }
}
struct SocialMediaView_Previews: PreviewProvider {
    static var previews: some View {
        SocialMediaView()
    }
}
