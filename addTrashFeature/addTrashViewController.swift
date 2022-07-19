//
//  addTrashViewController.swift
//  addTrashFeature
//
//  Created by Scholar on 7/19/22.
//

import UIKit

class addTrashViewController: UIViewController {

    @IBOutlet weak var trashSizePopUpButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setPopUpButton()

        // Do any additional setup after loading the view.
    }
    
    //MARK: Trash Size Pop Up Function
    func setPopUpButton(){
        let optionClosure = {(action : UIAction) in print(action.title)}
        trashSizePopUpButton.menu = UIMenu(children : [
            UIAction(title: "Select Trash Size", state: .on, handler: optionClosure),
            UIAction(title: "Small", state: .off, handler: optionClosure),
            UIAction(title: "Medium", state: .off, handler: optionClosure),
            UIAction(title: "Large", state: .off, handler: optionClosure)
        ])
        trashSizePopUpButton.showsMenuAsPrimaryAction = true
        trashSizePopUpButton.changesSelectionAsPrimaryAction = true
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
