//
//  CGFloat+Extension.swift
//  HelloBuddy
//
//  Created by Elvis Lin on 2025/1/1.
//

import Foundation

extension CGFloat {

    //MARK: - Dimensions

    public static var barWidth: CGFloat {
        switch DeviceType.current {
        case .iPhone, .iPhonePlus:
            return 50
        case .iPadMini:
            return 60
        case .iPad, .iPadPro:
            return 75
        }
    }

    public static var barMaxHeight: CGFloat {
        switch DeviceType.current {
        case .iPhone:
            return 280
        case .iPhonePlus:
            return 300
        case .iPadMini:
            return 360
        case .iPad, .iPadPro:
            return 450
        }
    }

    public static var contentVerticalSpacing: CGFloat {
        switch DeviceType.current {
        case .iPhone, .iPhonePlus:
            return 20
        case .iPadMini:
            return 24
        case .iPad, .iPadPro:
            return 24
        }
    }

    public static var descriptionVerticalSpacing: CGFloat {
        switch DeviceType.current {
        case .iPhone, .iPhonePlus:
            return 10
        case .iPadMini:
            return 12
        case .iPad, .iPadPro:
            return 12
        }
    }

    public static var barChartHorizontalPadding: CGFloat {
        switch DeviceType.current {
        case .iPhone, .iPhonePlus:
            return 50
        case .iPadMini:
            return 150
        case .iPad, .iPadPro:
            return 150
        }
    }

    public static var mascotLeadingPadding: CGFloat {
        switch DeviceType.current {
        case .iPhone, .iPhonePlus:
            return 25
        case .iPadMini:
            return 120
        case .iPad, .iPadPro:
            return 120
        }
    }

    public static var mascotWidth: CGFloat {
        switch DeviceType.current {
        case .iPhone, .iPhonePlus:
            return 189 * 0.7
        case .iPadMini:
            return 189 * 0.9
        case .iPad, .iPadPro:
            return 189 * 1.1
        }
    }

    public static var mascotHeight: CGFloat {
        switch DeviceType.current {
        case .iPhone, .iPhonePlus:
            return 161 * 0.7
        case .iPadMini:
            return 161 * 0.9
        case .iPad, .iPadPro:
            return 161 * 1.1
        }
    }

    public static var upgradeButtonHeight: CGFloat {
        switch DeviceType.current {
        case .iPhone, .iPhonePlus:
            return 48
        case .iPadMini:
            return 58
        case .iPad, .iPadPro:
            return 72
        }
    }

    public static var upgradeButtonHorizontalPadding: CGFloat {
        switch DeviceType.current {
        case .iPhone, .iPhonePlus:
            return 24
        case .iPadMini:
            return 150
        case .iPad, .iPadPro:
            return 150
        }
    }

    public static var closeButtonSize: CGFloat {
        switch DeviceType.current {
        case .iPhone, .iPhonePlus:
            return 40
        case .iPadMini:
            return 60
        case .iPad, .iPadPro:
            return 60
        }
    }

    public static var closeButtonPadding: CGFloat {
        switch DeviceType.current {
        case .iPhone, .iPhonePlus:
            return 30
        case .iPadMini:
            return 45
        case .iPad, .iPadPro:
            return 45
        }
    }

    //MARK: - Font Size

    public static var barFontSize: CGFloat {
        switch DeviceType.current {
        case .iPhone, .iPhonePlus:
            return 16
        case .iPadMini:
            return 18
        case .iPad, .iPadPro:
            return 24
        }
    }

    public static var titleFontSize: CGFloat {
        switch DeviceType.current {
        case .iPhone, .iPhonePlus:
            return 36
        case .iPadMini:
            return 44
        case .iPad, .iPadPro:
            return 54
        }
    }

    public static var firstDescriptionFontSize: CGFloat {
        switch DeviceType.current {
        case .iPhone, .iPhonePlus:
            return 20
        case .iPadMini:
            return 24
        case .iPad, .iPadPro:
            return 30
        }
    }

    public static var secondDescriptionFontSize: CGFloat {
        switch DeviceType.current {
        case .iPhone, .iPhonePlus:
            return 28
        case .iPadMini:
            return 34
        case .iPad, .iPadPro:
            return 42
        }
    }
}
