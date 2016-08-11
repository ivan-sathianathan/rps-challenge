# RPS Challenge

This is my solution to the third weekend challenge we were set at Makers Academy. We had to fulfil the following user stories:

```
As a marketeer
So that I can see my name in lights
I would like to register my name before playing an online game

As a marketeer
So that I can enjoy myself away from the daily grind
I would like to be able to play rock/paper/scissors
```

We were also given the following hints on functionality:

```
- the marketeer should be able to enter their name before the game
- the marketeer will be presented the choices (rock, paper and scissors)
- the marketeer can choose one option
- the game will choose a random option
- a winner will be declared
```

#Usage

1. Clone this repo
2. Run ```bundle```
3. Run ```rackup```
4. Point your browser to http://localhost:9292
5. Play!


More documentation on the behaviour of each class and their methods as well as feature tests can be found by running rspec

```
playing a game
  see the shape options
  choose a shape
  game chooses a random option
  end game
    I win
    I lose
    I draw

registering name
  register and see my name

Opponent
  #shape
    returns a random shape

Turn
  #player_name
    returns player name
  #player_shape
    returns player shape
  #opponent_name
    returns opponent shape
  end game
    #win?
      returns true if player_shape is :rock and opponent_shape is :scissors
    #lose?
      returns true if player_shape is :rock and opponent_shape is :paper
    #draw?
      returns true if player_shape is :rock and opponent_shape is :rock
```


```ruby
require 'coveralls'
require 'simplecov'

SimpleCov.formatters = [
  SimpleCov::Formatter::HTMLFormatter,
  Coveralls::SimpleCov::Formatter
]
Coveralls.wear!
```

Note that you can replace `Coveralls.wear!` with  `SimpleCov.start` to get coverage stats locally
Then run `open coverage/index.html` from the command line to view details
