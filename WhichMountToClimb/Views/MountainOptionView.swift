//
//  MountainOptionView.swift
//  WhichMountToClimb
//
//  Created by Zheng-Yuan Yu on 2021/7/11.
//

import SwiftUI

struct MountainOptionView: View {
    
    @State var mountainName = "要爬哪座山呢？"
    @State var imageName = "default mount"
    
    var body: some View {
        VStack {
            
            Text(mountainName)
                .font(.largeTitle)
                .fontWeight(.bold)
            
            Spacer()
            
            Image(imageName)
                .resizable()
                .scaledToFit()
                .cornerRadius(20.0)
                .padding(30.0)
                .shadow(radius: 10)
            
            Spacer()
            
            Button(action: {
                randomMountain()
            }, label: {
                Text("點我抽抽")
                    .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                    .padding()
                    .font(.title2)
                    .foregroundColor(.white)
                    .background(Color.pink).cornerRadius(10.0)
            })
            
            Spacer()
        }
    }
    
    func randomMountain() {
        
        let randNum = Int.random(in: 1...8)
        
        if randNum == 1 {
            mountainName = "七星山"
            imageName = "mount" + String(randNum)
        }
        else if randNum == 2 {
            mountainName = "象山"
            imageName = "mount" + String(randNum)
            
        }
        else if randNum == 3 {
            mountainName = "信義區糴米古道"
            imageName = "mount" + String(randNum)
            
        }
        else if randNum == 4 {
            mountainName = "陽明山頂山石梯嶺步道"
            imageName = "mount" + String(randNum)
            
        }
        else if randNum == 5 {
            mountainName = "天母水管路"
            imageName = "mount" + String(randNum)
            
        }
        else if randNum == 6 {
            mountainName = "內湖金面山步道"
            imageName = "mount" + String(randNum)
            
        }
        else if randNum == 7 {
            mountainName = "內湖三尖"
            imageName = "mount" + String(randNum)
            
        }
        else if randNum == 8 {
            mountainName = "小觀音山步道"
            imageName = "mount" + String(randNum)
            
        }
        
    }
        
}

struct MountainOptionView_Previews: PreviewProvider {
    static var previews: some View {
        MountainOptionView()
    }
}
