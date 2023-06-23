//
//  ContentView.swift
//  allAboutMe_Vidhi
//
//  Created by Scholar on 6/22/23.
//

import SwiftUI

struct ContentView: View {
    @State private var aboutMeText = ""
    @State private var image = "vidhi"
    var body: some View {
        ZStack {
            Color(.purple)
            VStack {
                
                Image(image)
                    .resizable(capInsets: EdgeInsets(top: 0.0, leading: 0.0, bottom: 0.0, trailing: 0.0))
                    .aspectRatio(contentMode: .fit)
                    .padding(.bottom)
                    .frame(width: 256.0, height: 256.0)
                    .imageScale(.large)
                    .foregroundColor(.accentColor)
                Text("All About Vidhi!")
                    .font(.largeTitle)
                    .fontWeight(.bold)
                    .foregroundColor(Color(hue: 0.759, saturation: 0.386, brightness: 0.968))
                Text("Quick facts:")
                    .font(.title)
                    .fontWeight(.semibold)
                    .foregroundColor(Color(hue: 0.759, saturation: 0.386, brightness: 0.968))
                    .padding(.top)
                
                
                Text(aboutMeText)
                    .font(.headline)
                    .foregroundColor(Color.white)
                    .multilineTextAlignment(.center)
                    .padding(.top)
                HStack {
                    Button("Learn more") {
                        image = "vidhi"
                        aboutMeText = " Favorite food: sushi🍣 \n Favorite drink: boba🧋\n Favorite color: purple💜 \n Favorite hobby: flute/music! 🎶"
                        
                    }
                    .tint(Color.purple)
                    .font(.title2)
                    .buttonStyle(.borderedProminent)
                    
                    Button(">") {
                        image = "band_pic"
                        aboutMeText = "Bucket List Item: I want to visit Paris and eat a crossaint 🥐 O_O"
                        
                    }
                    .tint(Color.purple)
                    .font(.title2)
                    .buttonStyle(.borderedProminent)
                    
                }
                .padding(.vertical)
                
                
                
                
            }
            .padding()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
