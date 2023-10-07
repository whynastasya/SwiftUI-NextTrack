//
//  ContentView.swift
//  NextTrack
//
//  Created by nastasya on 05.10.2023.
//

import SwiftUI

struct ContentView: View {
    @State private var isAnimating = true
    private let size: CGFloat = 50
    
    var body: some View {
        Button {
            isAnimating = true
            withAnimation(.interpolatingSpring(stiffness: 100, damping: 10)) {
                isAnimating.toggle()
            }
        } label: {
            ZStack {
                Circle()
                    .foregroundStyle(.purple.opacity(0.4))
                    .frame(width: size * 2)
                    .opacity(isAnimating ? 0.5 : 0)
                
                Image(systemName: "play.fill")
                    .foregroundStyle(.purple)
                    .font(.system(size: size))
                    .scaleEffect(
                        x: isAnimating ? 0 : 1,
                        y: isAnimating ? 0 : 1,
                        anchor: .trailing
                    )
                    .offset(x: isAnimating ? size * -1 : size * -0.35)
                    .opacity(isAnimating ? 0 : 1)
                
                HStack(spacing: size * -0.1) {
                    Image(systemName: "play.fill")
                        .foregroundStyle(.purple)
                        .font(.system(size: size))
                        .offset(x: isAnimating ? 0 : size * 0.75 )
                    
                    Image(systemName: "play.fill")
                        .foregroundStyle(.purple)
                        .font(.system(size: size))
                        .opacity(isAnimating ? 1 : 0)
                        .scaleEffect(isAnimating ? 1 : 0)
                        .offset(x: isAnimating ? 0 : size * 0.5)
                }
            }
        }
    }
}

    


#Preview {
    ContentView()
}
