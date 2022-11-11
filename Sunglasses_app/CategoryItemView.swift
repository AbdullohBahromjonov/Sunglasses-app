//
//  CategoryView.swift
//  Sunglasses_app
//
//  Created by Abdulloh on 08/11/22.
//

import SwiftUI

struct CategoryItemView: View {
    @State var textSize: CGFloat = 0
    let active: Bool
    let text: String
    var animation: Namespace.ID
    
    var body: some View {
        VStack(spacing: 6) {
            Text(text.uppercased())
                .foregroundColor(active ? .black : .gray)
                .font(.system(size: 14))
                .fontWeight(.medium)
                .readSize { newSize in
                    textSize = newSize.width
                }
            
            if active {
                Rectangle()
                    .foregroundColor(.black)
                    .frame(width: textSize, height: 4)
                    .matchedGeometryEffect(id: "tab", in: animation)
            }
            
        }
    }
}

struct CategoryItemView_Previews: PreviewProvider {
    @Namespace static var animation
    
    static var previews: some View {
        CategoryItemView(active: true, text: "Men's", animation: animation)
    }
}

extension View {
  func readSize(onChange: @escaping (CGSize) -> Void) -> some View {
    background(
      GeometryReader { geometryProxy in
        Color.clear
          .preference(key: SizePreferenceKey.self, value: geometryProxy.size)
      }
    )
    .onPreferenceChange(SizePreferenceKey.self, perform: onChange)
  }
}

struct SizePreferenceKey: PreferenceKey {
  static var defaultValue: CGSize = .zero
  static func reduce(value: inout CGSize, nextValue: () -> CGSize) {}
}
