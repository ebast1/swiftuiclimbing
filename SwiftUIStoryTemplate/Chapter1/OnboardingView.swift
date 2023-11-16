//
//  OnboardingView.swift
//  SwiftUIClimbingStoryTemplate
//
//  Created by Ethan Bast on 11/14/23.
//

import SwiftUI

struct OnboardingView: View {
    
    @Binding var name : String
    

    var text: String
    var image: String
    var title: String
    
    var body: some View {
       
        VStack {
            Spacer()
            
            Image(image)
            
            Text(text)
                .font(.body)
                .multilineTextAlignment(.center)
                .padding([.top, .bottom])
            Text(title)
                .font(.title2)
                .multilineTextAlignment(.center)
                .bold()
            
            
            TextField("Enter Name Here", text: $name)
                .frame(width: 245, height: 62)
                .padding([.leading, .trailing], 75)
                .padding([.top, .bottom])
                .multilineTextAlignment(.center)
                                    
            Spacer()
        }
        .textFieldStyle(TextBorder())
    }
    

//    init(text: String, image: String, title: String, name : String) {
//        self.text = text
//        self.image = image
//        self.title = title
//        self.name = name
//    }
//    
    
    
}

struct TextBorder: TextFieldStyle {
    func _body(configuration: TextField<Self._Label>) -> some View {
        configuration
            .padding()
            .overlay(
                RoundedRectangle(cornerRadius: 14)
                    .stroke(Color.accentColor, lineWidth: 2)
            )
    }
}






#Preview {
    OnboardingView(name: .constant(""), text: "Welcome To “To The Top” the interactive story about climbing buildings. Let’s start things off by learning the name of the main character of this story.", image: "climbLogo", title: "Who Is The Main Character of this Story?")
}
