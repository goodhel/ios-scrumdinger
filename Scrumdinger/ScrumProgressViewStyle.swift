//
//  ScrumProgressViewStyle.swift
//  Scrumdinger
//
//  Created by Yudhi Kusuma on 18/08/22.
//

import SwiftUI

struct ScrumProgressViewStyle: ProgressViewStyle {
    var theme: Theme
    
    func makeBody(configuration: Configuration) -> some View {
        ZStack {
            RoundedRectangle(cornerRadius: 10.0)
                .fill(theme.accentColor)
                .frame(height: 20)
            
            if #available(iOS 15.0, *) {
                ProgressView(configuration)
                    .tint(theme.mainColor)
                    .frame(height: 12.0)
                    .padding(.horizontal)
            } else {
                ProgressView(configuration)
                    .frame(height: 12.0)
                    .padding(.horizontal)
            }
        }
    }
}

struct ScrumProgressViewStyle_Previews: PreviewProvider {
    static var previews: some View {
        ProgressView(value: 0.4)
            .progressViewStyle(ScrumProgressViewStyle(theme: .buttercup))
            .previewLayout(.sizeThatFits)
    }
}
