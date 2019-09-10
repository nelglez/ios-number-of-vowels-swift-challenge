import UIKit

func numberOfVowels(in string: String, isYAVowel: Bool = false) -> Int {
    
    // check to see if the string is empty
    guard !string.isEmpty else { return 0 }
    
    let vowels: [Character] = isYAVowel ? ["a", "e", "i", "o", "u", "y"] : ["a", "e", "i", "o", "u"]
    var count = 0
    
    // Loop through and check if its a vowel.
    for character in string.lowercased() {
        if vowels.contains(character) {
            count += 1
        }
    }

    return count
}

numberOfVowels(in: "Polly wants a cracker!", isYAVowel: true)
