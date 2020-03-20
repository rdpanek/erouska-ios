// This file contains the fastlane.tools configuration
// You can find the documentation at https://docs.fastlane.tools
//
// For a list of all available actions, check out
//
//     https://docs.fastlane.tools/actions
//

import Foundation

class Fastfile: LaneFile {
	func betaLane() {
	desc("Push a new beta build to TestFlight")
		incrementBuildNumber(xcodeproj: "BT-Tracking.xcodeproj")
		buildApp(workspace: "BT-Tracking.xcworkspace", scheme: "BT-Tracking")
		uploadToTestflight(username: "kment.robin@gmail.com")
	}
    
    func testLane() {
        desc("Start testing the app")
//        unlockKeychain(path: "build.keychain", password: "alpine")
        environmentVariable(set: enviromentAttributes)
        cocoapods()
        buildApp(workspace: xcworkspace, scheme: "BT-Tracking")
        scan()
        rocket()
    }
    
    func betaReleaseLane() {
        desc("Push a new beta build to TestFlight")
        rocket()
//        TODO: Remove the comment when im in github actions
//        unlockKeychain(path: "build.keychain", password: "alpine")

        environmentVariable(set: enviromentAttributes)
//        TODO: Uncomment me when i have conenction to the AppStoreConnect
//        incrementBuildNumber(buildNumber: latestTestflightBuildNumber(appIdentifier: appIdentifier, username: appleID) + 1, xcodeproj: xcworkspace)
        incrementBuildNumber()
        puts(message: "🚗🚗🚗 Prepare for upload ✈️✈️✈️")
        cocoapods()
        buildApp(workspace: "WeddMate.xcworkspace", scheme: "BT-Tracking")
        uploadToTestflight(username: appleID)
        rocket()
    }
}
