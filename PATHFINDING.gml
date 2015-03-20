//Put this script in a step function in the enemy object

//Lays out the grid. Change '32' to whatever the room snap size is
grid = mp_grid_create(0,0,room_width / 32, room_height / 32, 32, 32);


path = path_add();

//Puts blocks in the path. Change 'Wall' to the name of block object
mp_grid_add_instances(path, Wall,1);

//Put name of player object in here. Works better if sprites are centered
mp_grid_path(grid, path, x, y, Player.x, Player.y, 1);

path_start(path, 3, "", 1);
