lunch
=====

###Can't think of what to have for lunch?

This app will decide for you! It selects a random restaurant near Envato HQ
(even within your preferred walking distance)


###Technical details

- Responds with JSON
- Will integrate with edbot

##API

**[/](http://lunch-o-matic.herokuapp.com/)**

Returns ALL the known restaurants

**[/random](http://lunch-o-matic.herokuapp.com/random)**

Selects a random restaurant for you

**[/within/:distance](http://lunch-o-matic.herokuapp.com/within/200)**

Returns ALL the restaurants within your preferred walking distance

**[/within/:distance/random](http://lunch-o-matic.herokuapp.com/within/200/random)**

Selects a random restaurant for you withn your preferred walking distance


##Your favourite restautant is missing?

PRs are welcome. Just add it to the list of restaurants. Make sure that the
distance is expressed in metres from Envato HQ.

###Live at: http://lunch-o-matic.herokuapp.com/
