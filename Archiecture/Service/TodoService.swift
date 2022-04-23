//
//  TodoService.swift
//  Archiecture
//
//  Created by Hardeep Singh on 4/22/22.
//

import Foundation

class TodoSerivce {
    var title: String = "Todo Name"
    var requestDelay = 1.25
    
    func getTodoData(completion: @escaping (TodoData, Error?) -> Void){
        DispatchQueue.main.asyncAfter(deadline: .now() + requestDelay) {
            completion(TodoData(title: self.title, description: "This is todo description with some long text"), nil)
        }
    }
}
