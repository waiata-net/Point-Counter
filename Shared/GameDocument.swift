//
//  Point_CounterDocument.swift
//  Shared
//
//  Created by Neal Watkins on 2022/7/16.
//

import SwiftUI
import UniformTypeIdentifiers

extension UTType {
    static var score: UTType {
        UTType(importedAs: "net.waiata.score")
    }
}

struct GameDocument: FileDocument {

    static var readableContentTypes: [UTType] { [.score] }
    
    var game: Game
    
    init() {
        game = Game()
    }

    init(configuration: ReadConfiguration) throws {
        guard let data = configuration.file.regularFileContents,
              let game = try? JSONDecoder().decode(Game.self, from: data)
        else {
            throw FileError.jsonDecoding
        }
        self.game = game
    }
    
    func fileWrapper(configuration: WriteConfiguration) throws -> FileWrapper {
        let encoder = JSONEncoder()
        encoder.outputFormatting = .prettyPrinted
        do {
            let data = try encoder.encode(game)
            return .init(regularFileWithContents: data)
        } catch {
            throw FileError.jsonEncoding
        }
    }
    
    enum FileError: Error {
        case jsonEncoding
        case jsonDecoding
    }
}
