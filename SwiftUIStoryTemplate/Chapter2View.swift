import SwiftUI

struct Chapter2View: View {
    
    enum ClimbingGrade: String {
        case beginner = "Beginner"
        case intermediate = "Intermediate"
        case advanced = "Advanced"
        case expert = "Expert"
    }
    
    struct ClimberProgress {
        var climbingGrade: ClimbingGrade
        var climbingExperience: String
    }
    
    @State private var name: String = "John"
    @State private var storyText: String = ""
    @State private var progress = ClimberProgress(climbingGrade: .beginner, climbingExperience: "none")
    
    let climbingGear = [
        "Climbing Rope",
        "Harness",
        "Carabiners",
        "Climbing Shoes",
        "Chalk Bag",
        "Helmet",
        "Quickdraws",
        "Belay Device",
        "Crash Pad",
        "Gloves"
    ]
    
    @State private var showEventButton = true
    
    private func simulateRandomEvent() {
        showEventButton = false
        
        let randomEvent = Int.random(in: 1...4)
        
        switch randomEvent {
        case 1:
            simulateTrainingEvent()
        case 2:
            simulateUnexpectedConflict()
        case 3:
            simulateClimbingChallenge()
        case 4:
            simulateGearUpgrade()
        default:
            break
        }
    }
    
    private func simulateTrainingEvent() {
        storyText += """
            3. Training Event: Today's training involves mastering a new climbing technique. You face a challenging route with intricate moves.
        """
        
        let trainingOptions = ["A. Focus on precise footwork.", "B. Use upper body strength for a dynamic move.", "C. Seek advice from experienced climbers."]
        
        let chosenOption = trainingOptions.randomElement() ?? ""
        
        storyText += """
            - You choose option \(chosenOption)
        """
        
        switch chosenOption {
        case "A. Focus on precise footwork.":
            storyText += """
                - Your attention to detail pays off. You successfully navigate the route with precise footwork, gaining admiration from fellow climbers.
                """
        case "B. Use upper body strength for a dynamic move.":
            storyText += """
                - Your strength impresses others, but it comes with a cost of increased fatigue. You complete the route but learn the importance of balance.
                """
        case "C. Seek advice from experienced climbers.":
            storyText += """
                - Wise choice! Seeking advice from experienced climbers helps you understand the optimal technique. You conquer the route with newfound knowledge.
                """
        default:
            break
        }
    }
    
    private func simulateUnexpectedConflict() {
        storyText += """
            3. Unexpected Conflict: During a training session, you face an unexpected conflict. It's a tough situation, and you must make a quick decision.
        """
        
        let conflictOptions = ["A. Assess the situation and devise a safe plan.", "B. Call for help from fellow climbers.", "C. Retreat to a safe location."]
        
        let chosenOption = conflictOptions.randomElement() ?? ""
        
        storyText += """
            - You choose option \(chosenOption)
        """
        
        switch chosenOption {
        case "A. Assess the situation and devise a safe plan.":
            storyText += """
                - Your quick thinking and assessment lead to a safe resolution. You learn from the experience and continue your training.
                """
        case "B. Call for help from fellow climbers.":
            storyText += """
                - Fellow climbers come to your aid, and you resolve the conflict together. Teamwork and camaraderie shine during this challenging moment.
                """
        case "C. Retreat to a safe location.":
            storyText += """
                - You make the difficult decision to retreat, prioritizing safety. It's a humbling experience, but you're determined to come back stronger.
                """
        default:
            break
        }
    }
    
    private func simulateClimbingChallenge() {
        storyText += """
            3. Climbing Challenge: Today's challenge is a high-altitude climb with unpredictable weather conditions. It's a test of endurance and decision-making.
        """
        
        let challengeOptions = ["A. Proceed cautiously, monitoring weather changes.", "B. Take a more challenging route for an adrenaline rush.", "C. Choose a safer but longer route."]
        
        let chosenOption = challengeOptions.randomElement() ?? ""
        
        storyText += """
            - You choose option \(chosenOption)
        """
        
        switch chosenOption {
        case "A. Proceed cautiously, monitoring weather changes.":
            storyText += """
                - Your cautious approach pays off. You successfully navigate the challenging climb, adapting to changing weather conditions.
                """
        case "B. Take a more challenging route for an adrenaline rush.":
            storyText += """
                - The adrenaline rush is exhilarating, but the weather takes an unexpected turn. You face difficulties but eventually overcome them, gaining valuable experience.
                """
        case "C. Choose a safer but longer route.":
            storyText += """
                - Safety first! You take the longer but safer route, showcasing your commitment to responsible climbing. The journey may be longer, but the experience is rewarding.
                """
        default:
            break
        }
    }
    
    private func simulateGearUpgrade() {
        storyText += """
            3. Gear Upgrade: You come across an opportunity to upgrade your climbing gear. A fellow climber offers you a reliable piece of equipment.
        """
        
        let upgradeOptions = ["A. Accept the gear with gratitude.", "B. Politely decline, preferring your current gear.", "C. Discuss and negotiate for a different piece of gear."]
        
        let chosenOption = upgradeOptions.randomElement() ?? ""
        
        storyText += """
            - You choose option \(chosenOption)
        """
        
        switch chosenOption {
        case "A. Accept the gear with gratitude.":
            storyText += """
                - The upgraded gear enhances your climbing experience. Gratitude and camaraderie grow among climbers.
                """
        case "B. Politely decline, preferring your current gear.":
            storyText += """
                - Your loyalty to your gear is respected. While declining, you share insights into why your current gear suits your style.
                """
        case "C. Discuss and negotiate for a different piece of gear.":
            storyText += """
                - Negotiation skills come in handy. You end up with a different but valuable piece of gear, showcasing your resourcefulness.
                """
        default:
            break
        }
    }
    
    private func continueStory() {
        showEventButton = true
        
        storyText += """
            4. Building Expertise: Your climbing skills continue to improve, and you gain recognition among fellow climbers. You now have the option to specialize in a specific aspect of climbing.
        """
        
        let specializationOptions = ["A. Master the art of free solo climbing.", "B. Focus on technical rope climbing.", "C. Explore the world of bouldering."]
        
        let chosenOption = specializationOptions.randomElement() ?? ""
        
        storyText += """
            - You choose option \(chosenOption)
        """
        
        switch chosenOption {
        case "A. Master the art of free solo climbing.":
            storyText += """
                - Your courage and skill in free solo climbing make you a respected figure among climbers. The thrill of climbing without ropes becomes your signature.
                """
            progress.climbingGrade = .advanced
        case "B. Focus on technical rope climbing.":
            storyText += """
                - Technical expertise in rope climbing sets you apart. You become the go-to person for intricate climbing challenges, earning admiration from the climbing community.
                """
            progress.climbingGrade = .intermediate
        case "C. Explore the world of bouldering.":
            storyText += """
                - Bouldering becomes your passion. The combination of strength and strategy in short, powerful climbs makes you a bouldering expert.
                """
            progress.climbingGrade = .beginner
        default:
            break
        }
        
        storyText += """
            5. Climbing Society: Your expertise attracts the attention of a prestigious climbing society. They invite you to join, opening doors to new climbing opportunities and challenges.
            
            6. Mentorship: Within the society, you find a mentor who guides you to greater heights. Their wisdom and experience become invaluable as you face advanced climbing challenges.
            
            *End of Chapter 2*
        """
    }
    
    var body: some View {
        VStack {
            ScrollView {
                
                Image("GearStore") // Add this line to display the image
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .padding() // Adjust padding as needed

                Text(storyText)
                    .font(.headline)
                    .foregroundColor(.black)
                    .padding()
                Image("Training") // Add this line to display the image
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .padding() // Adjust padding as needed

            }
            
            if showEventButton {
                Button("Simulate Random Event") {
                    simulateRandomEvent()
                }
                .foregroundColor(.white)
                .padding()
                .background(Color.blue)
                .cornerRadius(8)
                .padding(.bottom)
            }
            
            Button("Continue Story") {
                continueStory()
            }
            .foregroundColor(.white)
            .padding()
            .background(Color.green)
            .cornerRadius(8)
        }
        .onAppear {
            storyText = """
                Chapter 2: Preparing for a New Adventure
                
                After deciding it's time for a change, I, \(name), begin researching my new hobby - climbing buildings. Excitement builds as I think about the thrill of scaling skyscrapers and exploring new heights.
                
                To embark on this adventure, I start by gathering the necessary climbing gear. Here's a list of materials I'll need:
                """
            
            for gear in climbingGear {
                storyText += "\(gear)\n"
            }
            
            storyText += """
                You realize that investing in high-quality gear is crucial for safety while climbing.
                
                You start shopping for these items, comparing prices, and reading reviews to ensure you get the best equipment.
                
                As the gear arrives, you begin practicing basic climbing techniques and learning about safety procedures. You watch videos, read books, and consider joining a local climbing club to gain experience.
                
                Your climbing experience begins with a grade of \(progress.climbingGrade.rawValue) and \(progress.climbingExperience) climbing experience. Little by little, you feel more prepared for your new adventure, both physically and mentally.
                
                It's becoming evident that training will be an important part of this journey. Climbers need proper training to excel and stay safe. This chapter marks the beginning of a training arc, and you're excited to see where it will lead.
                
                The training arc begins with a commitment to becoming a skilled climber. It's not just about scaling buildings but mastering the art of climbing. You, \(name), join a local climbing club and meet a diverse group of climbers, each with their own stories and experiences.
                
                You'll share some key moments from the training arc:
                
                1. Meeting Fellow Climbers: You get to know your fellow climbers, and you form a supportive community. You share tips, stories, and encouragement.
                
                2. Facing Challenges: Climbing isn't always smooth sailing. You encounter challenges, both physical and mental. There are moments of frustration and self-doubt, but you push through.
                """
        }
    }
}

#if DEBUG
import SwiftUI
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
#endif




#Preview {
    Chapter2View()
}

