import SwiftUI


struct Chapter1View: View {
        
    @State private var name: String = ""
    
    
    var body: some View {
        

        ZStack {
            
            Color.lightGray.ignoresSafeArea()
            
            TabView {
                OnboardingView(name: $name, text: "Welcome To “To The Top” the interactive story about climbing buildings. Let’s start things off by learning the name of the main character of this story.", image: "climbLogo", title: "Who Is The Main Character of this Story?")
                IntroductionView(childName: $name)
            }
            .tabViewStyle(.page)
            .indexViewStyle(PageIndexViewStyle(backgroundDisplayMode: .always))
        }
    }
}

#Preview {
    Chapter1View()
}

