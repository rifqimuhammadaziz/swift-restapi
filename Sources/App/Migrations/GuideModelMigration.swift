//
//  File.swift
//  
//
//  Created by Rifqi Muhammad Aziz on 16/08/23.
//

import Foundation
import Fluent
import Vapor

struct GuideModelMigration: AsyncMigration {
    let schema = GuideModel.schema.self
    let keys = GuideModel.FieldKeys.self
    
    func prepare(on database: Database) async throws {
        try await database.schema(schema)
            .id()
            .field(keys.title, .string)
            .field(keys.description, .string)
            .field(keys.headerImage, .string)
            .field(keys.price, .string)
            .field(keys.status, .string)
            .field(keys.slug, .string)
            .field(keys.tags, .array(of: .string))
            .field(keys.publishDate, .datetime)
            .field(keys.createdAt, .datetime)
            .field(keys.updatedAt, .datetime)
            .field(keys.author, .string)
            .create()
    }
    
    func revert(on database: Database) async throws {
        try await database.schema(schema)
            .delete()
    }
}
