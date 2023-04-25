//
//  main.swift
//  xcframework2framework
//
//  Created by SSBun on 2023/4/25.
//

import Foundation
import ArgumentParser
import Rainbow


@main
struct XCFramework2Framework: ParsableCommand {
    
    @Argument(help: "The folder path containing xcframeworks", completion: .directory)
    var folder: String
    
    @Option(parsing: .upToNextOption, help: "Supported architectures")
    var arc: [String] = []
    
    mutating func run() throws {
        print("\("folder".green): \(folder)")
        print("arc: \(arc)".red)
    }
}


