//
//  TabBarController.swift
//  BoleService
//
//  Created by wudan on 2020/7/22.
//  Copyright © 2020 wudan. All rights reserved.
//

import UIKit

class TabBarController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        addChild(ToolViewController(), "工具", "tab_tool_normal", "tab_tool_selected")
        addChild(NewsViewController(), "新闻", "tab_news_normal", "tab_news_selected")
        addChild(SettingViewController(), "设置", "tab_setting_normal", "tab_setting_selected")
    }
}

private extension TabBarController {
    func addChild(_ childController: UIViewController, _ name: String, _ normalImageName: String, _ selectedImageName: String) {
        let navigationController = NavigationController(rootViewController: childController)
        navigationController.tabBarItem.title = name
        navigationController.tabBarItem.image = UIImage(named: normalImageName)
        navigationController.tabBarItem.selectedImage = UIImage(named: selectedImageName)
        addChild(navigationController)
    }
}
