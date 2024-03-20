//
//  LocationManager.swift
//  PreparationForToday
//
//  Created by 전준수 on 3/8/24.
//

import CoreLocation

class LocationViewModel: NSObject, ObservableObject {
    private let manager = CLLocationManager()
    @Published var userLocation: CLLocation?
    static let shared = LocationViewModel()
    
    var latitude: Double {
        manager.location?.coordinate.latitude ?? 37.596970
    }
    
    var longitude: Double {
        manager.location?.coordinate.longitude ?? -127.036119
    }
    
    
    override init() {
        super.init()
        manager.delegate = self
        manager.desiredAccuracy = kCLLocationAccuracyBest
        manager.startUpdatingLocation()
    }
    
    func requestLocation() {
        manager.requestWhenInUseAuthorization()
    }
    
}

extension LocationViewModel: CLLocationManagerDelegate {
    
    
    func locationManager(_ manager: CLLocationManager, didChangeAuthorization status: CLAuthorizationStatus) {
        
        switch status {
            
        case .notDetermined:
            print("DEBUG: Not determined")
        case .restricted:
            print("DEBUG: Not Restricted")
        case .denied:
            print("DEBUG: Not Denied")
        case . authorizedAlways:
            print("DEBUG: Not AuthorizedAlways")
        case .authorizedWhenInUse:
            print("DEBUG: Not Auth when in use")
        @unknown default:
            break
        }
    }
    
    func locationManager(_ manager: CLLocationManager, didUpdateLocations locations: [CLLocation]) {
        guard let location = locations.last else { return }
        self.userLocation = location
    }
    
}
