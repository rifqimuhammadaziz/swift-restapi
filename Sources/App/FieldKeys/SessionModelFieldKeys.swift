//
//  File.swift
//  
//
//  Created by Rifqi Muhammad Aziz on 16/08/23.
//

import Foundation
import Vapor
import Fluent

extension SessionModel {
    struct FieldKeys {
        static var title: FieldKey {"title"}
        static var mp4URL: FieldKey {"mp4URL"}
        static var hlsURL: FieldKey {"hlsURL"}
        static var createdAt: FieldKey {"createdAt"}
        static var updatedAt: FieldKey {"updatedAt"}
        static var publishDate: FieldKey {"publishDate"}
        static var status: FieldKey {"status"}
        static var price: FieldKey {"price"}
        static var article: FieldKey {"article"}
        static var course: FieldKey {"course"}
        static var slug: FieldKey {"slug"}
    }
}
