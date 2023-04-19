//
//  LinkMakeModel.swift
//  Mybook
//
//  Created by Алексей Шамрей on 17.04.23.
//

import Foundation


struct MakeModel {
    
    func makeLink(request: String) -> String {
        let trimmed = request.trimmingCharacters(in: .whitespacesAndNewlines).replacingOccurrences(of: " ", with: "+")
        return trimmed
    }
}
