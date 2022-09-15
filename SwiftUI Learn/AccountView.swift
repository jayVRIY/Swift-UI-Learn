//
//  AccountView.swift
//  SwiftUI Learn
//
//  Created by Jay on 2022/9/15.
//

import SwiftUI

struct AccountView: View {
    var body: some View {
        NavigationView{
            List{
                VStack(spacing:8){
                    Image(systemName: "person.crop.rectangle.stack")
                        .font(.title)
                        .foregroundStyle(.blue)
                        .padding()
                        .background(Circle().fill(.ultraThinMaterial))
                        .background(
                            Image(systemName: "rectangle.roundedbottom.fill")
                                .foregroundStyle(.blue)
                                .font(.system(size:200))
                                .offset(x: -50, y: -100)
                        )
                    Text("Jay")
                        .fontWeight(.semibold)
                        .font(.title)
                    HStack {
                        Image(systemName: "location")
                            .font(.footnote.weight(.semibold))
                            .foregroundColor(.secondary)
                        Text("China")
                            .font(.footnote.weight(.semibold))
                            .foregroundColor(.secondary)
                    }
                    
                }.frame(maxWidth:.infinity)
                    .padding()
                Section {
                    NavigationLink{ ContentView() } label: {
                        Label("Setting",systemImage: "gear")
                    }
                    NavigationLink{ ContentView() } label: {
                        Label("Billing",systemImage: "creditcard")
                    }
                    NavigationLink{ ContentView() } label: {
                        Label("Help",systemImage: "questionmark")
                    }
                }
                .accentColor(.primary)
                .listRowSeparator(.hidden)
                Link(destination: URL(string: "http://www.orcircle.com")!){
                    Label("My Website",systemImage: "network")
                }
            }
            .listStyle(.insetGrouped)
            .navigationTitle("Settings")
        }
        
    }
}

struct AccountView_Previews: PreviewProvider {
    static var previews: some View {
        AccountView()
            .previewDevice("iPhone 13")
    }
}
