//
//  ContentView.swift
//  troisBoutons
//
//  Created by Brian Malagoli on 20/03/2020.
//  Copyright © 2020 Brian Malagoli. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    //variable contenant une couleur qui changera quand elle sera appelée
    @State private var changeBckGrColor: Color = .black
    
    var body: some View {
        ZStack {
            //avoir la couleur en plein écran
            changeBckGrColor.edgesIgnoringSafeArea(.all)
            HStack {
                ZStack {
                    //une Z stack pour superposer rectangle avec texte et image
                    RoundedRectangle(cornerRadius: 20)
                        .frame(width: 90.0, height: 50.0)
                        .foregroundColor(.red)
                    HStack { //aligner texte avec image
                        Button(action: { //on fait appel à la variable de couleur et on assigne une autre valeur(couleur)
                            self.changeBckGrColor = .red
                        }) {
                            Image(systemName: "eyedropper")
                                .foregroundColor(.white)
                            Text("red")
                                .foregroundColor(.white)
                        }
                    }
                }
                ZStack {
                    RoundedRectangle(cornerRadius: 20)
                        .frame(width: 90.0, height: 50.0)
                        .foregroundColor(.green)
                    HStack {
                        Button(action: {
                            self.changeBckGrColor = .green
                        }) {
                            Image(systemName: "eyedropper")
                                .foregroundColor(.white)
                            Text("green")
                                .foregroundColor(.white)
                        }
                    }
                }
                ZStack {
                     RoundedRectangle(cornerRadius: 20)
                        .frame(width: 90.0, height: 50.0)
                        .foregroundColor(.blue)
                    HStack {
                        Button(action: {
                            self.changeBckGrColor = .blue
                        }) {
                            Image(systemName: "eyedropper")
                                .foregroundColor(.white)
                            Text("blue")
                                .foregroundColor(.white)
                            }
                        }
                    }
                }
            }
        }
    }


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
