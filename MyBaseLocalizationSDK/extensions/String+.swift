//
//  String.swift
//  MyBaseLocalizationSDK
//
//  Created by Lainel John Dela Cruz on 22/04/2019.
//  Copyright © 2019 Lainel John Dela Cruz. All rights reserved.
//

import Foundation
public extension String{
    func mylocalized() -> String{
        return PlistExtractor.extractLocalization(mystring: self, locale: MBLConfig.myLocale.myvalues());
    }
    public var localized: String{
        return PlistExtractor.extractLocalization(mystring: self, locale: MBLConfig.myLocale.myvalues());
    }    
}
