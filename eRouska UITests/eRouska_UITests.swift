//
//  eRouska_UITests.swift
//  eRouska UITests
//
//  Created by RDPanek on 19/04/2020.
//  Copyright © 2020 Covid19CZ. All rights reserved.
//

import XCTest

class eRouska_UITests: XCTestCase {

    override func setUp() {
        // Put setup code here. This method is called before the invocation of each test method in the class.

        // In UI tests it is usually best to stop immediately when a failure occurs.
        continueAfterFailure = false

        // In UI tests it’s important to set the initial state - such as interface orientation - required for your tests before they run. The setUp method is a good place to do this.
    }

    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }
    
    func continueButton(app: XCUIApplication) {
        app.buttons["continueButton"].tap()
    }
    
    func handleSystemDialog(app: XCUIApplication, buttonName: String) {
        addUIInterruptionMonitor(withDescription: "System Dialog") {
          (alert) -> Bool in
          let okButton = alert.buttons[buttonName]
          if okButton.exists {
            okButton.tap()
          }
          return true
        }
        app.tap()
    }
    
    func testActivation() {
        
        let app = XCUIApplication()
        app.launch()
        
        handleSystemDialog(app: app, buttonName: "OK")
        continueButton(app: app)
        
        
        continueButton(app: app)
        handleSystemDialog(app: app, buttonName: "Povolit")
        
        // type tel phone
        app.textFields["phoneNumberInput"].tap()
        app.keys["7"].tap()
        app.keys["3"].tap()
        app.keys["1"].tap()
        
        let key3 = app.keys["0"]
        for _ in 1 ... 6 { key3.tap() }
        
        app.switches["confirmSwitch"].tap()
        
        // continue to SMS screen
        continueButton(app: app)
        
        // type sms code
        app.textFields["smsInput"].tap()
        let key4 = app.keys["0"]
        for _ in 1 ... 6 { key4.tap() }
        
        
        app.buttons["verifyButton"].tap()
        XCTAssert(app.staticTexts["eRouška je aktivní"].waitForExistence(timeout: 2), "eRouska isn't active")
        
    }
}
