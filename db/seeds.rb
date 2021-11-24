# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
movies = Movie.create([
                        { title: 'Star Wars', year: '1977-01-01', genre: 'SCI-FI', description: 'Lorem ipsum',
                          image: 'placeholder' },
                        { title: 'Lord of the Rings', year: '2001-01-01', genre: 'Fantasy', description: 'Lorem ipsum',
                          image: 'placeholder' }
                      ])
