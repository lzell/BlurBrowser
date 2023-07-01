//
//  VibrancyEffects.swift
//  BlurBrowser
//
//  Created by Lou Zell on 7/2/23.
//

import UIKit

extension UIVibrancyEffectStyle {
    static let all = [
        UIVibrancyEffectStyle.fill,
        UIVibrancyEffectStyle.label,
        UIVibrancyEffectStyle.quaternaryLabel,
        UIVibrancyEffectStyle.secondaryFill,
        UIVibrancyEffectStyle.secondaryLabel,
        UIVibrancyEffectStyle.separator,
        UIVibrancyEffectStyle.tertiaryFill,
        UIVibrancyEffectStyle.tertiaryLabel,
    ]
}

extension UIVibrancyEffectStyle: CustomStringConvertible {
    public var description: String {
        switch self {
        case .fill:            return "UIVibrancyEffectStyle.fill"
        case .label:           return "UIVibrancyEffectStyle.label"
        case .quaternaryLabel: return "UIVibrancyEffectStyle.quaternaryLabel"
        case .secondaryFill:   return "UIVibrancyEffectStyle.secondaryFill"
        case .secondaryLabel:  return "UIVibrancyEffectStyle.secondaryLabel"
        case .separator:       return "UIVibrancyEffectStyle.separator"
        case .tertiaryFill:    return "UIVibrancyEffectStyle.tertiaryFill"
        case .tertiaryLabel:   return "UIVibrancyEffectStyle.tertiaryLabel"
        @unknown default: fatalError()
        }
    }
}
