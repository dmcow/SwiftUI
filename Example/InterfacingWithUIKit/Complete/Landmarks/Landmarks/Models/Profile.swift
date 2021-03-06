/*
See LICENSE folder for this sampleโs licensing information.

Abstract:
An object that models a user profile.
*/
import Foundation

struct Profile {
    var username: String
    var prefersNotifications: Bool
    var seasonalPhoto: Season
    var goalDate: Date
    
    static let `default` = Self(username: "g_kumar", prefersNotifications: true, seasonalPhoto: .winter)
    
    init(username: String, prefersNotifications: Bool = true, seasonalPhoto: Season = .winter) {
        self.username = username
        self.prefersNotifications = prefersNotifications
        self.seasonalPhoto = seasonalPhoto
        self.goalDate = Date()
    }
    
    enum Season: String, CaseIterable {
        case spring = "๐ท"
        case summer = "๐"
        case autumn = "๐"
        case winter = "โ๏ธ"
    }
}
