// 
//  Task+Sleep.swift
//  
//
//  Created by ykkd on 2024/02/26.
//

import Foundation

extension Task where Success == Never, Failure == Never {
    
    static func sleep(seconds: Double) async throws {
        try await sleep(nanoseconds: UInt64(seconds) * 1_000_000_000)
    }
}
