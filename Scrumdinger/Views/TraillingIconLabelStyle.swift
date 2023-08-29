//
//  TraillingIconLabelStyle.swift
//  Scrumdinger
//
//  Created by Atikur Rahman on 8/26/23.
//

import SwiftUI

struct TraillingIconLabelStyle: LabelStyle {
    
    func makeBody(configuration: Configuration) -> some View {
        HStack {
            configuration.title
            configuration.icon
        }
    }
}

extension LabelStyle where Self == TraillingIconLabelStyle {
    static var traillingIcon: Self { Self() }
}
