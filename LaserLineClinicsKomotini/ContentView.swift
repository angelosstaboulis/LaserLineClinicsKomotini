//
//  ContentView.swift
//  LaserLineClinicsKomotini
//
//  Created by Angelos Staboulis on 23/4/22.
//

import SwiftUI
struct ContentView: View {
    var body: some View {
        TabView{
            HomeView().tabItem {
                Label("Home", image: "home")
            }
            GalleryView().tabItem {
                Label("Gallery", image: "gallery")
            }
            SocialMediaView().tabItem {
                Label("Social Media", image: "social")
            }
            FindUsView().tabItem {
                Label("Find Us", image:"map")
            }
            Customers().tabItem {
                Label("Customers", image:"customers")
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
