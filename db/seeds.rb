# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.destroy_all
Spot.destroy_all
Booking.destroy_all
Review.destroy_all
Location.destroy_all

location1 = Location.create!({name: "New York, NY, USA", lat: "40.7128N", long: "74.0060W"})
location2 = Location.create!({name: "Philladelphia, PA, USA", lat: "39.9526N", long: "75.1652W"})
location3 = Location.create!({name: "San Francisco, CA, USA", lat: "37.7749N", long: "122.4194W"})
location4 = Location.create!({name: "Rome, Italy", lat: "41.9028N", long: "12.4964E"})
location5 = Location.create!({name: "Paris, France", lat: "48.8566N", long: "2.3522E"})



demo_user = User.create!({fname: "Jason", lname: "Kopacz", email: "jk@gmail.com",
password: "demouser", age: 27, gender: "M", occupation: "Software Engineer",
education: "Rutgers University", location: Location.find_by(name: "New York, NY, USA"), 
about_me: "Software Engineer :D"})

user1 = User.create!({fname: Faker::Name.first_name, lname: Faker::Name.last_name, 
email: "email@gmail.com", password: "password", age: Faker::Number.between(from: 18, to: 100),
gender: Faker::Gender.type, occupation: Faker::Job.title, education: Faker::University.name, location: Location.find_by(name: "New York, NY, USA"),
about_me: Faker::Movies::LordOfTheRings.quote})
user2 = User.create!({fname: Faker::Name.first_name, lname: Faker::Name.last_name, 
email: "email1@gmail.com", password: "password", age: Faker::Number.between(from: 18, to: 100),
gender: Faker::Gender.type, occupation: Faker::Job.title, education: Faker::University.name, location: Location.find_by(name: "New York, NY, USA"),
about_me: Faker::Movies::LordOfTheRings.quote})
user3 = User.create!({fname: Faker::Name.first_name, lname: Faker::Name.last_name, 
email: "email2@gmail.com", password: "password", age: Faker::Number.between(from: 18, to: 100),
gender: Faker::Gender.type, occupation: Faker::Job.title, education: Faker::University.name, location: Location.find_by(name: "Philladelphia, PA, USA"),
about_me: Faker::Movies::LordOfTheRings.quote})
user4 = User.create!({fname: Faker::Name.first_name, lname: Faker::Name.last_name, 
email: "email3@gmail.com", password: "password", age: Faker::Number.between(from: 18, to: 100),
gender: Faker::Gender.type, occupation: Faker::Job.title, education: Faker::University.name, location: Location.find_by(name: "Philladelphia, PA, USA"),
about_me: Faker::Movies::LordOfTheRings.quote})
user5 = User.create!({fname: Faker::Name.first_name, lname: Faker::Name.last_name, 
email: "email4@gmail.com", password: "password", age: Faker::Number.between(from: 18, to: 100),
gender: Faker::Gender.type, occupation: Faker::Job.title, education: Faker::University.name, location: Location.find_by(name: "San Francisco, CA, USA"),
about_me: Faker::Movies::LordOfTheRings.quote})
user6 = User.create!({fname: Faker::Name.first_name, lname: Faker::Name.last_name, 
email: "email5@gmail.com", password: "password", age: Faker::Number.between(from: 18, to: 100),
gender: Faker::Gender.type, occupation: Faker::Job.title, education: Faker::University.name, location: Location.find_by(name: "San Francisco, CA, USA"),
about_me: Faker::Movies::LordOfTheRings.quote})
user7 = User.create!({fname: Faker::Name.first_name, lname: Faker::Name.last_name, 
email: "email6@gmail.com", password: "password", age: Faker::Number.between(from: 18, to: 100),
gender: Faker::Gender.type, occupation: Faker::Job.title, education: Faker::University.name, location: Location.find_by(name: "Rome, Italy"),
about_me: Faker::Movies::LordOfTheRings.quote})
user8 = User.create!({fname: Faker::Name.first_name, lname: Faker::Name.last_name, 
email: "email7@gmail.com", password: "password", age: Faker::Number.between(from: 18, to: 100),
gender: Faker::Gender.type, occupation: Faker::Job.title, education: Faker::University.name, location: Location.find_by(name: "Rome, Italy"),
about_me: Faker::Movies::LordOfTheRings.quote})
user9 = User.create!({fname: Faker::Name.first_name, lname: Faker::Name.last_name, 
email: "email8@gmail.com", password: "password", age: Faker::Number.between(from: 18, to: 100),
gender: Faker::Gender.type, occupation: Faker::Job.title, education: Faker::University.name, location: Location.find_by(name: "Paris, France"),
about_me: Faker::Movies::LordOfTheRings.quote})
user10 = User.create!({fname: Faker::Name.first_name, lname: Faker::Name.last_name, 
email: "email9@gmail.com", password: "password", age: Faker::Number.between(from: 18, to: 100),
gender: Faker::Gender.type, occupation: Faker::Job.title, education: Faker::University.name, location: Location.find_by(name: "Paris, France"),
about_me: Faker::Movies::LordOfTheRings.quote})


spot1 = Spot.create!({host_id: User.find_by(email: "jk@gmail.com").id, 
host_name: User.find_by(email: "jk@gmail.com").fname + " " + User.find_by(email: "jk@gmail.com").lname, location_id: Location.find_by(name: "New York, NY, USA").id, max_guests: 4, 
last_minute_requests: true, preferred_gender: "Any", kid_friendly: true, 
pet_friendly: true, smoking_allowed: true, has_pets: false, has_children: false,
 smoking_at_home: true, wheelchair_accessible: true, 
 sleeping_arrangements: "Private Bedroom", description_of_sleeping_arrangements: "placeholder",
 roommate_situation: "placeholder roommate", public_transportation: "placeholder transpo", 
 what_i_can_share_with_guests: "placeholder share", additional_information: "placeholder add", location_name: Location.find_by(name: "New York, NY, USA").name,
 sun: true, mon: true, tue: true, wed: true, thu: true, fri: true, sat: true})

spot2 = Spot.create!({host_id: User.find_by(email: "email@gmail.com").id, 
host_name: User.find_by(email: "email@gmail.com").fname + " " + User.find_by(email: "email@gmail.com").lname, location_id: Location.find_by(name: "New York, NY, USA").id, max_guests: 2, 
last_minute_requests: true, preferred_gender: "Any", kid_friendly: true, 
pet_friendly: true, smoking_allowed: true, has_pets: false, has_children: false,
 smoking_at_home: true, wheelchair_accessible: true, 
 sleeping_arrangements: "Private Bedroom", description_of_sleeping_arrangements: "placeholder",
 roommate_situation: "placeholder roommate", public_transportation: "placeholder transpo", 
 what_i_can_share_with_guests: "placeholder share", additional_information: "placeholder add", location_name: Location.find_by(name: "New York, NY, USA").name,
 sun: false, mon: false, tue: false, wed: false, thu: false, fri: false, sat: false})

spot3 = Spot.create!({host_id: User.find_by(email: "email1@gmail.com").id, 
host_name: User.find_by(email: "email1@gmail.com").fname + " " + User.find_by(email: "email1@gmail.com").lname, location_id: Location.find_by(name: "New York, NY, USA").id, max_guests: 2, 
last_minute_requests: true, preferred_gender: "Any", kid_friendly: true, 
pet_friendly: true, smoking_allowed: true, has_pets: false, has_children: false,
 smoking_at_home: true, wheelchair_accessible: true, 
 sleeping_arrangements: "Private Bedroom", description_of_sleeping_arrangements: "placeholder",
 roommate_situation: "placeholder roommate", public_transportation: "placeholder transpo", 
 what_i_can_share_with_guests: "placeholder share", additional_information: "placeholder add", location_name: Location.find_by(name: "New York, NY, USA").name,
 sun: false, mon: false, tue: false, wed: false, thu: false, fri: false, sat: false})

spot4 = Spot.create!({host_id: User.find_by(email: "email2@gmail.com").id, 
host_name: User.find_by(email: "email2@gmail.com").fname + " " + User.find_by(email: "email2@gmail.com").lname, location_id: Location.find_by(name: "New York, NY, USA").id, max_guests: 2, 
last_minute_requests: true, preferred_gender: "Any", kid_friendly: true, 
pet_friendly: true, smoking_allowed: true, has_pets: false, has_children: false,
 smoking_at_home: true, wheelchair_accessible: true, 
 sleeping_arrangements: "Private Bedroom", description_of_sleeping_arrangements: "placeholder",
 roommate_situation: "placeholder roommate", public_transportation: "placeholder transpo", 
 what_i_can_share_with_guests: "placeholder share", additional_information: "placeholder add", location_name: Location.find_by(name: "New York, NY, USA").name,
 sun: false, mon: false, tue: false, wed: false, thu: false, fri: false, sat: false})

spot5 = Spot.create!({host_id: User.find_by(email: "email3@gmail.com").id, 
host_name: User.find_by(email: "email3@gmail.com").fname + " " + User.find_by(email: "email3@gmail.com").lname, location_id: Location.find_by(name: "Philladelphia, PA, USA").id, max_guests: 2, 
last_minute_requests: true, preferred_gender: "Any", kid_friendly: true, 
pet_friendly: true, smoking_allowed: true, has_pets: false, has_children: false,
 smoking_at_home: true, wheelchair_accessible: true, 
 sleeping_arrangements: "Private Bedroom", description_of_sleeping_arrangements: "placeholder",
 roommate_situation: "placeholder roommate", public_transportation: "placeholder transpo", 
 what_i_can_share_with_guests: "placeholder share", additional_information: "placeholder add", location_name: Location.find_by(name: "Philladelphia, PA, USA").name,
 sun: false, mon: false, tue: false, wed: false, thu: false, fri: false, sat: false})

spot6 = Spot.create!({host_id: User.find_by(email: "email4@gmail.com").id, 
host_name: User.find_by(email: "email4@gmail.com").fname + " " + User.find_by(email: "email4@gmail.com").lname, location_id: Location.find_by(name: "Philladelphia, PA, USA").id, max_guests: 2, 
last_minute_requests: true, preferred_gender: "Any", kid_friendly: true, 
pet_friendly: true, smoking_allowed: true, has_pets: false, has_children: false,
 smoking_at_home: true, wheelchair_accessible: true, 
 sleeping_arrangements: "Private Bedroom", description_of_sleeping_arrangements: "placeholder",
 roommate_situation: "placeholder roommate", public_transportation: "placeholder transpo", 
 what_i_can_share_with_guests: "placeholder share", additional_information: "placeholder add", location_name: Location.find_by(name: "Philladelphia, PA, USA").name,
 sun: false, mon: false, tue: false, wed: false, thu: false, fri: false, sat: false})

spot7 = Spot.create!({host_id: User.find_by(email: "email5@gmail.com").id, 
host_name: User.find_by(email: "email5@gmail.com").fname + " " + User.find_by(email: "email5@gmail.com").lname, location_id: Location.find_by(name: "Philladelphia, PA, USA").id, max_guests: 2, 
last_minute_requests: true, preferred_gender: "Any", kid_friendly: true, 
pet_friendly: true, smoking_allowed: true, has_pets: false, has_children: false,
 smoking_at_home: true, wheelchair_accessible: true, 
 sleeping_arrangements: "Private Bedroom", description_of_sleeping_arrangements: "placeholder",
 roommate_situation: "placeholder roommate", public_transportation: "placeholder transpo", 
 what_i_can_share_with_guests: "placeholder share", additional_information: "placeholder add", location_name: Location.find_by(name: "Philladelphia, PA, USA").name,
 sun: false, mon: false, tue: false, wed: false, thu: false, fri: false, sat: false})

spot8 = Spot.create!({host_id: User.find_by(email: "email6@gmail.com").id, 
host_name: User.find_by(email: "email6@gmail.com").fname + " " + User.find_by(email: "email6@gmail.com").lname, location_id: Location.find_by(name: "San Francisco, CA, USA").id, max_guests: 2, 
last_minute_requests: true, preferred_gender: "Any", kid_friendly: true, 
pet_friendly: true, smoking_allowed: true, has_pets: false, has_children: false,
 smoking_at_home: true, wheelchair_accessible: true, 
 sleeping_arrangements: "Private Bedroom", description_of_sleeping_arrangements: "placeholder",
 roommate_situation: "placeholder roommate", public_transportation: "placeholder transpo", 
 what_i_can_share_with_guests: "placeholder share", additional_information: "placeholder add", location_name: Location.find_by(name: "San Francisco, CA, USA").name,
 sun: false, mon: false, tue: false, wed: false, thu: false, fri: false, sat: false})

spot9 = Spot.create!({host_id: User.find_by(email: "email7@gmail.com").id, 
host_name: User.find_by(email: "email7@gmail.com").fname + " " + User.find_by(email: "email7@gmail.com").lname, location_id: Location.find_by(name: "Rome, Italy").id, max_guests: 2, 
last_minute_requests: true, preferred_gender: "Any", kid_friendly: true, 
pet_friendly: true, smoking_allowed: true, has_pets: false, has_children: false,
 smoking_at_home: true, wheelchair_accessible: true, 
 sleeping_arrangements: "Private Bedroom", description_of_sleeping_arrangements: "placeholder",
 roommate_situation: "placeholder roommate", public_transportation: "placeholder transpo", 
 what_i_can_share_with_guests: "placeholder share", additional_information: "placeholder add", location_name: Location.find_by(name: "Rome, Italy").name,
 sun: false, mon: false, tue: false, wed: false, thu: false, fri: false, sat: false})

spot10 = Spot.create!({host_id: User.find_by(email: "email8@gmail.com").id, 
host_name: User.find_by(email: "email8@gmail.com").fname + " " + User.find_by(email: "email8@gmail.com").lname, location_id: Location.find_by(name: "Paris, France").id, max_guests: 2, 
last_minute_requests: true, preferred_gender: "Any", kid_friendly: true, 
pet_friendly: true, smoking_allowed: true, has_pets: false, has_children: false,
 smoking_at_home: true, wheelchair_accessible: true, 
 sleeping_arrangements: "Private Bedroom", description_of_sleeping_arrangements: "placeholder",
 roommate_situation: "placeholder roommate", public_transportation: "placeholder transpo", 
 what_i_can_share_with_guests: "placeholder share", additional_information: "placeholder add", location_name: Location.find_by(name: "Paris, France").name,
 sun: false, mon: false, tue: false, wed: false, thu: false, fri: false, sat: false})

spot11 = Spot.create!({host_id: User.find_by(email: "email9@gmail.com").id, 
host_name: User.find_by(email: "email9@gmail.com").fname + " " + User.find_by(email: "email9@gmail.com").lname, location_id: Location.find_by(name: "Paris, France").id, max_guests: 2, 
last_minute_requests: true, preferred_gender: "Any", kid_friendly: true, 
pet_friendly: true, smoking_allowed: true, has_pets: false, has_children: false,
 smoking_at_home: true, wheelchair_accessible: true, 
 sleeping_arrangements: "Private Bedroom", description_of_sleeping_arrangements: "placeholder",
 roommate_situation: "placeholder roommate", public_transportation: "placeholder transpo", 
 what_i_can_share_with_guests: "placeholder share", additional_information: "placeholder add", location_name: Location.find_by(name: "Paris, France").name,
 sun: false, mon: false, tue: false, wed: false, thu: false, fri: false, sat: false})

booking1 = Booking.create!({destination: "Paris", arrival_date: "09/09/2020", 
  departure_date: "10/10/2020", number_of_travelers: 2, trip_description: "gonna be fun", user_id: User.find_by(email: "jk@gmail.com").id, host_id: User.find_by(email: "email@gmail.com").id})
booking2 = Booking.create!({destination: "New York", arrival_date: "09/10/2020", 
  departure_date: "10/10/2020", number_of_travelers: 1, trip_description: "The big apple!", user_id: User.find_by(email: "email@gmail.com").id, host_id: User.find_by(email: "email1@gmail.com").id})
booking3 = Booking.create!({destination: "Paris", arrival_date: "09/09/2020", 
  departure_date: "10/10/2020", number_of_travelers: 2, trip_description: "gonna be awesome", user_id: User.find_by(email: "jk@gmail.com").id, host_id: User.find_by(email: "email2@gmail.com").id})


review1 = Review.create!({author_id: User.find_by(email: "jk@gmail.com").id, host_id: User.find_by(email: "email@gmail.com").id, surfer_id: User.find_by(email: "jk@gmail.com").id, booking_id: 1, body: "Great Time spent here. Awesome host.", recommended: true})
review2 = Review.create!({author_id: User.find_by(email: "email@gmail.com").id, host_id: User.find_by(email: "jk@gmail.com").id, surfer_id: User.find_by(email: "email@gmail.com").id, booking_id: 2, body: "Best place ever.", recommended: true})
review3 = Review.create!({author_id: User.find_by(email: "email@gmail.com").id, host_id: User.find_by(email: "email@gmail.com").id, surfer_id: User.find_by(email: "jk@gmail.com").id, booking_id: 3, body: "awful surfer.", recommended: false})