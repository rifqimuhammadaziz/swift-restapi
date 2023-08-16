//
//  File.swift
//  
//
//  Created by Rifqi Muhammad Aziz on 16/08/23.
//

import Foundation
import Fluent
import Vapor

struct UserModelMigration: AsyncMigration {
    let schema = UserModel.schema.self
    let keys = UserModel.FieldKeys.self
    
    func prepare(on database: Database) async throws {
        try await database.schema(schema)
            .field(keys.name, .string)
            .field(keys.lastname, .string)
            .field(keys.username, .string)
            .field(keys.email, .string)
            .field(keys.password, .string)
            .field(keys.city, .string)
            .field(keys.postalcode, .string)
            .field(keys.address, .string)
            .field(keys.country, .string)
            .field(keys.role, .string)
            .field(keys.subscriptionIsActiveTill, .datetime)
            .field(keys.myCourses, .array(of: .uuid))
            .field(keys.bio, .string)
            .field(keys.createdAt, .datetime)
            .field(keys.updatedAt, .datetime)
            .field(keys.userImage, .string)
            .unique(on: keys.email)
            .unique(on: keys.username)
            .create()
    }
    
    func revert(on database: Database) async throws {
        try await database.schema(schema)
            .delete()
    }
}
