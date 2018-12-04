//Faire une extension du type "String"
//
//Cette extension aura 1 methode toDate(format: String) qui retournera un type "Date"
//

import Foundation

extension String {
    func toDate(format: String) -> Date {
        let formatter = DateFormatter()
        formatter.dateFormat = format
        return formatter.date(from: self)!
    }
}

//###########################################################################################
//
//Faire une extension du type "Date"
//
//Cette extension aura 2 methodes:
//toString(format: String) qui retournera un type "String"
//getYearDifferenceFrom(date: Date) qui retournera un type "Int"
//
extension Date {
    func toString(format: String) -> String {
        let formatter = DateFormatter()
        formatter.dateFormat = format
        return formatter.string(from: self)
    }
    
    func getYearDifferenceFrom(date: Date) -> Int {
        return Calendar.current.dateComponents([.year], from: self, to: date).year!
    }
}

//###########################################################################################
//
//Faire une structure "Email"
//
//Cette structure aura une propriété "email" de type "String?"
//
//Cette structure aura une méthode init(email: String)
//Cette structure aura une méthode isValid() qui retournera un "Bool" si l'email est valide ou pas
//

struct Email: CustomStringConvertible {
    var description: String {
        return self.email!
    }
    
    var email: String?
    
    init (email: String) {
        self.email = email
    }
    
    func isValid() -> Bool {
        let emailRegEx = "[A-Z0-9a-z._%+-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,64}"
        let emailTest = NSPredicate(format:"SELF MATCHES %@", emailRegEx)
        return emailTest.evaluate(with: self.email)
    }
    
}
//###########################################################################################
//
//Faire une class qui a pour nom "Existence".
//
//Cette class aura 2 propriété :
//birthdate de type "Date"
//age de type "Int"
//
//Cette structure aura une méthode init(date: Date?) (Evidemment cette méthode devra remplir les 2 propriétés indiquées plus haut "birthdate" et "age")
//
//Cette structure aura une méthode willProbablyDieSoon() qui retournera un "Bool" si l'âge de "l'existance" est supérieur à 100
//

class Existence {
    var birthdate: Date
    var age: Int
    
    init(date: Date?) {
        self.age = date!.getYearDifferenceFrom(date: Date())
        self.birthdate = date!
    }

    func willProbablyDieSoon() -> Bool {
        return self.age > 80
    }
}

//###########################################################################################
//
//Faire une class qui a pour nom "Person", elle devra hériter de la class "Existence"
//

class Person: Existence {
//Cette class aura une Enumeration "Gender" avec 3 cas "Male", "Female", "Other".
//
    enum Gender: String {
        case male = "male", female = "female", other = "other"
    }
//Cette class aura 4 propriété :
//gender de type "Gender"
//firstname de type "String"
//lastname de type "String"
//email de type "Email"
    
    var gender: Gender
    var firstname: String
    var lastname: String
    var email: Email
//
//Cette class aura 2 méthodes d'initialisations init()
//
    init(firstname: String, lastname: String, gender: Gender, email: Email, birthdate: Date) {
        self.firstname = firstname
        self.lastname = lastname
        self.gender = gender
        self.email = email
        super.init(date: birthdate)
        self.birthdate = birthdate
    }
    
//init(firstname: String, lastname: String, gender: Gender, email: String, birthdate: (date: String, format: String)) {
//    init(firstname: String, lastname: String, gender: Gender, email: String, birthdate: Date)
//
//    Cette class aura 1 méthode show() qui est disponible ici :
//
    func show() {

        print("firstname : \(self.firstname) ")
        print("lastname : \(self.lastname) ")

        switch self.gender {
        case .male:
            print("gender : Male")
        case .female:
            print("gender : Male")
        case .other:
            print("gender : Other")
        }

        print("email valid : \(self.email.isValid())")
        print("email : \(self.email)")

        print("birthdate : \(self.birthdate)")
        print("age : \(self.age)")
        print("will die soon : \(self.willProbablyDieSoon())")

    }
//
//    L'appel de la fonction show devra afficher cela dans votre console:
//
//    firstname : Emir
//    lastname : Azaiez
//    gender : Male
//    email valid : true
//    email : emir.azaiezsahli@gmail.com
//    birthdate : 1900-01-11 07:20:24 +0000
//    age : 117
//    will die soon : true
//
}
//    ###########################################################################################
//
//    Petits indices :
//    Certaines classes (et / ou) structures vont avoir besoin d'hériter de "CustomStringConvertible"
