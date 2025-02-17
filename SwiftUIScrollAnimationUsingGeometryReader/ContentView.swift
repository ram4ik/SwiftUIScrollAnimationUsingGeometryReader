//
//  ContentView.swift
//  SwiftUIScrollAnimationUsingGeometryReader
//
//  Created by ramil on 07/10/2019.
//  Copyright © 2019 com.ri. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            HStack(spacing: 50) {
                ForEach(1..<5) { item in
                    GeometryReader { geometry in
                        Image("\(item)")
                        .resizable()
                            .aspectRatio(contentMode: .fit)
                        .cornerRadius(10)
                            .shadow(color: Color.gray, radius: 10, x: 0, y: 0)
                            .rotation3DEffect(Angle(degrees: Double(geometry.frame(in: .global).minX - 20) / 4), axis: (x: 20, y: 20, z: 20))
                    }
                    .frame(width: 370, height: 400)
                    .padding()
                }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
