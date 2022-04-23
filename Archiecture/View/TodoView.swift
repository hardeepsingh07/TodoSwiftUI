//
//  TodoView.swift
//  Archiecture
//
//  Created by Hardeep Singh on 4/22/22.
//

import Foundation
import SwiftUI

struct TodoView: View {
    @StateObject var viewModel: TodoViewModel
    
    var body: some View {
        VStack {
            Text(viewModel.todoData?.title ?? "No Data").padding()
            if(!viewModel.isCollapsed) {
                Text(viewModel.todoData?.description ?? "No Data").padding()
            }
            Button { viewModel.onDataRefreshClicked() } label: { Text("Refresh Data") }
            if(viewModel.isLoading) {
                ProgressView()
            }
        }
        .onTapGesture(perform: { viewModel.onItemClicked() })
        .frame(maxWidth: .infinity)
        .padding(.all, 12)
        .cornerRadius(12)
        .background(Color.gray)
    }
}

struct TodoView_Previews: PreviewProvider {
    static var previews: some View {
        TodoView(viewModel: TodoViewModel(repo: TodoRepository(service: TodoSerivce())))
    }
}

