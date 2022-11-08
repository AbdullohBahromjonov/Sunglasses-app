//
//  ContentView.swift
//  Sunglasses_app
//
//  Created by Abdulloh on 08/11/22.
//

import SwiftUI

struct ContentView: View {
    @State var searchText = ""
    
    var body: some View {
        ZStack {
            Color.white
                .edgesIgnoringSafeArea(.all)
            VStack {
                HStack {
                    Image(systemName: "magnifyingglass")
                        .foregroundColor(.gray)
                    
                    TextField("Search", text: $searchText)
                        
                }
                .padding()
                .background(
                    Capsule()
                        .foregroundColor(Color("SearchFieldColor"))
                )
                
                CategoryItemView()
                
            }
            .padding(20)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
