//
//  CoreViewModel.swift
//  Archiecture
//
//  Created by Hardeep Singh on 4/21/22.
//

import Foundation

protocol ViewState {}
protocol ViewAction {}

class BaseViewModel<A: ViewAction, S: ViewState>: ObservableObject {
    @Published var viewState: S
    
    init (viewState: S) {
        self.viewState = viewState
    }
    
    func processAction(action: A) {
        fatalError("Viewmodel must override processAction()")
    }
}
