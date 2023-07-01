//
//  EffectStyle+CustomStringConvertible.swift
//  BlurBrowser
//
//  Created by Lou Zell on 7/2/23.
//

import UIKit

extension UIBlurEffect.Style {
    static let all = [
        UIBlurEffect.Style.extraLight,
        UIBlurEffect.Style.light,
        UIBlurEffect.Style.dark,
        UIBlurEffect.Style.regular,
        UIBlurEffect.Style.prominent,
        UIBlurEffect.Style.systemUltraThinMaterial,
        UIBlurEffect.Style.systemThinMaterial,
        UIBlurEffect.Style.systemMaterial,
        UIBlurEffect.Style.systemThickMaterial,
        UIBlurEffect.Style.systemChromeMaterial,
        UIBlurEffect.Style.systemUltraThinMaterialLight,
        UIBlurEffect.Style.systemThinMaterialLight,
        UIBlurEffect.Style.systemMaterialLight,
        UIBlurEffect.Style.systemThickMaterialLight,
        UIBlurEffect.Style.systemChromeMaterialLight,
        UIBlurEffect.Style.systemUltraThinMaterialDark,
        UIBlurEffect.Style.systemThinMaterialDark,
        UIBlurEffect.Style.systemMaterialDark,
        UIBlurEffect.Style.systemThickMaterialDark,
        UIBlurEffect.Style.systemChromeMaterialDark
    ]
}


extension UIBlurEffect.Style: CustomStringConvertible {
    public var description: String {
        switch self {
        case .extraLight:                   return "UIBlurEffect.Style.extraLight"
        case .light:                        return "UIBlurEffect.Style.light"
        case .dark:                         return "UIBlurEffect.Style.dark"
        case .extraDark:                    return "UIBlurEffect.Style.extraDark"
        case .regular:                      return "UIBlurEffect.Style.regular"
        case .prominent:                    return "UIBlurEffect.Style.prominent"
        case .systemUltraThinMaterial:      return "UIBlurEffect.Style.systemUltraThinMaterial"
        case .systemThinMaterial:           return "UIBlurEffect.Style.systemThinMaterial"
        case .systemMaterial:               return "UIBlurEffect.Style.systemMaterial"
        case .systemThickMaterial:          return "UIBlurEffect.Style.systemThickMaterial"
        case .systemChromeMaterial:         return "UIBlurEffect.Style.systemChromeMaterial"
        case .systemUltraThinMaterialLight: return "UIBlurEffect.Style.systemUltraThinMaterialLight"
        case .systemThinMaterialLight:      return "UIBlurEffect.Style.systemThinMaterialLight"
        case .systemMaterialLight:          return "UIBlurEffect.Style.systemMaterialLight"
        case .systemThickMaterialLight:     return "UIBlurEffect.Style.systemThickMaterialLight"
        case .systemChromeMaterialLight:    return "UIBlurEffect.Style.systemChromeMaterialLight"
        case .systemUltraThinMaterialDark:  return "UIBlurEffect.Style.systemUltraThinMaterialDark"
        case .systemThinMaterialDark:       return "UIBlurEffect.Style.systemThinMaterialDark"
        case .systemMaterialDark:           return "UIBlurEffect.Style.systemMaterialDark"
        case .systemThickMaterialDark:      return "UIBlurEffect.Style.systemThickMaterialDark"
        case .systemChromeMaterialDark:     return "UIBlurEffect.Style.systemChromeMaterialDark"
        @unknown default: fatalError()
        }
    }
}
