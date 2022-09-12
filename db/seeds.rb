# require 'Faker'

puts "🌱 Seeding data..."

mechanics = Mechanic.create([
    {
      category: "Heavy Machinery",
      shop_name: "Okush Mechanic Shop",
      location: "Nakuru, Kenya",
      experience: 6,
      about: Faker::Lorem.sentence(word_count: rand(20..50)),
      image_url: "https://media.istockphoto.com/photos/happy-black-auto-mechanic-working-at-car-workshop-and-looking-at-picture-id1289143731?k=20&m=1289143731&s=612x612&w=0&h=12DezHaSI7XrRudm4Exd5aDyidgB0k9-worzo5u8viw=",
      mechanic_name: "Moses Okumu",
      number: "+254723456789",
      email: "okumu@info.com"
    },
    {
      category: "Break and Transmission",
      shop_name: "Melvin's Auto Shop",
      location: "Nairobi, Kenya",
      experience: 7,
      about: Faker::Lorem.sentence(word_count: rand(20..50)),
      image_url: "https://upload.wikimedia.org/wikipedia/commons/6/68/Auto_Mechanic.jpg",
      mechanic_name: "Melvin Mogaka",
      number: "+254734567891",
      email: "melvin@info.com"
    },
    {
      category: "Electrical Wiring",
      shop_name: "Stephen Car Electrical",
      location: "Eldoret, Kenya",
      experience: 3,
      about: Faker::Lorem.sentence(word_count: rand(20..50)),
      image_url: "https://www.floridacareercollege.edu/wp-content/uploads/sites/4/2020/06/3-Reasons-Why-Being-a-Mechanic-Could-Be-An-Amazing-Career-Florida-Career-College.jpeg",
      mechanic_name: "Stephen Kariuki",
      number: "+254756789123",
      email: "stephen@info.com"
    },
    {
      category: "Diesel Engine",
      shop_name: "Milly's Spares",
      location: "Bungoma, Kenya",
      experience: 2.5,
      about: Faker::Lorem.sentence(word_count: rand(20..50)),
      image_url: "https://www.bls.gov/ooh/images/3010.jpg",
      mechanic_name: "Mildred Nafula",
      number: "+254745678912",
      email: "mildred@info.com"
    },
    {
      image_url: "https://ded7t1cra1lh5.cloudfront.net/media/444425/8c4725e9f774107d6eabac5027d596415e8980b9/original/Service2.jpg?1548177569",
      category: "Break and Transmission",
      shop_name: "Ravvy Car Clinic",      
      number: "724941205",
      mechanic_name: "Brian Wangila",
      email: "brian@gmail.coo",
      about: Faker::Lorem.sentence(word_count: rand(20..50)),
      experience: "4",
      location: "Thika Road, Nairobi"
    },
    {
      image_url: "https://ded7t1cra1lh5.cloudfront.net/media/444425/8c4725e9f774107d6eabac5027d596415e8980b9/original/Service2.jpg?1548177569",
      category: "Heavy Machinery",
      shop_name: "Ravvy Car Clinic",
      number: "724941205",
      mechanic_name: "Brian Wangila",
      email: "brian@gmail.coo",
      about: Faker::Lorem.sentence(word_count: rand(20..50)),
      experience: "4",
      location: "Thika Road, Nairobi"
    }

])


mechanics.map do |mechanic|
  rand(5..10).times do

  
  Review.create(
    rating: rand(1..5).to_f,
    name: Faker::Name.first_name,
    comment: Faker::Company.catch_phrase,
    mechanic_id: mechanic.id
  )
  end
end



puts "✅ Done seeding!"