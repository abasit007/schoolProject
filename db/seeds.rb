# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

subjects = Subject.create([
                          {subject: "Math", start_time: "8:10", end_time: "9:00", class_room: "1"},
                          {subject: "Chemistry", start_time: "8:10", end_time: "9:00", class_room: "2"},
                          {subject: "Bio", start_time: "9:10", end_time: "9:50", class_room: "3"},
                          {subject: "Physics", start_time: "10:00", end_time: "10:50", class_room: "4"},
                          {subject: "Math", start_time: "10:00", end_time: "10:50", class_room: "5"}
                          ])