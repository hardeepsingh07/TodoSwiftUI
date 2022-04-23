//
//  TodoViewModel.swift
//  Archiecture
//
//  Created by Hardeep Singh on 4/22/22.
//

import SwiftUI

protocol TodoActionProtocol: ObservableObject {
    var isCollapsed: Bool { get }
    var isLoading : Bool { get }
    var todoData: TodoData? { get }
    
    func onItemClicked()
    func onDataRefreshClicked()
}

class TodoViewModel: TodoActionProtocol {
    
    private var repo: TodoRepository
    @Published var isCollapsed: Bool = true
    var isLoading: Bool { return repo.isLoading }
    var todoData: TodoData? {
        print("Data Recieved")
        return repo.todoData
    }
    
    init(repo: TodoRepository) {
        self.repo = repo
    }
        
    func onItemClicked() {
        self.isCollapsed = !self.isCollapsed
        print("Collapsed Analytics Event: \(isCollapsed)")
    }
        
    func onDataRefreshClicked() {
        print("Fetching Data...")
        repo.getTodoData()
    }
}
