//
//  LocationManager.swift
//  PreparationForToday
//
//  Created by 전준수 on 3/8/24.
//

import CoreLocation

class LocationViewModel: NSObject, ObservableObject, CLLocationManagerDelegate {
    
    private let locationManager = CLLocationManager()
    @Published var authorisationStatus: CLAuthorizationStatus?
    @Published var userLocation: CLLocation?
    static let shared = LocationViewModel()
    
    var latitude: Double {
        locationManager.location?.coordinate.latitude ?? 37.596970
    }
    
    var longitude: Double {
        locationManager.location?.coordinate.longitude ?? -127.036119
    }
    
    override init() {
        super.init()
        locationManager.delegate = self
        locationManager.desiredAccuracy = kCLLocationAccuracyBest
        locationManager.startUpdatingLocation()
    }
    
    func requestLocation() {
        locationManager.requestWhenInUseAuthorization()
    }
    
    func locationManagerDidChangeAuthorization(_ manager: CLLocationManager) {
        switch locationManager.authorizationStatus {
        case .notDetermined:
            // 위치 사용 권한 대기 상태
            authorisationStatus = .notDetermined
            print("DEBUG: Not determined")
            break
            
        case .restricted:
            // 위치 사용 권한 대기 상태
            authorisationStatus = .restricted
            print("DEBUG: Not Restricted")
            break
            
        case .denied:
            // 위치 사용 권한 거부 되어 있음
            authorisationStatus = .denied
            print("DEBUG: Not Denied")
            break
            
        case .authorizedAlways:
            // 위치 사용 권한 항상 허용 되어 있음
            authorisationStatus = .authorizedAlways
            print("DEBUG: Not AuthorizedAlways")
            
        case .authorizedWhenInUse:
            // 위치 사용 권한 앱 사용 시 허용 되어 있음
            authorisationStatus = .authorizedWhenInUse
            print("DEBUG: Not Auth when in use")
            break
            
        default:
            break
        }
    }
    
    func locationManager(_ manager: CLLocationManager, didFailWithError error: Error) {
        print("\(error.localizedDescription)")
    }
    
}
