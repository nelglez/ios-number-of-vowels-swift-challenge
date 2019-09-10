import UIKit

func numberOfVowels(in string: String, isYAVowel: Bool = false) -> Int {
    
    // No need to run any code if the string is empty
    guard !string.isEmpty else { return 0 }
    
    // Set up the variables
    let vowels: [Character] = isYAVowel ? ["a", "e", "i", "o", "u", "y"] : ["a", "e", "i", "o", "u"]
    var count = 0
    
    // Loop through each character and check if it is a vowel.
    for character in string.lowercased() {
        if vowels.contains(character) {
            count += 1
        }
    }
    
    // Return the count
    return count
}

numberOfVowels(in: "Polly wants a cracker!", isYAVowel: true)
