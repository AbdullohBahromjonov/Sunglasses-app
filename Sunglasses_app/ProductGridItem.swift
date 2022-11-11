//
//  GridItem.swift
//  Sunglasses_app
//
//  Created by Abdulloh on 09/11/22.
//

import SwiftUI

struct ProductGridItem: View {
    let image: String
    let title: String
    let price: String
    
    @State var size = CGSize(width: 0, height: 0)
    
    var body: some View {
        VStack(alignment: .leading) {
            Image(image)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .cornerRadius(10)
                .padding(.bottom, 10)
            Text(title)
                .foregroundColor(.black)
                .font(.system(size: 16, weight: .semibold))
            Text(price)
                .foregroundColor(.gray)
                .font(.system(size: 14, weight: .semibold))
        }
        .padding(10)
        .frame(width: UIScreen.main.bounds.size.width/2.3)
    }
}

struct GridItem_Previews: PreviewProvider {
    static var previews: some View {
        HStack(alignment: .top) {
            ProductGridItem(image: "man 5", title: "ARNETTE Men's", price: "$120")
            ProductGridItem(image: "glasses 2", title: "Person", price: "$120")
        }
    }
}
