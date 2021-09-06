//
//  WallpapersView.swift
//  GeometryReaderWallpaperApp
//
//  Created by Đorđije Novović on 6.9.21..
//

import SwiftUI

struct WallpapersView: View {
    var wallpaperPic: String
    var body: some View {
        Image(wallpaperPic)
            .resizable()
            .cornerRadius(16)
            .clipped()
    }
    
}

struct WallpapersView_Previews: PreviewProvider {
    static var previews: some View {
        WallpapersView(wallpaperPic: "1")
            .preferredColorScheme(.dark)
            .scaledToFit()
            .frame(width: 350)
            .padding()
    }
}
