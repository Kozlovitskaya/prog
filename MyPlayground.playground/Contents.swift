import UIKit

struct Profil {
    var  Famili, Name, Otcestvo, email, password: String
}

class Person {
    var profil = Profil(Famili: "Kozlovitskaya", Name: "Nina", Otcestvo: "Sergeevna", email: "ninavolga96@gmail.com", password: "123")
    
    func auth (email:String , password:String) ->String {
        if self.profil.email == email && self.profil.password == password {
        return "Пользователь авторизован"
    } else {
    return "Пользователь не авторизован"
    }
    }
    
    func register(Famili: String, Name: String, Otcestvo: String, email: String, password: String, pass: String)->String {
            if password ==  pass {
            return "Пользователь зарегистрирован"
        } else {
        return "Неверный пороль"
        }
        
    }
}
let person = Person()

print(person.register(Famili: "Pit", Name: "Pit", Otcestvo: "Pit", email: "pit@gmail.com", password: "456" , pass: "456"))

//print (person.auth(email: "pit@gmail.com", password: "456"))


