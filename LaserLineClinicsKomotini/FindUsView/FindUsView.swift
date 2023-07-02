//
//  FindUsView.swift
//  LaserLineClinicsKomotini
//
//  Created by Angelos Staboulis on 25/4/22.
//

import SwiftUI
import MapKit
struct MapMarkerValue:Identifiable{
    var id = UUID()
    var title:String
}
struct FindUsView: View {
    @State var region = MKCoordinateRegion(center: CLLocationCoordinate2D(latitude: 41.117481, longitude: 25.402889), span: MKCoordinateSpan(latitudeDelta: 0.0001, longitudeDelta:  0.0001))
    @State var items = [MapMarkerValue(title: "LaserLineClinics Komotini")]
    var body: some View {
        VStack{
            Map(coordinateRegion: $region, annotationItems: $items) { value in
                MapMarker(coordinate:  CLLocationCoordinate2D(latitude: 41.117481, longitude: 25.402889), tint: .red)
            }
        }
    }
}

struct FindUsView_Previews: PreviewProvider {
    static var previews: some View {
        FindUsView()
    }
}
