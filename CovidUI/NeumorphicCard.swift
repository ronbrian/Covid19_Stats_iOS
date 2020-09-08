//
//  NeumorphicCard.swift
//  Covid
//
//  Created by Ron Machoka on 4/1/20.
//  Copyright © 2020 Ron Machoka. All rights reserved.
//

import Foundation
import SwiftUI
import Neumorphic
import URLImage

struct NeumporphicCard: View {
    @Environment(\.colorScheme)
    var colorScheme: ColorScheme

    let content: AnyView

    var body: some View {
        let neumorphic = Neumorphic(colorScheme: colorScheme)
        return ZStack(alignment: .leading) {
            RoundedRectangle(cornerRadius: 20)
                .fill(neumorphic.mainColor())
                .softOuterShadow(darkShadow: neumorphic.darkShadowColor(), lightShadow: neumorphic.lightShadowColor())

            content
        }
    }

}

extension NeumporphicCard {

    init<C : View>(content: () -> C) {
        self.init(content: AnyView(content()))
    }

}
