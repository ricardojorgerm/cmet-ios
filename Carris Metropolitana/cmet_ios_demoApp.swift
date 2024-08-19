//
//  cmet_ios_demoApp.swift
//  Carris Metropolitana
//
//  Created by João Pereira on 13/03/2024.
//

import SwiftUI

@main
struct cmet_ios_demoApp: App {
    @UIApplicationDelegateAdaptor(AppDelegate.self) var delegate
    
    @StateObject private var alertsManager = AlertsManager()
    @StateObject private var vehiclesManager = VehiclesManager()
    @StateObject private var linesManager = LinesManager()
    @StateObject private var stopsManager = StopsManager()
    
    @StateObject private var favoritesManager = FavoritesManager()
    
    @StateObject private var locationManager = LocationManager()
    
    var body: some Scene {
        let _ = locationManager.requestAuthorization()
        WindowGroup {
            ContentView()
                .environmentObject(alertsManager)
                .environmentObject(vehiclesManager)
                .environmentObject(locationManager)
                .environmentObject(linesManager)
                .environmentObject(stopsManager)
                .environmentObject(favoritesManager)
                .onAppear {
                    UINavigationBar.appearance().prefersLargeTitles = true
                }
//            ETAPlayground()
//            ErrorBannerDemo()
//            TestPreview()
//            OtherTestPreview()
//            NewsView()
        }
    }
}
