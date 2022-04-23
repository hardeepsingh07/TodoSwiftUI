
import SwiftUI

/**
 Simple Application
   - List Item - Collapse and Expand
   - On Expand log Analytics
   - In Expand - Button start counter using Data Layer
   - On Collapse - Stop counter
 */

@main
struct ArchiectureApp: App {
    private var repo: TodoRepository = TodoRepository(service: TodoSerivce())
    
    var body: some Scene {
        WindowGroup {
            MainContentView().environmentObject(repo)
        }
    }
}
