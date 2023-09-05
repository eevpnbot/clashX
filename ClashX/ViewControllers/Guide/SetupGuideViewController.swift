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
    @IBOutlet var bgView: NSView!
    @IBOutlet var continueButton: NSButton!

    init() {
        super.init(nibName: "SetupGuideViewController", bundle: nil)
    }

    @available(*, unavailable)
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        tabView.drawsBackground = false
        tabView.tabPosition = .none
        tabView.tabViewBorderType = .none
        bgView.wantsLayer = true
        bgView.layer?.backgroundColor = NSColor.white.cgColor
    }

    override func viewWillAppear() {
        super.viewWillAppear()
        view.window?.titleVisibility = .hidden
        view.window?.titlebarAppearsTransparent = true
        view.window?.styleMask.insert(.fullSizeContentView)
    }

    @IBAction func actionSwitchTab(_ sender: NSSegmentedControl) {
        tabView.selectTabViewItem(at: sender.selectedSegment)
    }

    @IBAction func actionContinue(_ sender: Any) {
        view.window?.close()
    }
}

class DragableView: NSView {
    override func acceptsFirstMouse(for event: NSEvent?) -> Bool {
        return true
    }

    override func mouseDown(with event: NSEvent) {
        super.mouseDown(with: event)
        window?.performDrag(with: event)
    }
}
