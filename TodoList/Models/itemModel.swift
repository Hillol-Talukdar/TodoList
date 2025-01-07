//
//  itemModels.swift
//  TodoList
//
//  Created by Hillol Talukdar on 7/1/25.
//

import Foundation

struct ItemModel: Identifiable {
    let id: String = UUID().uuidString
    let title : String
    let isCompleted : Bool
}
