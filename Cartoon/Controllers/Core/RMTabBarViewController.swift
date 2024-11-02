//
//  ViewController.swift
//  Cartoon
//
//  Created by Muhammad Zubair on 02/11/2024.
//

import UIKit

class RMTabBarViewController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad();
        setUpTabs()
    }
    private func setUpTabs(){
        let characterVC = RMCharacterViewController();
        let episodeVC = RMEpisodeViewController();
        let locationVC = RMLocationViewController();
        let settingVC = RMSettingViewController();
        
        characterVC.navigationItem.largeTitleDisplayMode = .automatic
        episodeVC.navigationItem.largeTitleDisplayMode = .automatic
        locationVC.navigationItem.largeTitleDisplayMode = .automatic
        settingVC.navigationItem.largeTitleDisplayMode = .automatic
   



        //defining navigations
        let characterNav = UINavigationController(rootViewController: characterVC);
        let locationNav = UINavigationController(rootViewController: locationVC);
        let episodeNav = UINavigationController(rootViewController: episodeVC);
        let settingNav = UINavigationController(rootViewController: settingVC);
        //setting tab bars
        characterNav.tabBarItem = UITabBarItem(title: "Characters", image: UIImage(systemName: "person"), tag: 1)
        episodeNav.tabBarItem = UITabBarItem(title: "Episodes", image: UIImage(systemName: "tv"), tag: 2)
        locationNav.tabBarItem = UITabBarItem(title: "Locations", image: UIImage(systemName: "globe"), tag: 3)
        settingNav.tabBarItem = UITabBarItem(title: "Settings", image:UIImage(systemName: "gear"), tag: 4)
        
        let navigationBars = [characterNav,locationNav,episodeNav,settingNav];
        for nav in navigationBars{
            nav.navigationBar.prefersLargeTitles = true
        }
        //setting screens to the tabbar
        setViewControllers(navigationBars, animated: true)
    }


}

