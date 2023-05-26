//
//  Homepage.swift
//  ARViewer
//
//  Created by Rahel Kristhea on 22/05/23.
//  Copyright © 2023 Faris Sbahi. All rights reserved.
//

import SwiftUI

struct Homepage: View {
    var body: some View {
        
        NavigationView{
            ZStack{
                Image("bg")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .scaleEffect(1.7)
                
                Image("logo")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .scaleEffect(0.6)
                    .padding(.bottom, 500)
                
                Image("monsterjelek")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .scaleEffect(0.45)
                    .padding(.bottom, 10)
                
                Text ("Shoot all monsters by \n tapping anywhere \n in the screen!")
                    .foregroundColor(Color(hex: "492626"))
                    .font(Font.custom("Comfortaa-Regular", size: 20))
                    .multilineTextAlignment(.center)
                    .kerning(1)
                    .lineSpacing(8)
                    .padding(.top, 350)
                
                Button{
                }
                label: {
//                NavigationLink(destination: ViewController()){
//                     Image("startButton")
//                     .resizable()
//                     .aspectRatio(contentMode: .fit)
//                     .scaleEffect(0.63)
//                     .padding(.top, 570)
//
//                                    }

                                }


                
            }
        }
    }
}

extension Color {
    init(hex: String) {
        let scanner = Scanner(string: hex)
        var rgbValue: UInt64 = 0
        scanner.scanHexInt64(&rgbValue)

        let r = Double((rgbValue & 0xFF0000) >> 16) / 255.0
        let g = Double((rgbValue & 0x00FF00) >> 8) / 255.0
        let b = Double(rgbValue & 0x0000FF) / 255.0

        self.init(red: r, green: g, blue: b)
    }
}


struct Homepage_Previews: PreviewProvider {
    static var previews: some View {
        Homepage()
    }
}
