//
//  MiniSettings.swift
//
//
//  Created by Someone on 06.03.2024.
//

import SwiftUI

public struct MiniSettings: View {
    @Binding var HelloFriend: Bool
    @State private var slider123: Double = 1
    @State private var CheckXD = false
    public init(HelloFriend: Binding<Bool>) {
        self._HelloFriend = HelloFriend
    }
    public var body: some View {
        GeometryReader { geometry in
            VStack {
                
                Spacer()
                Rectangle()
                    .frame(width: 60, height: 7)
                    .cornerRadius(40)
                    .foregroundColor(Color(red: 1.0, green: 1.0, blue: 1.0).opacity(0.1))
                VStack {
                    VStack(alignment: .leading) {
                        VStack {
                            HStack {
                                VStack(alignment: .leading) {
                                    Text("Settings")
                                        .font(.title3)
                                        .foregroundColor(Color(red: 1.0, green: 1.0, blue: 1.0).opacity(1.0))
                                        .fontWeight(.bold)
                                        .padding(.top, 7)
                                        .padding(.horizontal, 7)
                                    
                                    Text("Bla-Bla")
                                        .font(.headline)
                                        .foregroundColor(Color(red: 1.0, green: 1.0, blue: 1.0).opacity(0.2))
                                        .fontWeight(.semibold)
                                        .padding(.horizontal, 7)
                                }
                                
                                Spacer()
                            }
                            Rectangle()
                                .frame(height: 2)
                                .cornerRadius(40)
                                .foregroundColor(Color(red: 1.0, green: 1.0, blue: 1.0).opacity(0.1))
                                .padding(.horizontal, 7)
                            
                        }
                        Spacer()
                        
                        // Your View
                        ScrollView {
                            VStack(spacing: 15) {
                                RoundedRectangle(cornerRadius: 18)
                                    .frame(height: 70)
                                    .foregroundColor(Color(red: 0.7, green: 0.7, blue: 0.7).opacity(0.1))
                                    .overlay(
                                        HStack {
                                            VStack(alignment: .leading) {
                                                HStack {
                                                    Text("they/them")
                                                        .font(.headline)
                                                        .foregroundColor(Color(red: 1.00, green: 0.64, blue: 0.23).opacity(1.0))
                                                        .fontWeight(.semibold)
                                                        .padding(.leading, 15)
                                                    
                                                    Image(systemName: "exclamationmark.triangle.fill")
                                                        .foregroundColor(Color(red: 1.00, green: 0.64, blue: 0.23).opacity(1.0))
                                                    Spacer()
                                                    
                                                }
                                                Text("💀")
                                                    .font(.headline)
                                                    .foregroundColor(Color(red: 1.0, green: 1.0, blue: 1.0).opacity(0.2))
                                                    .fontWeight(.semibold)
                                                
                                                    .padding(.horizontal, 15)
                                            }
                                            Spacer()
                                        }
                                    )
                                    .padding(.horizontal, 7)
                                    .padding(.top, 10)
                                
                                
                                RoundedRectangle(cornerRadius: 18)
                                    .frame(height: 70)
                                    .foregroundColor(Color(red: 0.7, green: 0.7, blue: 0.7).opacity(0.1))
                                    .overlay(
                                        HStack {
                                            VStack(alignment: .leading) {
                                                Text("Gay?")
                                                    .font(.headline)
                                                    .foregroundColor(Color(red: 1.0, green: 1.0, blue: 1.0).opacity(0.4))
                                                    .fontWeight(.semibold)
                                                    .padding(.horizontal, 15)
                                                
                                                Text("Yes or No")
                                                    .font(.headline)
                                                    .foregroundColor(Color(red: 1.0, green: 1.0, blue: 1.0).opacity(0.2))
                                                    .fontWeight(.semibold)
                                                
                                                    .padding(.horizontal, 15)
                                            }
                                            Spacer()
                                            CheckBoxView(isChecked: $CheckXD)
                                                .padding()
                                        }
                                        
                                        
                                    )
                                    .padding(.horizontal, 7)
                                
                                RoundedRectangle(cornerRadius: 18)
                                    .frame(height: 70)
                                    .foregroundColor(Color(red: 0.7, green: 0.7, blue: 0.7).opacity(0.1))
                                    .overlay(
                                        HStack {
                                            VStack(alignment: .leading) {
                                                Text("Love is")
                                                    .font(.headline)
                                                    .foregroundColor(Color(red: 1.0, green: 1.0, blue: 1.0).opacity(0.4))
                                                    .fontWeight(.semibold)
                                                    .padding(.horizontal, 15)
                                                
                                                CustomSlider(value: $slider123)
                                                    .frame(height: 10)
                                                    .padding(.bottom, 10)
                                                
                                                    .padding(.horizontal, 15)
                                            }
                                            Spacer()
                                        }
                                    )
                                    .padding(.horizontal, 7)
                                Spacer()
                            }
                        }
                        
                    }
                    .padding()
                }
                .frame(height: geometry.size.height / 2.1)
                .background(Color(red: 1.0, green: 1.0, blue: 1.0).opacity(0.1))
                .cornerRadius(40)
                .transition(.move(edge: .bottom))
                .padding(.horizontal, 10)
                .padding(.bottom, 20)
                .gesture(
                    DragGesture().onEnded { value in
                        if value.translation.height > 5 {
                            withAnimation {
                                self.HelloFriend = false
                            }
                        }
                    }
                )
            }
            .edgesIgnoringSafeArea(.all)
        }
    }
}
