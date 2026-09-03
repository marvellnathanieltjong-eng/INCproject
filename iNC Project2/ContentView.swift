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
        VStack(alignment: .leading) {
            
            HStack {
                Text("List of Homework 📚")
                    .font(.system(size: 32, weight: .bold))
                
                Spacer()
                
                Button {
                    // Action for plus button ➕
                } label: {
                    Image(systemName: "plus")
                        .font(.title2)
                        .bold()
                }
            }
            .padding([.top, .horizontal])
            
            List {
                Section(header: Text("Math 📐")) {
                    Toggle("1. Math Homework", isOn: $math)
                        .font(.system(size: 20))
                        .foregroundStyle(.blue)
                    
                    if math {
                        Text("Great Job! Math Homework is done! 🎉")
                            .font(.subheadline)
                            .foregroundStyle(.green)
                    }
                    
                    Stepper("Quantity: \(value)", value: $value, step: 1)
                }
                
                Section(header: Text("Science 🔬")) {
                    Toggle("2. Science Homework", isOn: $science)
                        .font(.system(size: 20))
                        .foregroundStyle(.blue)
                    
                    if science {
                        Text("Congrats! You rocked for your Science Homework! 🧪")
                            .font(.subheadline)
                            .foregroundStyle(.green)
                    }
                    
                    Stepper("Quantity: \(value2)", value: $value2, step: 1)
                }
                
                Section(header: Text("English 📖")) {
                    Toggle("3. English Homework", isOn: $english)
                        .font(.system(size: 20))
                        .foregroundStyle(.blue)
                    
                    if english {
                        Text("English homework completed! ✍️")
                            .font(.subheadline)
                            .foregroundStyle(.green)
                    }
                    
                    Stepper("Quantity: \(value3)", value: $value3, step: 1)
                }
                
                Section(header: Text("Chinese 🏮")) {
                    Toggle("4. Chinese Homework", isOn: $chinese)
                        .font(.system(size: 20))
                        .foregroundStyle(.blue)
                    
                    if chinese {
                        Text("Amazing job! Continue practising your Chinese! 🌟")
                            .font(.subheadline)
                            .foregroundStyle(.green)
                    }
                    
                    Stepper("Quantity: \(value4)", value: $value4, step: 1)
                }
            }
            .listStyle(.insetGrouped)
        }
    }
}

#Preview {
    ContentView()
}
