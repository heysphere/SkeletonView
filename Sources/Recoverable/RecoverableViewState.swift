//
//  RecoverableViewState.swift
//  SkeletonView
//
//  Created by Juanpe Catalán on 13/05/2018.
//  Copyright © 2018 SkeletonView. All rights reserved.
//

import UIKit

struct RecoverableViewState {
    var backgroundColor: UIColor?
    var cornerRadius: CGFloat
    var clipToBounds: Bool
    
    init(view: UIView) {
        self.backgroundColor = view.backgroundColor
        self.clipToBounds = view.layer.masksToBounds
        self.cornerRadius = view.layer.cornerRadius
    }
}

struct RecoverableTextViewState {
    var textColor: UIColor?
    var isUserInteractionsEnabled: Bool
    
    init(view: UILabel) {
        self.textColor = view.textColor
        self.isUserInteractionsEnabled = view.isUserInteractionEnabled
    }
    
    init(view: UITextView) {
        self.textColor = view.textColor
        self.isUserInteractionsEnabled = view.isUserInteractionEnabled
    }
}

struct RecoverableImageViewState {
    var image: UIImage?
    
    init(view: UIImageView) {
        self.image = view.image
    }
}

struct RecoverableButtonViewState {
    var isUserInteractionsEnabled: Bool
    
    init(view: UIButton) {
        self.isUserInteractionsEnabled = view.isUserInteractionEnabled
    }
}
