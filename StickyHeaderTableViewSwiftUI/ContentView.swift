//
//  ContentView.swift
//  StickyHeaderTableViewSwiftUI
//
//  Created by 김정민 on 12/23/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView {
            ScrollView {
                LazyVStack(spacing: 0, pinnedViews: [.sectionHeaders]) {
                    // 상단 콘텐츠
                    VStack {
                        Text("Top Content")
                            .font(.largeTitle)
                            .bold()
                            .foregroundStyle(.white)
                            .padding()
                            .clipShape(RoundedRectangle(cornerRadius: 10))
                    }
                    .padding()
                    .frame(maxWidth: .infinity)
                    .background(.blue)
                    
                    // Sticky Header가 포함된 섹션
                    Section(content: {
                        VStack(spacing: 10) {
                            ForEach(0..<50) { index in
                                Text("Item \(index)")
                                    .frame(maxWidth: .infinity)
                                    .padding()
                                    .background(Color.blue.opacity(0.3))
                                    .clipShape(RoundedRectangle(cornerRadius: 10))
                                    .padding(.horizontal)
                            }
                        }
                    }, header: {
                        StickyHeader()
                    })
                }
            }
        }
    }
}

struct StickyHeader: View {
    var body: some View {
        HStack {
            Text("Sticky Header")
                .font(.largeTitle)
                .padding()
                .frame(maxWidth: .infinity)
                .background(Color.red)
                .clipShape(RoundedRectangle(cornerRadius: 10))
                .foregroundStyle(.white)
        }
        .frame(height: 80)
        .padding(.horizontal)
        .background(Color.red)
    }
}

#Preview {
    ContentView()
}
