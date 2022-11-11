//
//  GridView.swift
//  Sunglasses_app
//
//  Created by Abdulloh on 09/11/22.
//

import SwiftUI
import StaggeredList

struct ProductsGridView: View {
    @State var showDetail = false
    let data: [GridModel]
    
    var body: some View {
        VStack {
            if !data.isEmpty {
                StaggeredLayoutList(data: data, verticalSpacing: 8) { product in
                    ProductGridItem(image: product.image, title: product.title, price: product.price)
                        .onTapGesture {
                            showDetail = true
                        }
                        .fullScreenCover(isPresented: $showDetail) {
                            ProductDetailView(product: .constant(product))
                        }
                }
                .scrollIndicators(ScrollIndicatorVisibility.never)
            } else {
                Text("Oops, nothing found")
                    .fontWeight(.semibold)
                    .frame(maxWidth: .infinity, maxHeight: .infinity)
                    .offset(y: -100)
            }
        }
    }
}

struct GridView_Previews: PreviewProvider {
    static var previews: some View {
        ProductsGridView(data: womenProducts)
    }
}
