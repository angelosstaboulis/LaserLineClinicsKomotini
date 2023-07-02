//
//  HomeView.swift
//  LaserLineClinicsKomotini
//
//  Created by Angelos Staboulis on 24/4/22.
//

import SwiftUI

struct HomeView:View{
    var paragraph = """
Η εταιρία μας LASERMEDICARE IKE δικαιοδόχος της εταιρίας LASERLINE CLINICS,πρωτοπόρος στην περιοχή της Θράκης στην παροχή υπηρεσιών στον χώρο της κοσμητικής ιατρικής
"""
    var paragraph1 =
"""
Η λειτουργία των κέντρων μας στα πρότυπα των αμερικανικών κλινικών κοσμητικής ιατρικής καθώς και η συνεργασία μας με κλινική της Αμερικής,μεγαλώνει τον δείκτη αξιοπιστίας αποτελέσματος στον κλάδο της κοσμητικής ιατρικής.
"""
    var paragraph2 = """
Η εταιρίας μας προσφέρει
    1.Yπηρεσίες αποτρίχωσης με τελευταίας γενιάς δερματολογικά LASERS
    2.Aνάπλαση σώματος,καταπολέμηση κυτταρίτιδας,τοπικού πάχους, διαιτολογικά προγράμματα
    3.Aνανέωση προσώπου,αντιμετώπιση τριχόπτωσης με σύγχρονα laser χαμηλής έντασης
    4.Mεταμόσχευση μαλλιών ,θεραπείες βελονισμού, θεραπείες SPA, περιποίηση άκρων.
"""
    var paragraph3 =
"""
Ο εξοπλισμός των κέντρων μας είναι εγκεκριμένος από τον FDA Αμερικής.Ολες οι θεραπείες είναι εξατομικευμένες και κάτω από την επίβλεψη των υπεύθυνων ιατρών των κέντρων μας.Το προσωπικό της εταιρίας μας είναι έμπειρο και άρτια εκπαιδευμένο σε όλα τα πρωτόκολλα θεραπειών αξιόπιστο – εχέμυθο τηρώντας το ιατρικό απόρρητο.
"""
    var paragraph4 =
"""
Η εταιρία μας απασχολεί εξειδικευμένο προσωπικό δερματολόγων, καρδιολόγων, παθολόγων, χειρουργών, πλαστικής χειρουργικής μικροβιολόγου, ιατρών εφαρμογής, βελονιστών,αισθητικών προσφέροντας αξιόπιστες και αποτελεσματικές λύσεις στον τομέα τις κοσμητικής ιατρικής.
"""
    var body:some View{
        VStack{
            LinearGradient(colors: [.red,.white,.red], startPoint: .top, endPoint: .bottom).overlay {
                ScrollView{
                    VStack{
                        Image(uiImage: UIImage(named: "logo") ?? UIImage())
                    }.frame(maxWidth:.infinity,maxHeight: .infinity,alignment: .top)
                    VStack{
                        Text(createParagraph())
                            .font(Font.system(size: 12))
                            .font(.caption)
                            .multilineTextAlignment(.leading)
                            .textFieldStyle(.automatic)
                        
                    }.frame(width: 400, height: 600, alignment: .bottom)
                }
            }
            
            
        }
    }
    func createParagraph()->String{
        return paragraph + "\n" + paragraph1 + "\n" + paragraph2 + "\n" + paragraph3 + "\n" + paragraph4 + "\n"
    }
}
struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
