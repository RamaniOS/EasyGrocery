//
//  LocalDataStore.swift
//  EasyGrocery
//
//  Created by Ramanpreet Singh on 2019-11-13.
//  Copyright © 2019 Ramanpreet Singh. All rights reserved.
//

struct LocalDataStore {
    static var items: [Grocery] {
        return [Grocery(title: "Sugar", desc: "Sweet"),
        Grocery(title: "Pickle", desc: "Soar")]
    }
}
