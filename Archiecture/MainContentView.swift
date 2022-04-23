//
//  MainContentView.swift
//  Archiecture
//
//  Created by Hardeep Singh on 4/23/22.
//

import SwiftUI

struct MainContentView: View {
    @EnvironmentObject var repo: TodoRepository
    
    var body: some View {
        VStack {
            TodoView(viewModel: TodoViewModel(repo: repo))
        }
    }
}

struct MainContentView_Previews: PreviewProvider {
    static var previews: some View {
        MainContentView()
    }
}
