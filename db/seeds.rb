5.times do
    Book.create({
        Title: Faker::Book.title,
        Author: Faker::Book.author,
        Publisher: Faker::Book.publisher,
        Year: Faker::Number.between(from: 1800, to: 2022)
    })
end