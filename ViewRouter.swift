import SwiftUI

class ViewRouter: ObservableObject {
    
    @Published var currentPage: Page = .exersisses
    
}


enum Page {
    case home
    case exersisses
    case settings
}
