//
//  main.swift
//  Exercises
//
//  Created by Neil Richter on 29/11/2018.
//  Copyright © 2018 Neil Richter. All rights reserved.
//

import Foundation

//print(condog(str: "ama", prefix: "m", suffix: "dou"));
//print(cleanHobbits(arr: ["Frodo", "Aragorn", "Boromir", "Legolas", "Gimli", "Gandalf", "Samsaget"]));
//print("2019".toDate(format: "YYYY"))
//print(Date().toString(format: "MM"))
//print(Date().getYearDifferenceFrom(date: "22/03/16".toDate(format: "dd/MM/YYYY")))

//let email = Email(email: "me@neilrichter.com")
//print(email.isValid())
//
//var neil = Person(firstname: "Neil",
//                  lastname: "Richter",
//                  gender: Person.Gender.Male,
//                  email: email,
//                  birthdate: "14/08/1999".toDate(format: "dd/MM/YYY"))
//
//neil.show()

//apiManager().getRandomUser(completing: { data in
//    print(data)
//})

apiManager().getRandomUserHydratedWithPerson(completion: { person in
    person.show()
})

RunLoop.main.run()
