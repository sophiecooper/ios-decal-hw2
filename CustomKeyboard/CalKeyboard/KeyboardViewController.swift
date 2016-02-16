//
//  KeyboardViewController.swift
//  CalKeyboard
//
//  Created by Gene Yoo on 9/15/15.
//  Copyright © 2015 iOS Decal. All rights reserved.
//

import UIKit

class KeyboardViewController: UIInputViewController {
    
    var keyboardView: UIView!

    @IBOutlet var nextKeyboardButton: UIButton!
    @IBOutlet var returnButton: UIButton!
    @IBOutlet var deleteButton: UIButton!
    @IBOutlet var milk: UIButton!
    @IBOutlet var eggs: UIButton!
    @IBOutlet var bread: UIButton!
    @IBOutlet var orange: UIButton!
    @IBOutlet var cheese: UIButton!
    @IBOutlet var cookie: UIButton!
    @IBOutlet var apple: UIButton!
    @IBOutlet var banana: UIButton!
    @IBOutlet var lettuce: UIButton!
    @IBOutlet var grapes: UIButton!
    @IBOutlet var juice: UIButton!
    @IBOutlet var carrot: UIButton!
    
    
    
    func returnPressed(){
        textDocumentProxy.insertText("\r\n")
    }
    
    func deletePressed(){
        textDocumentProxy.deleteBackward()
    }
    
    func milkPressed(){
        textDocumentProxy.insertText("milk ")
    }
    
    func eggsPressed(){
        textDocumentProxy.insertText("eggs ")
    }
    
    func breadPressed(){
        textDocumentProxy.insertText("bread ")
    }
    
    func orangePressed(){
        textDocumentProxy.insertText("orange ")
    }
    
    func cheesePressed(){
        textDocumentProxy.insertText("cheese ")
    }
    
    func cookiePressed(){
        textDocumentProxy.insertText("cookie ")
    }
    
    func applePressed(){
        textDocumentProxy.insertText("apple ")
    }
    
    func bananaPressed(){
        textDocumentProxy.insertText("banana ")
    }
    
    func lettucePressed(){
        textDocumentProxy.insertText("lettuce ")
    }
    
    func grapesPressed(){
        textDocumentProxy.insertText("grapes ")
    }
    
    func juicePressed(){
        textDocumentProxy.insertText("juice ")
    }
    
    func carrotPressed(){
        textDocumentProxy.insertText("carrot ")
    }
    
    
    
    
    

    override func updateViewConstraints() {
        super.updateViewConstraints()
    
        // Add custom view sizing constraints here
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        loadInterface()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated
    }

    override func textWillChange(textInput: UITextInput?) {
        // The app is about to change the document's contents. Perform any preparation here.
    }

    override func textDidChange(textInput: UITextInput?) {
        // The app has just changed the document's contents, the document context has been updated.
    }

    func loadInterface() {
        let keyboardNib = UINib(nibName: "Keyboard", bundle: nil)
        keyboardView = keyboardNib.instantiateWithOwner(self, options: nil)[0] as! UIView
        keyboardView.frame = view.frame
        view.addSubview(keyboardView)
        view.backgroundColor = keyboardView.backgroundColor
        nextKeyboardButton.addTarget(self, action: "advanceToNextInputMode", forControlEvents: .TouchUpInside)
        returnButton.addTarget(self, action: "returnPressed", forControlEvents: .TouchUpInside)
        deleteButton.addTarget(self, action: "deletePressed", forControlEvents: .TouchUpInside)
        milk.addTarget(self, action: "milkPressed", forControlEvents: .TouchUpInside)
        eggs.addTarget(self, action: "eggsPressed", forControlEvents: .TouchUpInside)
        bread.addTarget(self, action: "breadPressed", forControlEvents: .TouchUpInside)
        orange.addTarget(self, action: "orangePressed", forControlEvents: .TouchUpInside)
        cheese.addTarget(self, action: "cheesePressed", forControlEvents: .TouchUpInside)
        carrot.addTarget(self, action: "carrotPressed", forControlEvents: .TouchUpInside)
        cookie.addTarget(self, action: "cookiePressed", forControlEvents: .TouchUpInside)
        apple.addTarget(self, action: "applePressed", forControlEvents: .TouchUpInside)
        banana.addTarget(self, action: "bananaPressed", forControlEvents: .TouchUpInside)
        lettuce.addTarget(self, action: "lettucePressed", forControlEvents: .TouchUpInside)
        grapes.addTarget(self, action: "grapesPressed", forControlEvents: .TouchUpInside)
        juice.addTarget(self, action: "juicePressed", forControlEvents: .TouchUpInside)
        
        
    }


}
