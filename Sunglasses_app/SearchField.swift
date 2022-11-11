//
//  SearchField.swift
//  Sunglasses_app
//
//  Created by Abdulloh on 09/11/22.
//

import SwiftUI

struct SearchField: View {
    @State var searchText = ""
    
    var body: some View {
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
    }
}

struct SearchField_Previews: PreviewProvider {
    static var previews: some View {
        SearchField()
    }
}
