//
//  ContentView.swift
//  Sunglasses_app
//
//  Created by Abdulloh on 08/11/22.
//

import SwiftUI

struct ContentView: View {
    @State var selectedIndex = 0
    let spacing: CGFloat = 10
    var data: [GridModel] {
        if selectedIndex == 0 {
            return menProducts
        }
        if selectedIndex == 1 {
            return womenProducts
        }
        if selectedIndex == 2 {
            return girlProducts
        }
        if selectedIndex == 3 {
            return boyProducts
        }
        else {
            return []
        }
        
    }
    
    var body: some View {
        ZStack {
            Color.white
                .edgesIgnoringSafeArea(.all)
            
            VStack(spacing: 10) {
                SearchField()
                    .padding(.bottom, 30)
                
                CategoryView(selectedIndex: $selectedIndex)
                
                ProductsGridView(data: data)
            }
            .padding(20)
        }
        .edgesIgnoringSafeArea(.bottom)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct GridModel: Identifiable {
    let id = UUID()
    let image: String
    let title: String
    let price: String
}

let womenProducts = [
    GridModel(image: "women 1", title: "Person", price: "$120"),
    GridModel(image: "women glasses 1", title: "Glasses", price: "$120"),
    GridModel(image: "women 2", title: "Glasses", price: "$120"),
    GridModel(image: "women glasses 2", title: "Person", price: "$120"),
    GridModel(image: "women glasses 3", title: "Person", price: "$120"),
    GridModel(image: "women 3", title: "Glasses", price: "$120"),
    GridModel(image: "women 4", title: "Glasses", price: "$120"),
    GridModel(image: "women glasses 4", title: "Person", price: "$120"),
    GridModel(image: "women glasses 5", title: "Women", price: "$120")
]

let menProducts = [
    GridModel(image: "glasses 2", title: "Person", price: "$120"),
    GridModel(image: "man 2", title: "Glasses", price: "$120"),
    GridModel(image: "man 3", title: "Glasses", price: "$120"),
    GridModel(image: "glasses 1", title: "Person", price: "$120"),
    GridModel(image: "glasses 3", title: "Person", price: "$120"),
    GridModel(image: "man 1", title: "Glasses", price: "$120"),
    GridModel(image: "man 4", title: "Glasses", price: "$120"),
    GridModel(image: "glasses 4", title: "Person", price: "$120"),
    GridModel(image: "glasses 5", title: "Person", price: "$120"),
    GridModel(image: "glasses 6", title: "Man", price: "$120"),
    GridModel(image: "man 5", title: "Man", price: "$120"),
    GridModel(image: "man 6", title: "Man", price: "$120")
]

let girlProducts = [
    GridModel(image: "girl glasses 1", title: "Girl", price: "$50")
]

let boyProducts = [
    GridModel(image: "boy glasses 1", title: "Boy", price: "$60")
]
