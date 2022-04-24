//
//  GalleryView.swift
//  LaserLineClinicsKomotini
//
//  Created by Angelos Staboulis on 24/4/22.
//

import SwiftUI

struct GalleryView:View{
    var body:some View{
        ScrollView{
            Image(uiImage: UIImage(named: "logo") ?? UIImage())
            Image(uiImage: UIImage(named: "laser_1") ?? UIImage()).resizable()
            Image(uiImage: UIImage(named: "laser_2") ?? UIImage()).resizable()
            Image(uiImage: UIImage(named: "laser_3") ?? UIImage()).resizable()
        }
    }
}

struct GalleryView_Previews: PreviewProvider {
    static var previews: some View {
        GalleryView()
    }
}
