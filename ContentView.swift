
import SwiftUI

struct ContentView: View {
    
    @StateObject var viewRouter: ViewRouter
    
    @State var showPopUp = false
    
    var body: some View {
        GeometryReader { geometry in
            VStack {
                Spacer()
                switch viewRouter.currentPage {
                case .home:
                    Text("Today")
                case .exersisses:
                    home()
                        .background(Color("fondo"))
                case .settings:
                   Text("Settings")
                }
                Spacer()
                ZStack {
                    HStack {
                        TabBarIcon(viewRouter: viewRouter, assignedPage: .home, width: geometry.size.width/3, height: geometry.size.height/25, systemIconName: "calendar", tabName: "Today")
                            .padding(.leading, 40)
                        Spacer()
                        TabBarIcon(viewRouter: viewRouter, assignedPage: .exersisses, width: geometry.size.width/3, height: geometry.size.height/25, systemIconName: "trophy", tabName: "Exercises")
                        Spacer()
                        TabBarIcon(viewRouter: viewRouter, assignedPage: .settings, width: geometry.size.width/3, height: geometry.size.height/25, systemIconName: "gear", tabName: "Settings")
                            .padding(.trailing, 40)
                    }
                    .frame(width: geometry.size.width, height: geometry.size.height/8)
                    .background(Color("TabBarBackground").shadow(radius: 2))
                }
            }
            .ignoresSafeArea()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(viewRouter: ViewRouter())
            .preferredColorScheme(.light)
    }
}


struct TabBarIcon: View {
    
    @StateObject var viewRouter: ViewRouter
    let assignedPage: Page
    
    let width, height: CGFloat
    let systemIconName, tabName: String

    var body: some View {
        VStack {
            Image(systemName: systemIconName)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: width, height: height)
                .padding(.top, 10)
            Text(tabName)
                .font(.footnote)
            Spacer()
        }
            .padding(.horizontal, -4)
            .onTapGesture {
                viewRouter.currentPage = assignedPage
            }
            .foregroundColor(viewRouter.currentPage == assignedPage ? Color("icon") : Color("icondes"))
    }
}
