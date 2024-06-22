//
//  ToDoListViewViewModel.swift
//  Todo-App
//
//  Created by Piyush saini on 20/06/24.
//

import Foundation
import FirebaseFirestore

class ToDoListViewViewModel: ObservableObject{
    
    @Published var showingNewItemView = false
    
    private let userId: String
    
    init(userId: String) {
        self.userId = userId
    }
    
    func delete(id: String){
        let db = Firestore.firestore()
        
        db.collection("users")
            .document(userId)
            .collection("ToDo's")
            .document(id)
            .delete()
    }
    
}
