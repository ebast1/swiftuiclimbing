import SwiftUI

struct Chapter3View: View {
    
    @State private var verticalButton: CGFloat = 0.0
    @State private var buttonPressed = 0
    @State private var showRiddle = false
    
    @State private var isSheetPresented = false
    @State private var enteredWord = ""
       
    let correctWord = "Password"
    
    var body: some View {
        NavigationStack {
            ZStack {
                Image("buildingClimb")
                VStack {
        // Our climber uses the same accent color and is moved vertically by a button
                    Image(systemName: "figure.climbing")
                        .foregroundColor(.accentColor)
                        .offset(y: verticalButton)
                        .font(.system(size: 55))
                        .position(x: 140, y: 650)
                    
                }
                VStack {
                    Button() {
                        verticalButton -= 15
                        buttonPressed += 1
        // Once user has clicked our button 10 times our sheet will pop up
                        if buttonPressed >= 10 {
                            showRiddle = true
                        }
                    } label: {
        // Modifiers are a bit messy but here we use shadow and clip shape to add some realism to our button
                        Text("PRESS TO CLIMB")
                            .foregroundStyle(.white)
                            .font(.system(size: 25))
                            .bold()
                            .frame(width: 100, height: 100)
                            .padding()
                            .background(Color.accentColor)
                            .clipShape(Circle())
                            .shadow(radius: 15)
        // Button placement is based on this posistion modifier since it is separate from our figure.climbing image
                            .position(x: 220, y: 725)
                    }
                    .sheet(isPresented: $showRiddle) {
                        SheetView(enteredWord: $enteredWord, isSheetPresented: $isSheetPresented, correctWord: correctWord)
                    }
        // Future implementations
                    
        // Disable drag down feature can be implemented in later updates to ensure user answers the riddle. This will be in our SheetView()
        
        // You can currently click almost anywhere on the screen to press our button. This should be changed to only making the button itself interactive.
                    
        // Needs to be able to work in Dark Mode. Could make it a night time climb when in dark mode or based off of the users time.
                }
            }
            .navigationTitle("Get to the top!")
        }
    }
}

#Preview {
    Chapter3View()
}

