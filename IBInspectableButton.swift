//
//  IBInspectableButton.swift
//  MVVM_Codable
//
//  Created by Gautamarora on 5/22/18.
//  Copyright © 2018 Gautamarora. All rights reserved.
//

import Foundation
import UIKit // Frameworks: Library files

/**********creating custom designable button ***********/
@IBDesignable
/****Open access specifier used : It can be subclassed in module and the module that inherit it, it can be be further overriden in module and the module that extend it*****/
/** class: specific template whose object are created. Objects are instance of class, run time entities, Instance is copy or occurence of the object*****/
/**** Name of the class is in upper camel case*****/

open class CustomButton: UIButton{
/************ careting IBInsepectable for the button***/
    
    
    override public init(frame: CGRect) {
        super.init(frame: frame)
        
    }
    /*******required init method Primary init method, one reqired for class********/
    public required init?(coder aDecoder: NSCoder) {
            super.init(coder: aDecoder)
    }

    /****** for creating corner radius**********/
    
    @IBInspectable var cornerRadius :CGFloat = 1.0{
    // ******diset property observer used after the value is modified****/
    didSet{
    layer.cornerRadius = cornerRadius
    }
    }
    
    /************* For creating border width**********/
    @IBInspectable var borderWidth: CGFloat = 1.0{
        didSet{
            layer.borderWidth = borderWidth
        }
    }
     /************* For creating border color**********/
    @IBInspectable var borderColor:UIColor = .white{
        didSet{
            layer.borderColor = borderColor.cgColor
        }
    }
}
