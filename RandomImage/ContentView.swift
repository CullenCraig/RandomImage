//
//  ContentView.swift
//  RandomImage
//
//  Created by AMStudent on 10/8/21.
//

import SwiftUI

struct ContentView: View {
    
    @State var selected: Int = 0
    
    var body: some View {
        
        VStack (alignment: .center) {
            Text("Random Image Generator!")
                .font(.system(size: 23))
                .fontWeight(.heavy)
                .multilineTextAlignment(.center)
                .padding(.top, 50)
            
            TabView(selection: $selected) {
                // Images
                ForEach(1...3, id: \.self) { index in
                    
                    ZStack {

                        Image("p\(Int.random(in: 1...10))")
                        .resizable()
                        .frame(width: 300.0, height: 400.0)
                        .aspectRatio(contentMode: .fill)
                    }
                    .frame(height: 400.0)
                    .cornerRadius(15)
                    .padding(10)
                    .background(Color.white)
                    .cornerRadius(15)
                    .shadow(color: Color.black.opacity(0.2), radius: 5, x: -5, y: 5)
                    .shadow(color: Color.black.opacity(0.2), radius: 5, x: -5, y: 5)
                    .padding(.horizontal, 25)
                    }
                }
            }
            .tabViewStyle(PageTabViewStyle(indexDisplayMode: .never))
        }
    }

    

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
