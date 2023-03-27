//
//  MainListView.swift
//  jinwon
//
//  Created by 정진원 on 2023/03/27.
//

import SwiftUI

struct MainListView: View {
    @EnvironmentObject var store : MemoStore
    var body: some View {
        NavigationView {
            List(store.list){ memo in
                VStack {
                    Text(memo.content)
                    
                    Text(memo.insertDate, style: .date)
                }
            }
            .navigationTitle("내 메모장")
        }
    }
}

struct MainListView_Previews: PreviewProvider {
    static var previews: some View {
        MainListView()
            .environmentObject(MemoStore())
    }
}
