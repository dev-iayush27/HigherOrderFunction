import UIKit
import Foundation

struct Product {
    let id = UUID()
    let name: String
    let price: Int
    let ratings: Float?
    let category: String
}

var products: [Product] {
    [
        Product(name: "iPhone 15", price: 100000, ratings: 4.5, category: "Mobile"),
        Product(name: "OnePlus 12", price: 70000, ratings: 3.5, category: "Mobile"),
        Product(name: "Samsung Galaxy", price: 40000, ratings: 3.0, category: "Mobile"),
        Product(name: "MacBook Pro", price: 150000, ratings: 4.0, category: "Laptop"),
        Product(name: "Lenovo", price: 65000, ratings: 4.5, category: "Laptop"),
        Product(name: "Dell", price: 40000, ratings: nil, category: "Laptop"),
    ]
}

// MARK: - Higher Order Functions

// Higher-order functions in Swift are functions that can take other functions as parameters or return functions as results.
// It is based on functional programming.
// It makes expressive and concise code.
// Swift provides several built-in higher-order functions that you can use with arrays, dictionaries, and other collections.
// In Swift, we have map, compactMap, filter, reduce, sorted etc.


// MARK: - map
// The map function applies a given transformation to each element of a collection and returns a new collection with the transformed elements.

let names = products.map { $0.name }
print("*** map ***")
print(names)
print("***********\n")


// MARK: - compactMap
// The compactMap function applies a given transformation to each element of a collection and returns a new collection containing the 'non-nil' results.

let ratings = products.compactMap { $0.ratings }
print("*** compactMap ***")
print(ratings)
print("***********\n")


// MARK: - filter
// The filter function selects elements from a collection that satisfy a given condition and returns a new collection containing only those elements.

let filteredProducts = products.filter { $0.category == "Laptop" }
print("*** filter ***")
print(filteredProducts)
print("***********\n")


// MARK: - sorted
// The sorted function returns a new collection with the elements of the original collection sorted based on a given sorting predicate.

let sortedProducts = products.sorted { $0.name < $1.name }
print("*** sorted ***")
print(sortedProducts)
print("***********\n")


// MARK: - reduce
// The reduce function combines all elements of a collection into a single value using a specified closure.

let totalPrice = products.map { $0.price }.reduce(0) { $0 + $1 }
//let totalPrice = products.map { $0.price }.reduce(0) { (result, next) in
//    return result + next
//}
print("*** reduce ***")
print(totalPrice)
print("***********\n")
