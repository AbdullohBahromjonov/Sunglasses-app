//
//  CategoryView.swift
//  Sunglasses_app
//
//  Created by Abdulloh on 09/11/22.
//

import SwiftUI

struct CategoryView: View {
    @Binding var selectedIndex: Int
    @Namespace var animation
    var categories = ["Men's", "Women's", "Girls'", "Boys'"]
    
    var body: some View {
        VStack(alignment: .leading, spacing: 0) {
            ScrollView(.horizontal) {
                HStack(alignment: .top, spacing: 25) {
                    ForEach(0..<categories.count) { category in
                        CategoryItemView(active: category == selectedIndex, text: categories[category], animation: animation)
                            .onTapGesture {
                                withAnimation(.easeInOut) {
                                    selectedIndex = category
                                }
                            }
                    }
                }
            }
            Rectangle()
                .frame(height: 2)
        }
    }
}

struct CategoryView_Previews: PreviewProvider {
    static var previews: some View {
        CategoryView(selectedIndex: .constant(0))
    }
}
