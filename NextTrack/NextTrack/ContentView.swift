//
//  ContentView.swift
//  NextTrack
//
//  Created by nastasya on 05.10.2023.
//

import SwiftUI

struct ContentView: View {

    @State private var isTapped = false

    var body: some View {
        Button {
            withAnimation(.interpolatingSpring) {
                isTapped.toggle()
                
            }
        } label: {
            HStack(spacing: 0) {
                Image(systemName: "play.fill")
                    .resizable()
                    .frame(
                        width: isTapped ? 50 : 0,
                        height: isTapped ? 50 : 0
                    )
                    .opacity(isTapped ? 1 : 0)
                
                
                Image(systemName: "play.fill")
                    .resizable()
                    .frame(
                        width: 50,
                        height: 50
                    )
                
                Image(systemName: "play.fill")
                    .resizable()
                    .frame(
                        width: isTapped ? 0 : 50,
                        height: isTapped ? 0 : 50
                    )
                    .opacity(isTapped ? 0 : 1)
   
            }
        }
        .frame(width: 100, height: 50)
//        .background(Circle().fill(isAnimated ? Color.clear : Color.gray))
//        .animation(.easeInOut(duration: 0.2))
//        .scaleEffect(isAnimated ? 1.2 : 1.0)
//        .simultaneousGesture(TapGesture().onEnded { _ in
//            withAnimation {
//                isAnimated.toggle()
//            }
//            
//        })
    }
}

#Preview {
    ContentView()
}
