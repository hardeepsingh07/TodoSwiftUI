//
//  TodoView2.swift
//  Archiecture
//
//  Created by Hardeep Singh on 4/21/22.
//

import SwiftUI

struct TodoViewV: View {
    @StateObject var viewModel: BaseViewModel<TodoAction, TodoState> = TodoViewModel()
    
    var body: some View {
        VStack {
            Text(viewModel.viewState.data?.title ?? "No Data").padding()
            if(!viewModel.viewState.isCollapsed) {
                Text(viewModel.viewState.data?.description ?? "No Data").padding()
                Button { viewModel.processAction(action: .OnDataFetchClicked) } label: { Text("Refresh Data") }
            }
            if(viewModel.viewState.loading) {
                ProgressView()
            }
        }
        .onTapGesture(perform: {
            viewModel.processAction(action: .OnItemClicked)
        })
        .frame(maxWidth: .infinity)
        .padding(.all, 12)
        .cornerRadius(12)
        .background(Color.gray)
    }
}

struct ListView_Previews: PreviewProvider {
    static var previews: some View {
        TodoViewV()
    }
}
