import SwiftUI


struct Chapter1View: View {
    
    @State private var currentPage = 0
    
    var body: some View {
        

        ZStack {
            
            Color.lightGray.ignoresSafeArea()
            
            TabView {
                OnboardingView(text: "Welcome To “To The Top” the interactive story about climbing buildings. Let’s start things off by learning the name of the main character of this story.", image: "climbLogo", title: "Who Is The Main Character of this Story?")
                OnboardingView(text: "Welcome To “To The Top” the interactive story about climbing buildings. Let’s start things off by learning the name of the main character of this story.", image: "climbLogo", title: "Who Is The Main Character of this Story?")
                    .tag("hi")
            }
            .tabViewStyle(.page)
            .indexViewStyle(PageIndexViewStyle(backgroundDisplayMode: .always))
        }
    }
}

#Preview {
    Chapter1View()
}

