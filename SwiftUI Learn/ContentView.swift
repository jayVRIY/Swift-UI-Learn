//
//  ContentView.swift
//  SwiftUI Learn
//
//  Created by Jay on 2022/9/14.
//

import SwiftUI


struct ContentView: View {
    var body: some View {
        VStack(alignment: .leading,spacing: 8){
            Spacer()
            Image("Logo 2")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 26, height: 26)
                .cornerRadius(10)
                .padding(10)
                .background(.ultraThinMaterial,in: RoundedRectangle(cornerRadius: 16,style: .continuous))
            Text("SwiftUI for  iOS 15")
                .font(.largeTitle)
                .fontWeight(.bold)
                .foregroundStyle(.linearGradient(colors: [.primary,.primary.opacity(0.5)], startPoint: .topLeading, endPoint: .bottomTrailing))
            Text("20 sections -3 hours")
                .font(.footnote)
                .fontWeight(.semibold)
                .foregroundStyle(.secondary)
            Text("Build an iOS app for iOS 15 with custom layouts, animations and ...")
                .font(.footnote)
                .fontWeight(.semibold)
                .foregroundStyle(.secondary)
                .multilineTextAlignment(.leading)
                .lineLimit(2)
            NavigationLink{AccountView()}label:{
                Label("Setting",systemImage: "gear")
            }
        }
        .padding(.all, 20)
        .frame( height: 300)
        .background(.ultraThinMaterial,in: RoundedRectangle(cornerRadius: 30,style: .continuous)
        )
        .shadow(color: Color("Shadow").opacity(0.3), radius: 10, x: 0, y: 10)
        .overlay(RoundedRectangle(cornerRadius: 30,style: .continuous).stroke(.linearGradient(colors: [.white.opacity(0.3),.black.opacity(0.1)], startPoint: .topLeading, endPoint: .bottomTrailing),style: .init())
        )
        .padding(.all,20)
        .background(Image("Blob 1")
            .offset(x: 250 , y: -100)
        )
        .overlay(Image("Illustration 5")
            .resizable()
            .aspectRatio(contentMode: .fit)
            .frame(width: 300)
            .offset(x: 32 ,y: -80)
        )
        
        
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .previewDevice("iPhone 13")
        ContentView()
            .preferredColorScheme(.dark)
            .previewDevice("iPhone 13")
        
        
    }
}
