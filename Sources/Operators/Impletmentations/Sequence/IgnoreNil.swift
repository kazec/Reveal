//
//  IgnoreNil.swift
//  Reveal
//
//  Created by 锋炜 刘 on 16/3/20.
//  Copyright © 2016年 kAzec. All rights reserved.
//

import Foundation

final class IgnoreNil<Wrapped>: ValueDefaultOperator<Wrapped?, Wrapped> {
    override init() {  }
    
    override func forward(sink: Wrapped -> Void) -> (Wrapped? -> Void) {
        return { optional in
            if let unwrapped = optional {
                sink(unwrapped)
            }
        }
    }
}