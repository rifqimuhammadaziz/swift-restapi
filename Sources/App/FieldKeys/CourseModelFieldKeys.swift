//
//  File.swift
//  
//
//  Created by Rifqi Muhammad Aziz on 15/08/23.
//

import Foundation
import Fluent
import Vapor

extension CourseModel {
    struct FieldKeys {
        static var title: FieldKey {"title"}
        static var slug: FieldKey {"slug"}
        static var tags: FieldKey {"tags"}
        static var description: FieldKey {"description"}
        static var status: FieldKey {"status"}
        static var price: FieldKey {"price"}
        static var headerImage: FieldKey {"headerImage"}
        static var article: FieldKey {"article"}
        static var topHexColor: FieldKey {"topHexColor"}
        static var bottomHexColor: FieldKey {"bottomHexColor"}
        static var sylabus: FieldKey {"sylabus"}
        static var assets: FieldKey {"assets"}
        static var author: FieldKey {"author"}
        static var createdAt: FieldKey {"createdAt"}
        static var updatedAt: FieldKey {"updatedAt"}
        static var publishDate: FieldKey {"publishDate"}
    }
}
