//
//  ContentView.swift
//  WhichMountToClimb
//
//  Created by Zheng-Yuan Yu on 2021/7/11.
//

import SwiftUI

struct ContentView: View {
    
    let pinkColor = UIColor(red: 255/255, green: 228/255, blue: 255/255, alpha: 1.0)
    
    var body: some View {
        
        NavigationView {
            
            VStack(alignment: .center) {
                Spacer()
                
                NavigationLink(
                    destination: Text("沒有這個選項 88")
                        .font(.title),
                    label: {
                        Text("覺得太難了😰")
                            .font(.largeTitle)
                            .fontWeight(.bold)
                            .multilineTextAlignment(.center)
                            .frame(width: 350, height: 300, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                        .padding()
                            .foregroundColor(.white)
                            .background(Color.blue)
                            .cornerRadius(10.0)
                            .shadow(radius: 3)
                })
                
                Spacer()
                
                NavigationLink(
                    destination: MountainOptionView(),
                    label: {
                        Text("覺得可以喔🥰")
                            .font(.largeTitle)
                            .fontWeight(.bold)
                            .multilineTextAlignment(.center)
                            .frame(width: 350, height: 300, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                        .padding()
                            .foregroundColor(Color.white)
                            .background(Color.pink)
                            .cornerRadius(10.0)
                            .shadow(radius: 3)
                })
                
                Spacer()
            }.navigationTitle(Text("要爬什麼等級？"))
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
