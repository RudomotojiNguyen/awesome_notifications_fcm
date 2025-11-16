//
//  DartAwesomeServiceExtension.swift
//  awesome_notifications
//
//  Created by CardaDev on 29/08/22.
//

#if canImport(awesome_notifications)
import Foundation
import IosAwnFcmCore
import awesome_notifications

@available(iOS 15.6, *)
open class DartAwesomeServiceExtension: AwesomeServiceExtension {
    
    open override func didReceive(
        _ request: UNNotificationRequest,
        withContentHandler contentHandler: @escaping (UNNotificationContent) -> Void
    ){
        DartAwesomeNotificationsExtension.initialize()
        SwiftAwesomeNotificationsFcmPlugin.loadClassReferences()
        super.didReceive(request, withContentHandler: contentHandler)
    }
}
#endif
