//
//  itemModels.swift
//  TodoList
//
//  Created by Hillol Talukdar on 7/1/25.
//

import Foundation

struct ItemModel: Identifiable, Codable {
    let id: String
    let title : String
    let isCompleted : Bool
    
    init(id: String = UUID().uuidString, title: String, isCompleted: Bool = false) {
        self.id = id
        self.title = title
        self.isCompleted = isCompleted
    }
    
    func updateCompletion () -> ItemModel {
        return ItemModel(id: id, title: title, isCompleted: !isCompleted)
    }
}
