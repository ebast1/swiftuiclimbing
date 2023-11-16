import SwiftUI

struct Chapter3View: View {
    
    @State private var verticalButton: CGFloat = 0.0
    @State private var buttonPressed = 10
    @State private var showAlert = false
    @State private var showRiddle = false
    
    @State private var isSheetPresented = false
    @State private var enteredWord = ""
       
    let correctWord = "Password"
    
    var body: some View {
        ZStack {
            Image("buildingClimb")
            VStack {
                Image(systemName: "figure.climbing")
                    .foregroundColor(.accentColor)
                    .offset(y: verticalButton)
                
                Button() {
                    verticalButton -= 10
                    buttonPressed += 1
                    
                    if buttonPressed >= 10 {
                        showRiddle = true
                        
                    }
                } label: {
                    Text("Press to\n climb!")
                        .foregroundStyle(.white)
                        .padding()
                        .frame(width: 100, height: 100)
                        .background(Color.accentColor)
                        .clipShape(Circle())
                        .shadow(radius: 10)
                }
                .sheet(isPresented: $showRiddle) {
                    SheetView(enteredWord: $enteredWord, isSheetPresented: $isSheetPresented, correctWord: correctWord)
                        }
                
                // Disable drag down feature.
            }
        }
    }
}

#Preview {
    Chapter3View()
}
