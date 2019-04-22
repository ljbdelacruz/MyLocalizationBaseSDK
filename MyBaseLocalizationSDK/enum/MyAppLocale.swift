//
//  MyAppLocale.swift
//  MyBaseLocalizationSDK
//
//  Created by Lainel John Dela Cruz on 22/04/2019.
//  Copyright © 2019 Lainel John Dela Cruz. All rights reserved.
//

import Foundation
public enum MyLocale{
    case km
    case jp
    case en
    public func myvalues()->Int{
        switch self {
        case .km:
            return 0;
        case .jp:
            return 1;
        case .en:
            return 2;
        }
    }
}
