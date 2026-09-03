//
//  oogabooga.swift
//  iNC Project2
//
//  Created by James Flynn Purwoko on 11/9/26.
//

import SwiftUI

struct oogabooga: View {
    var body: some View {
        Text("u wanna add more tasks? Well now you can for only $9.99 a month!")
            .font(.system(size: 50))
            .fontWeight(.bold)
        
        Link("Buy here", destination: URL(string: "https://sites.google.com/s2026.ssts.edu.sg/oogaboogaco/home")!)
                        .font(.headline)
                        .foregroundColor(.blue)
    }
   
                   
}

#Preview {
    oogabooga()
}
