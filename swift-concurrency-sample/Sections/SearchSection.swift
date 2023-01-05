//
//  TopSection.swift
//  swift-concurrency-sample
//
//  Created by Kou Yamamoto on 2023/01/05.
//

import Foundation

enum SearchSectionHeader: Hashable {
    case repositories(title: String)
    case users(title: String)
}

enum SearchSectionItem: Hashable {
    case repositories(item: SearchRepositoryResponse)
    case users(item: SearchUserResponse)

    static func == (lhs: SearchSectionItem, rhs: SearchSectionItem) -> Bool {
        return lhs.hashValue == rhs.hashValue
    }

    func hash(into hasher: inout Hasher) {
        switch self {
        case .repositories(let item):
            hasher.combine("repositories")
        case .users(let item):
            hasher.combine("users")
        }
    }
}
