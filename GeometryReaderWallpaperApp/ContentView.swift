//
//  ContentView.swift
//  GeometryReaderWallpaperApp
//
//  Created by Đorđije Novović on 6.9.21..
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false, content: {
            HStack {
                ForEach(1..<7) { index in
                    GeometryReader { geometry in
                        WallpapersView(wallpaperPic: "\(index)")
                            .rotation3DEffect(
                                Angle(degrees: getPercentage(geo: geometry) * 20),
                                axis: (x: 0.0, y: 1.0, z: 0.0)
                            )
                    }
                    .scaledToFit()
                    .frame(width: 350)
                    .padding()
                }
            }
        })
    }
    
    func getPercentage(geo: GeometryProxy) -> Double {
        let maxDistance = UIScreen.main.bounds.width / 2
        let currentX = geo.frame(in: .global).midX
        return Double(1 - (currentX / maxDistance))
    }
    
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
