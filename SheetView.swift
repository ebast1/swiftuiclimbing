//
//  SheetView.swift
//  SwiftUIClimbingStoryTemplate
//
//  Created by Henrik Jones on 11/16/23.
//

import SwiftUI

struct SheetView: View {
    @Binding var enteredWord: String
    @Binding var isSheetPresented: Bool
    
    let correctWord: String
    
    var body: some View {
        NavigationView {
                    Form {
                        Section {
                            Text("Your journey comes to an immediate halt by a troll! The troll demands that you leave his territory or be met with his violence. However, the troll doesn't get many visitors and has been quite lonely. He grants you passage as long as you can answer his riddle.")
                            Text("I have keys but open no locks, I have space but no room, and you can enter, but you can't go inside.\nWhat am I?")
                        }
                        Section {
                            TextField("Enter Here", text: $enteredWord)
                        }

                        Section {
                            Button("Dismiss") {
                                if enteredWord == correctWord {
                                    isSheetPresented = false
                                }
                            }
                        }
                    }
                    .navigationTitle("OH NO! A TROLL")
                    .interactiveDismissDisabled()
                }
            }
    }

//#Preview {
//    SheetView(enteredWord: <#T##Binding<String>#>, isSheetPresented: <#T##Binding<Bool>#>, correctWord: <#T##String#>)
//}


