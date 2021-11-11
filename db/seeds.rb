5.times do
    Book.create({
        Title: Faker::Book.title,
        Author: Faker::Book.author,
        Publisher: Faker::Book.publisher,
        Year: Faker::Time.forward(days: 23, period: :morning)
    })
end