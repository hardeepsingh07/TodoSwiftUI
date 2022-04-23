//
//  TodoRepository.swift
//  Archiecture
//
//  Created by Hardeep Singh on 4/22/22.
//

import Foundation

class TodoRepository: ObservableObject {
    
    private var service: TodoSerivce
    
    @Published var todoData: TodoData?
    @Published var isLoading: Bool = false
    
    init(service: TodoSerivce) {
        self.service = service
    }
    
    func getTodoData() {
        self.isLoading = true
        service.getTodoData { data, error in
            self.isLoading = false
            if let error = error {
                print(error)
            } else {
                self.todoData = data
            }
        }
    }
}
