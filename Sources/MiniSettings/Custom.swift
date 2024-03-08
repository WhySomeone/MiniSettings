//
//  Custom.swift
//  
//
//  Created by Someone on 08.03.2024.
//

import Foundation
import SwiftUI

struct CustomSlider: View {
    @Binding var value: Double
    var body: some View {
        GeometryReader { geometry in
            ZStack(alignment: .leading) {
                Rectangle()
                    .foregroundColor(Color(red: 1.0, green: 1.0, blue: 1.0).opacity(0.1))
                    .frame(width: geometry.size.width, height: geometry.size.height)
                    .cornerRadius(15)
                Rectangle()
                    .foregroundColor(Color(red: 1.00, green: 0.23, blue: 0.41).opacity(0.7))
                    .frame(width: min(CGFloat(self.value / 20) * geometry.size.width, geometry.size.width), height: geometry.size.height)
                    .cornerRadius(15)
            }
            .gesture(
                DragGesture(minimumDistance: 0)
                    .onChanged { gesture in
                        let newValue = Double(gesture.location.x / geometry.size.width) * 20
                        self.value = max(min(newValue, 20), 0)
                    }
            )
        }
    }
}

// 2. CheckBox
struct CheckBoxView: View {
    @Binding var isChecked: Bool
    var body: some View {
        Button(action: {
            isChecked.toggle()
        }) {
            Image(systemName: isChecked ? "checkmark.square" : "square")
                .frame(width: 20, height: 20)
                .foregroundColor(isChecked ? (Color(red: 1.0, green: 1.0, blue: 1.0).opacity(0.7)) : (Color(red: 1.0, green: 1.0, blue: 1.0).opacity(0.1)))
        }
    }
}
