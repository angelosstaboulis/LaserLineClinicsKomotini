//
//  GalleryView.swift
//  LaserLineClinicsKomotini
//
//  Created by Angelos Staboulis on 24/4/22.
//

import SwiftUI

struct GalleryView:View{
    var body:some View{
        VStack{
            LinearGradient(colors: [.red,.white,.red], startPoint: .top, endPoint: .bottom).overlay {
                ScrollView{
                    VStack{
                        Image(uiImage: UIImage(named: "logo") ?? UIImage()).resizable().frame(width: 180, height: 180, alignment: .center)
                        Image(uiImage: UIImage(named: "laser1") ?? UIImage()).resizable().frame(width: 180, height: 180, alignment: .center)
                        Image(uiImage: UIImage(named: "laser2") ?? UIImage()).resizable().frame(width: 180, height: 180, alignment: .center)
                        Image(uiImage: UIImage(named: "laser3") ?? UIImage()).resizable().frame(width: 180, height: 180, alignment: .center)
                        Image(uiImage: UIImage(named: "laser4") ?? UIImage()).resizable().frame(width: 180, height: 180, alignment: .center)


                    }
                }
            }
            
        }
    }
}

struct GalleryView_Previews: PreviewProvider {
    static var previews: some View {
        GalleryView()
    }
}
