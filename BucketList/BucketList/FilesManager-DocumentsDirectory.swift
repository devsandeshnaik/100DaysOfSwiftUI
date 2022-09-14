//
//  FilesManager-DocumentsDirectory.swift
//  BucketList
//
//  Created by Sandesh Naik on 13/09/22.
//

import Foundation
extension FileManager {
    static var documentsDirectory: URL {
        let paths = FileManager.default.urls(for: .documentDirectory, in: .userDomainMask)
        return paths[0]
    }
}
