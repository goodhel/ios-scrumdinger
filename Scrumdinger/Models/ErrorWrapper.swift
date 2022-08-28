//
//  ErrorWrapper.swift
//  Scrumdinger
//
//  Created by Yudhi Kusuma on 28/08/22.
//

import Foundation

struct ErrorWrapper: Identifiable {
    let id: UUID
    let error: Error
    let guidance: String
    
    init(id: UUID = UUID(), error: Error, guidance: String) {
        self.id = id
        self.error = error
        self.guidance = guidance
    }
}
