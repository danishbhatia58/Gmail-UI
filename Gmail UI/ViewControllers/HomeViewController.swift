//
//  ViewController.swift
//  Gmail UI
//
//  Created by Danish on 08/01/21.
//  Copyright © 2021 Danish. All rights reserved.
//

import UIKit

import BmoViewPager

import SideMenu


class HomeViewController: UIViewController, BmoViewPagerDataSource, BmoViewPagerDelegate {

    @IBOutlet weak var viewPagerNavigation: BmoViewPagerNavigationBar!
    
    @IBOutlet weak var viewPager: BmoViewPager!
    
    override func viewDidLoad() {
        
        super.viewDidLoad()
        
        self.navigationItem.title = StringConstants.homeTitle
        
        setNavigationBarIcons()
        
        viewPager.dataSource = self
        
        viewPager.delegate = self
        
        viewPagerNavigation.backgroundColor = #colorLiteral(red: 0.9372549057, green: 0.3490196168, blue: 0.1921568662, alpha: 1)
        
        viewPagerNavigation.viewPager = viewPager
    }

    
    //MARK:- ACTIONS
    
    @objc func openSideMenu(){

        let pvc = Storyboard.getSideMenuViewController()
        
        pvc.modalPresentationStyle = UIModalPresentationStyle.overCurrentContext
        
        self.present(pvc, animated: true, completion: nil)
        
       /* let menuLeftNavigationController = UISideMenuNavigationController(rootViewController: SideMenuViewController())
        
        SideMenuManager.default.menuAnimationBackgroundColor = #colorLiteral(red: 0.4589041096, green: 0.8424657534, blue: 0.8493150685, alpha: 1)
        
        
        SideMenuManager.default.menuLeftNavigationController = menuLeftNavigationController
        
        SideMenuManager.default.menuAddPanGestureToPresent(toView: self.navigationController!.navigationBar)
        
        
        SideMenuManager.default.menuAddScreenEdgePanGesturesToPresent(toView: self.navigationController!.view)
        
                
        // (Optional) Prevent status bar area from turning black when menu appears:
        
        SideMenuManager.default.menuFadeStatusBar = false
        
        present(SideMenuManager.default.menuLeftNavigationController!, animated: true, completion: nil)
 */
    }
    
    
    
    //MARK:- OTHER METHODS
    
    func setNavigationBarIcons(){
        
        let buttonLeft1 = UIBarButtonItem(image: UIImage(named: "side_menu"), style: .plain, target: self, action: #selector(openSideMenu))
        
        
        let buttonRight1 = UIBarButtonItem(image: UIImage(named: "cart"), style: .plain, target: self, action: #selector(openSideMenu))
        
        
        buttonLeft1.tintColor = #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)
        
        buttonRight1.tintColor = #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)
        
        
        self.navigationItem.leftBarButtonItems  = [ buttonLeft1 ]
        
        self.navigationItem.rightBarButtonItems = [ buttonRight1 ]
    }
    
    
    func bmoViewPagerDataSourceNumberOfPage(in viewPager: BmoViewPager) -> Int {
        
        return 3
    }
    
    
    func bmoViewPagerDataSourceNaviagtionBarItemTitle(_ viewPager: BmoViewPager, navigationBar: BmoViewPagerNavigationBar, forPageListAt page: Int) -> String? {
        
        switch page {
            
        case 0:
            
            return StringConstants.homePageOneTitle
            
        case 1:
            
            return StringConstants.homePageTwoTitle
            
        case 2:
            
            return StringConstants.homePageThreeTitle
            
        default:
            
            break
        }
        
        return ""
    }
    
    
    func bmoViewPagerDataSource(_ viewPager: BmoViewPager, viewControllerForPageAt page: Int) -> UIViewController{
        
        switch page {
            
        case 0:
            
            return Storyboard.getHomePageOneViewController() as! HomePageOneViewController
            
        default:
            
            break
        }
        
        return UIViewController()
    }
    
    
    func bmoViewPagerDataSourceNaviagtionBarItemHighlightedAttributed(_ viewPager: BmoViewPager, navigationBar: BmoViewPagerNavigationBar, forPageListAt page: Int) -> [NSAttributedString.Key : Any]? {
        
        return [
            NSAttributedString.Key.foregroundColor : UIColor.white
        ]
    }
    
    
    func bmoViewPagerDataSourceNaviagtionBarItemSize(_ viewPager: BmoViewPager, navigationBar: BmoViewPagerNavigationBar, forPageListAt page: Int) -> CGSize {
        
        return CGSize(width: navigationBar.bounds.width / 3, height: navigationBar.bounds.height)
    }
    
    
    func bmoViewPagerDataSourceNaviagtionBarItemNormalAttributed(_ viewPager: BmoViewPager, navigationBar: BmoViewPagerNavigationBar, forPageListAt page: Int) -> [NSAttributedString.Key : Any]? {
        
        return [
            NSAttributedString.Key.strokeWidth     : 3.5,
            
            NSAttributedString.Key.strokeColor     : UIColor.white,
            
            NSAttributedString.Key.foregroundColor : UIColor.groupTableViewBackground
        ]
    }
    
}

