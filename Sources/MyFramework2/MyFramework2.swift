import Foundation

public struct MyFramework2 {
    private static var isAPIKeyValid = false
    
    private static let apiKeys = ["private_key_123", "private_key_456"]
    
    private static func verifyAPIKey() -> Bool {
        if !isAPIKeyValid {
            print("Please provide a valid API key")
        }
        return isAPIKeyValid
    } 
    
    public static func configure(apiKey: String) {
        isAPIKeyValid = apiKeys.contains(apiKey)
    }
    
    public static func logTime() {
        guard verifyAPIKey() else { return }
        print("The time is \(Date())")
    }
}
