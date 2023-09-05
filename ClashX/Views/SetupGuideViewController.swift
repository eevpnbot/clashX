//
//  SetupGuideViewController.swift
//  ClashX
//
//  Created by miniLV on 2023-09-04.
//  Copyright © 2023 ClashX. All rights reserved.
//

import Cocoa

class SetupGuideViewController: NSViewController {
    @IBOutlet var tabView: NSTabView!

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    override func viewWillAppear() {
        super.viewWillAppear()
        view.window?.styleMask.insert(.closable)
        view.window?.styleMask.insert(.resizable)
        view.window?.styleMask.insert(.miniaturizable)
    }

    init() {
        super.init(nibName: "SetupGuideViewController", bundle: nil)
    }

    @available(*, unavailable)
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
