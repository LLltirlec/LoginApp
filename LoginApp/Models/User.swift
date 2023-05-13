//
//  File.swift
//  LoginApp
//
//  Created by Евгений Ефимов on 13.05.2023.
//

struct User {
    let userName: String
    let password: String
    let person: Person
    
    static func testUser() -> User {
            User(
                userName: "User",
                password: "Password",
                person:
                    Person(
                        name: "Steve",
                        surname: "Jobs",
                        company: "Apple",
                        departament: "Management",
                        position: "CEO",
                        bio:
    """
    Сти́вен Пол (Стив) Джобс (англ. Steven Paul (Steve) Jobs; 24 февраля 1955, Сан-Франциско, Калифорния, США — 5 октября 2011, Пало-Алто, Санта-Клара, Калифорния, США) — американский предприниматель, изобретатель и промышленный дизайнер, получивший широкое признание в качестве пионера эры информационных технологий. Один из основателей, председатель совета директоров и CEO корпорации Apple. Один из основателей и CEO киностудии Pixar.
    """))
    }
    
}

struct Person {
    let name: String
    let surname: String
    let company: String
    let departament: String
    let position: String
    let bio: String
}
