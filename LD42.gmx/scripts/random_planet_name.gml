/// random_planet_name();

var name = Gamestate._planetStartNames[| floor(random(ds_list_size(Gamestate._planetStartNames)))];

name += " - " + string(floor(random(999 - 100)) + 100);

return name
