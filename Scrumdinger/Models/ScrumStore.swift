//
//  ScrumStore.swift
//  Scrumdinger
//
//  Created by Atikur Rahman on 9/6/23.
//

import Foundation

class ScrumStore: ObservableObject {
    @Published var scrum: [DailyScrum] = []
    
    private static func fileURL() throws -> URL {
        try FileManager.default.url(for: .documentDirectory,
                                    in: .userDomainMask,
                                    appropriateFor: nil,
                                    create: false)
        .appendingPathComponent("scrums.data")
    }
}
