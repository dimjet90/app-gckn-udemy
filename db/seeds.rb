Utilisateur.create!(nom: "Dimitri",
                    email: "dimitri-je@hotmail.fr",
                    password: "root1235",
                    password_confirmation: "root1235",
                    admin: true,
                    activated: true,
                    acitvated_at: Time.zone.now)

59.times do |n|
    nom = Faker::Name.name 
    email = "example-#{n + 1}@gmail.com"
    password = "password"
    Utilisateur.create!(nom: nom,
                        email: email,
                        password: password,
                        password_confirmation: password,
                        activated: true,
                        acitvated_at: Time.zone.now)
    end