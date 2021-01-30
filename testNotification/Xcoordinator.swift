//
//  Xcoordinator.swift
//  testNotification
//
//  Created by resopt on 1/30/21.
//  Copyright © 2021 resopt. All rights reserved.
//
import XCoordinator
import Foundation

enum UserListRoute:Route {
    case home
    case login
    case tutorial
}

class ListUserCoodinator: NavigationCoordinator<UserListRoute> {
    
    init() {
        super.init(initialRoute: .tutorial)
    }
    
override func prepareTransition(for route: UserListRoute) -> NavigationTransition {
    switch route {
    case .home:
        let vc = R.storyboard.homeScreen.homeController()!
          vc.route = unownedRouter
        return .push(vc)
    case .login:
        let vc = R.storyboard.homeScreen.loginViewController()!
           vc.route = unownedRouter
        return .push(vc)
    case .tutorial:
        let vc = R.storyboard.main.viewController()!
        vc.route = unownedRouter
        return .push(vc)
    }
}
}
