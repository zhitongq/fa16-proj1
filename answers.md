# Q0: Why is this error being thrown?
    This error is thrown because there is no pokemon model. 

# Q1: How are the random Pokemon appearing? What is the common factor between all the possible Pokemon that appear? *
    From the seed.rb, it looks through (Squirtle Charmander Bulbasaur Pikachu) and chooses one randomly. Besides that they're starter pokemons, you cannot catch them.  

# Question 2a: What does the following line do "<%= button_to "Throw a Pokeball!", capture_path(id: @pokemon), :class => "button medium", :method => :patch %>"? Be specific about what "capture_path(id: @pokemon)" is doing. If you're having trouble, look at the Help section in the README.
    The button_to creates a new button and text. It defaults to POST, but the :method => :patch changes it to patch. Capture path routes to the capture method that was created in the PokemonsController and use the capture function to update the new trainer id of the pokemon on that page to be the current trainer that is logged in. The class is just making the the button medium size.

# Question 3: What would you name your own Pokemon?
    I would just leave it to the original name. 

# Question 4: What did you pass into the redirect_to? If it is a path, what did that path need? If it is not a path, why is it okay not to have a path here?
    I redirected to the original page which is the trainers page with the id. I took the current id of the trainer to go back to that page. 

# Question 5: Explain how putting this line "flash[:error] = @pokemon.errors.full_messages.to_sentence" shows error messages on your form.
    The flash comes from rendered _messages.html.erb which calls to a data-alert class. 

# Give us feedback on the project and decal below!
    This project was interesting and fun, I definitely learned a lot from it! I'm enjoying the decal, though I feel like a few concepts are rushed through but that comes with the limitation of time. 

# Extra credit: Link your Heroku deployed app
