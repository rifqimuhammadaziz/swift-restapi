//
//  File.swift
//  
//
//  Created by Rifqi Muhammad Aziz on 15/08/23.
//

import Foundation
import Fluent
import Vapor

extension GuideModel {
    struct FieldKeys {
        static var title: FieldKey {"title"}
        static var description: FieldKey {"description"}
        static var headerImage: FieldKey {"headerImage"}
        static var price: FieldKey {"price"}
        static var status: FieldKey {"status"}
        static var slug: FieldKey {"slug"}
        static var tags: FieldKey {"tags"}
        static var publishDate: FieldKey {"publishDate"}
        static var createdAt: FieldKey {"createdAt"}
        static var updatedAt: FieldKey {"updatedAt"}
        static var author: FieldKey {"author"}
        
    }
}
