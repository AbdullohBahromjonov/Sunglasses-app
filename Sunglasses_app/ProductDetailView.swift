//
//  ProductDetailView.swift
//  Sunglasses_app
//
//  Created by Abdulloh on 10/11/22.
//

import SwiftUI

struct ProductDetailView: View {
    @Environment(\.presentationMode) var presentationMode
    @Binding var product: GridModel
    
    var body: some View {
        ZStack {
            
            VStack {
                Image("glasses 3")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: UIScreen.main.bounds.size.width)
                
                VStack(alignment: .leading) {
                    Text("Sunglasses")
                        .foregroundColor(.gray)
                        .font(.system(size: 14, weight: .semibold))
                        .padding(.top)
                    Text("Grand Voyage")
                        .foregroundColor(.black)
                        .font(.system(size: 28, weight: .bold))
                    
                    ColorPicker()
                    
                    AdditionalFealture(text: "Metal Frame")
                    AdditionalFealture(text: "Plastic Lens")
                    AdditionalFealture(text: "Polarized")
                    
                    HStack {
                        Spacer()
                        
                        Text("$120")
                            .foregroundColor(.black)
                            .font(.system(size: 28, weight: .medium))
                    }
                    
                    HStack {
                        DetailViewButton(text: "AR", textColor: .black, backgroudColor: Color("Color5"), image: "cube")
                        Spacer()
                        DetailViewButton(text: "Add to cart", textColor: .white, backgroudColor: .black)
                    }
                }
                .padding(.horizontal, 30)
                
                Spacer()
            }
            .edgesIgnoringSafeArea(.all)
            
            VStack {
                HStack(alignment: .top) {
                    Button(
                        action: {
                            presentationMode.wrappedValue.dismiss()
                        },
                        label: {
                            Image(systemName: "arrow.left")
                                .imageScale(.large)
                                .foregroundColor(.black)
                        }
                    )
                    Spacer()
                }
                .padding(20)
                
                Spacer()
            }
        }
    }
}

struct ProductDetailView_Previews: PreviewProvider {
    static var previews: some View {
        ProductDetailView(product: .constant(GridModel(image: "man 1", title: "Person", price: "$120")))
    }
}

struct AdditionalFealture: View {
    let text: String
    
    var body: some View {
        VStack(spacing: 10) {
            HStack {
                Text(text.uppercased())
                    .foregroundColor(.black)
                    .font(.system(size: 16, weight: .medium))
                
                Spacer()
                
                Button (
                    action: {},
                    label: {
                        Image(systemName: "plus")
                            .foregroundColor(.black)
                    }
                )
            }
            
            Rectangle()
                .foregroundColor(.black)
                .frame(height: 2)
        }
        .padding(.vertical, 5)
    }
}

struct DetailViewButton: View {
    let text: String
    let textColor: Color
    let backgroudColor: Color
    var image = ""
    
    var body: some View {
        Button (
            action: {},
            label: {
                HStack {
                    if !image.isEmpty {
                        Image(systemName: image)
                            .foregroundColor(.black)
                    }
                    
                    Text(text.uppercased())
                        .foregroundColor(textColor)
                        .padding(.vertical, 20)
                        .font(.system(size: 14, weight: .bold))
                }
                .frame(width: UIScreen.main.bounds.size.width/2.5)
                .background(
                    Capsule()
                        .foregroundColor(backgroudColor)
                )
            }
        )
    }
}

struct ColorPicker: View {
    var body: some View {
        HStack {
            ForEach(0..<5) { color in
                Color("Color\(color+1)")
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 40)
                    .cornerRadius(8)
            }
        }
        .padding(.vertical, 12)
    }
}
