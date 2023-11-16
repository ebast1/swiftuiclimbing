//
//  SwiftUIView.swift
//  SwiftUIClimbingStoryTemplate
//
//  Created by Ethan Bast on 11/15/23.
//
//

import SwiftUI

struct IntroductionView: View {
    
    @State private var isTapped : Bool = false
    @Binding var childName: String
    
    var body: some View {
        NavigationStack {
            ZStack {
                Color.lightGray.ignoresSafeArea()
                VStack {
                    Spacer()
                    Image("climbLogo")
                    Text("""
Once upon a time there was our main character named \(childName). Everyday \(childName) wakes up and ponders about what to spend their day doing. \(childName) goes to work every weekday and leaves work around 4, but \(childName) has nothing to do for the rest of the day and ends up staying inside all night long. After years of evenings filled with dread and boredom \(childName) decides its time for things to change. "It's time to look for a hobby" says \(childName).
""")
                    .multilineTextAlignment(.center)
                    .padding([.top, .bottom])
                    .padding([.leading,.trailing], 10)
                    Text("Congrats on finishing Chapter 1! Are you ready to move onto Chapter 2? ")
                        .font(.title2)
                        .bold()
                        .multilineTextAlignment(.center)
                        .padding([.leading,.trailing])
                    
                    NavigationLink("Continue", destination: Chapter2View(), isActive: $isTapped)
                        .frame(width: 245, height: 62)
                        .background(Color.accentColor)
                        .clipShape(RoundedRectangle(cornerRadius: 14))
                        .foregroundStyle(.white)
                        .bold()
                        .font(.title2)
                        .padding([.top,.bottom])
                        .onTapGesture {
                            isTapped = true
                        }
                    
                    Spacer()
                    
                    
                }
            }
        }
        .navigationBarBackButtonHidden(true)
    }
}
#Preview {
    IntroductionView(childName: .constant(""))
}
