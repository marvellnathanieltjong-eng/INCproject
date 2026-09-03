//
//  ContentView.swift
//  iNC Project2
//
//  Created by Marvell Nathaniel Tjong on 3/9/26.
//

import SwiftUI

struct ContentView: View {
    @State var math = false
    @State var value = 0
    @State var science = false
    @State var value2 = 0
    @State var value3 = 0
    @State var english = false
    @State var chinese = false
    @State var value4 = 0
    var body: some View {
        VStack {
            Text("List of Homework")
                .font(Font.system(size: 50))
                .bold()
                .foregroundStyle(.primary)
            
            Toggle("1. Math Homework", isOn: $math)
                .font(Font.system(size: 25))
                .foregroundStyle(Color.blue)
            if math {
                Text("Great Job! Math Homework is done!")
            }
            
           Stepper("Quantity: \(value)", value: $value, step: 1)
            
            Toggle("2. Science Homework", isOn: $science )
                .font(Font.system(size: 25))
                .foregroundStyle(Color.blue)
            if science {
                Text("Congrats! You rocked for your Science Homework!")
            }
            
            Stepper("Quantity: \(value2)", value: $value2, step: 1)
            Toggle("3. English Homework", isOn: $english)
                .font(Font.system(size: 25))
                .foregroundStyle(Color.blue)
            if english {
                Text("English homework completed!")
            }
            Stepper("Quantity: \(value3)", value: $value3, step: 1)
            Toggle("4. Chinese Homework", isOn: $chinese)
                .font(Font.system(size: 25))
                .foregroundStyle(Color.blue)
            if chinese {
                Text("Amazing job! Continue practising your Chinese!")
            }
            Stepper("Quantity: \(value4)", value: $value4, step: 1)
        
            Spacer()
                .padding()
            }
        .padding()
        }
    
    
    }



#Preview {
    ContentView()
}

