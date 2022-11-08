//
//  CategoryView.swift
//  Sunglasses_app
//
//  Created by Abdulloh on 08/11/22.
//

import SwiftUI

struct CategoryItemView: View {
    @State var textSize: CGFloat = 0
    
    var body: some View {
        VStack(spacing: 6) {
            Text("Men's".uppercased())
                .fontWeight(.medium)
                .readSize { newSize in
                    textSize = newSize.width
                }
            Rectangle()
                .foregroundColor(.black)
                .frame(width: textSize, height: 4)
        }
    }
}

struct CategoryView_Previews: PreviewProvider {
    static var previews: some View {
        CategoryItemView()
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
