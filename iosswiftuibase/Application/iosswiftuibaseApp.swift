//
//  iosswiftuibaseApp.swift
//  iosswiftuibase

import SwiftUI

@main
struct iosswiftuibaseApp: App {
    @UIApplicationDelegateAdaptor(AppDelegate.self) var appDelegate

    var body: some Scene {
        WindowGroup {
            IPhone1313ProOneView()
        }
    }
}
