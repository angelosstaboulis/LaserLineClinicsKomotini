//
//  Customers.swift
//  LaserLineClinicsKomotini
//
//  Created by Angelos Staboulis on 2/7/23.
//

import SwiftUI

struct Customers: View {
    var paragraph = """
Η όλη εμπειρία ήταν εξαιρετική! Ο χώρος ήταν προσεγμένος, η γιατρός κα Κωστάκη Ζωή επικοινωνιακή, προσιτή και επιστημονικότατη! Το προσωπικό φιλικότατο! 10/10 - θα τη συνιστούσα ανεπιφύλακτα!\n
"""
    var paragraph1 =
"""
Ωραίος χώρος, άψογη εξυπηρέτηση
"""
    var body: some View {
        VStack{
            LinearGradient(colors: [.red,.white,.red], startPoint: .top, endPoint: .bottom).overlay {
                ScrollView{
          
                    VStack{
                        Image(uiImage: UIImage(named: "logo") ?? UIImage())
                        .padding(30.0)
                        Text("Γνώμες Πελατών").foregroundColor(.white)
                            .background {
                                Rectangle()
                                    .frame(width: 300, height: 60, alignment: .center)
                                    .foregroundColor(.blue)
                                    .cornerRadius(22)
                        }.padding(30.0)
                        Text(createParagraph())
                            .font(Font.system(size: 22))
                            .font(.caption)
                            .multilineTextAlignment(.leading)
                            .textFieldStyle(.automatic)
                        
                    }.frame(width: 400, height: 600, alignment: .top)
                }
            }
            
            
        }
    }
    func createParagraph()->String{
        return paragraph + "\n" + paragraph1
    }
}

struct Customers_Previews: PreviewProvider {
    static var previews: some View {
        Customers()
    }
}
