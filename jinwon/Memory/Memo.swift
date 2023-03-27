//
//  Memo.swift
//  jinwon
//
//  Created by 정진원 on 2023/03/27.
//

import Foundation
import SwiftUI

class Memo : Identifiable, ObservableObject {
    let id : UUID
    @Published var content : String
    let insertDate : Date
    
    init(content: String, insertDate: Date = Date.now) {
        id = UUID()
        self.content = content
        self.insertDate = insertDate
    }
}
