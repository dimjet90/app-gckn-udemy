Utilisateur.create!(nom: "Dim",
                    email: "dimitri-je@hotmail.fr",
                    password: "root1234",
                    password_confirmation: "root1234",
                    admin: true,
                    activated: true,
                    activated_at: Time.zone.now)

59.times do |n|
  nom = Faker::Name.name
  email = "example-#{n + 1}@hotmail.com"
  password = "password"
  Utilisateur.create!(nom: nom,
                      email: email,
                      password: password,
                      password_confirmation: password,
                      activated: true,
                      activated_at: Time.zone.now)
end
