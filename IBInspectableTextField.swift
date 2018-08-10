//
//  IBInspectableTextField.swift
//  MVVM_Codable
//
//  Created by Gautamarora on 6/6/18.
//  Copyright © 2018 Gautamarora. All rights reserved.
//

import Foundation
import UIKit

@IBDesignable

open class CutomeTextField:UITextField{
   
    
    public override init(frame: CGRect) {
        super.init(frame: frame)
    }
    public required init?(coder aDecoder: NSCoder) {
          super.init(coder: aDecoder)
    }
   
    
    @IBInspectable var cornerRadius:CGFloat = 1.0
        {
    didSet{
    
        layer.cornerRadius = cornerRadius
    }
    }
    
    
    @IBInspectable var borderColor: UIColor? = UIColor.clear {
        didSet {
            layer.borderColor = self.borderColor?.cgColor
        }
    }
    
    @IBInspectable var borderWidth:CGFloat = 1.0{
        
        didSet{
            layer.borderWidth = borderWidth
        }
    }
    
     @IBInspectable var paddingValue: CGFloat = 0
    
    var padding: UIEdgeInsets {
        get {
            return UIEdgeInsets(top: 0, left: paddingValue, bottom: 0, right: paddingValue)
        }
    }
    
    override open func draw(_ rect: CGRect) {
        self.layer.cornerRadius = self.cornerRadius
        self.layer.borderWidth = self.borderWidth
        self.layer.borderColor = self.borderColor?.cgColor
    }
    
    
}
