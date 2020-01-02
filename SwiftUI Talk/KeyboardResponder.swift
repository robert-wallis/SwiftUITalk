//
//  KeyboardResponder.swift
//

import SwiftUI

/// Provideds .currentHeight to help make responsive views when the keyboard is visible on the screen.
class KeyboardResponder: ObservableObject {
    private var notificationCenter: NotificationCenter
    @Published private(set) var currentHeight: CGFloat = 0

    init(center: NotificationCenter = .default) {
        notificationCenter = center
        notificationCenter
            .addObserver(self,
                         selector: #selector(keyBoardWillShow(notification:)),
                         name: UIResponder.keyboardWillShowNotification,
                         object: nil)
        notificationCenter
            .addObserver(self,
                         selector: #selector(keyBoardWillHide(notification:)),
                         name: UIResponder.keyboardWillHideNotification,
                         object: nil)
    }

    deinit {
        notificationCenter.removeObserver(self)
    }

    @objc func keyBoardWillShow(notification: Notification) {
        if let keyboardSize =
            (notification.userInfo?[UIResponder.keyboardFrameEndUserInfoKey]
                as? NSValue)?.cgRectValue {

            let bottomOffset = UIApplication.shared.windows.first?.safeAreaInsets.bottom ?? 0
            currentHeight = keyboardSize.height - bottomOffset
        }
    }

    @objc func keyBoardWillHide(notification: Notification) {
        currentHeight = 0
    }
}
