//
//   Constants.swift
//  Chat
//
//  Created by Rana on 1/13/19.
//  Copyright © 2019 ShivaTech. All rights reserved.
//

import Foundation
import Firebase

struct Constants
{
    struct refs
    {
        static let databaseRoot = Database.database().reference()
        static let databaseChats = databaseRoot.child("chats")
    }
}
