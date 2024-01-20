import UIKit

// Contact Management System:
/// Create a contact management system that stores contacts with details like name, phone number, and email. Implement functionalities to add, delete, and search for contacts.
/// Assume a max contact list size of 50.


struct Person: Hashable {
    var name: String? = ""
    var phoneNumber: String
    var email: String? = ""
}

struct Contacts {
    private var persons: [Person] = []
    
    var publicContacts: [Person] {
        return persons
    }
    
    mutating func addContact(_ person: Person) throws {
        guard persons.count < 50 else {
            throw ContactError.maxSizeReached
        }
        self.persons.append(person)
    }
    
    mutating func deleteContact(_ person: Person) throws {
        if let index = self.persons.firstIndex(of: person) {
            self.person.remove(at: index)
        } else {
            throw ContactError.absentContact
        }
    }
    
    func searchByPhoneNumber(_ phoneNumber: String) throws -> Person {
        if let index = self.persons.firstIndex(where: { $0.phoneNumber == phoneNumber}) {
            return self.persons[index]
        } else {
            throw ContactError.absentContact
        }
    }
}

class Phone {
    var contacts: Contacts? = nil
    
    init(contacts: Contacts) {
        self.contacts = contacts
    }
}

enum ContactError: Error {
    case maxSizeReached
    case absentContact
}

