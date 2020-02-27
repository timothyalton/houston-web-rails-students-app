# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Teacher.destroy_all
Student.destroy_all


t1 = Teacher.create(name: "Mr. Smith")
t2 = Teacher.create(name: "Mr. Jones")
t3 = Teacher.create(name: "Mr. Fergus")
t4 = Teacher.create(name: "Mr. Dumbledore")

s1 = Student.create(name: "Mitchell", major: "Software Engineering", age: 29, teacher_id: t4.id)
s2 = Student.create(name: "Anam", major: "Software Engineering", age: 29, teacher_id: t4.id)
s3 = Student.create(name: "Kevin", major: "Accounting", age: 29, teacher_id: t2.id)
s4 = Student.create(name: "Michael Scott", major: "Managerial Stuff", age: 45, teacher_id: t1.id)
s5 = Student.create(name: "Greg", major: "Political Science", age: 18, teacher_id: t3.id)
s6 = Student.create(name: "Steve", major: "Business", age: 29, teacher_id: t1.id)
s7 = Student.create(name: "Margeret", major: "Political Science", age: 20, teacher_id: t3.id)
s8 = Student.create(name: "Jennifer", major: "Acting", age: 29, teacher_id: t4.id)
s9 = Student.create(name: "Ted", major: "Accounting", age: 29, teacher_id: t2.id)