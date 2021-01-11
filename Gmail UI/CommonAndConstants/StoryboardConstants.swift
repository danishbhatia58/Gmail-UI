//
//  StoryboardConstants.swift
//  Gmail UI
//
//  Created by Danish on 08/01/21.
//  Copyright © 2021 Danish. All rights reserved.
//
import Foundation

import UIKit


struct Storyboard{
    
    struct Name{
        
        static let main = "Main"
    }
    
    struct identifiers{
        
        // VC
        
        static let homeVC = "homeVC"
        
        static let homePageOneVC = "homePageOneVC"
        
        static let sideMenuVC = "sideMenuVC"
        
        
        // Cells
        
        static let homeTableViewCell = "HomeTableViewCell"
    
    }
    
    
    static func getViewController(identifier: String, storyboard: String) -> UIViewController {
        
        let storyBoard = UIStoryboard(name: storyboard, bundle: nil)
        
        let viewController = storyBoard.instantiateViewController(withIdentifier: identifier)
        
        return viewController
    }
    
    
    static func getHomeViewController() -> UIViewController{
        
        return getViewController(identifier: Storyboard.identifiers.homeVC , storyboard: Storyboard.Name.main)
    }
    
    
    static func getHomePageOneViewController() -> UIViewController{
        
        return getViewController(identifier: Storyboard.identifiers.homePageOneVC , storyboard: Storyboard.Name.main)
    }
    
    
    static func getSideMenuViewController() -> UIViewController{
        
        return getViewController(identifier: Storyboard.identifiers.sideMenuVC , storyboard: Storyboard.Name.main)
    }
    
}
