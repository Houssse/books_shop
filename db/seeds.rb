30.times do
  title = Faker::Book.title
  author = Faker::Book.author
  summary = Faker::Lorem.paragraph(sentence_count: 4, supplemental: true, random_sentences_to_add: 4) 
  price = Faker::Number.decimal(l_digits: 3, r_digits: 2)

  Product.create title: title, author: author, summary: summary, price: price
end
