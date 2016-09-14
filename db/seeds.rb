FavouritesList.delete_all()
Favourite.delete_all()
User.delete_all()
Show.delete_all()

s1 = Show.create( {title: 'News', series: 3, description: 'News from around the world', image: 'news.jpg', programmeID:'news123'} )
s2 = Show.create( {title: 'Justin Bieber Documentary',series: 1, description: '`Documentary about JB', image: 'jb.jpg', programmeID:'jb23'} )


User.create( { show_id: s1.id, name: 'Marie' } )
User.create( { show_id: s2.id, name: 'Jim' } )


f1 = Favourite.create( { name: 'Current Affairs'} )
f2 = Favourite.create( { name: 'Factual'} )

FavouritesList.create( {show_id: s1.id, favourite_id: f1.id  } )
FavouritesList.create( {show_id: s2.id, favourite_id: f2.id  } )



# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
