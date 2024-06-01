/// @desc Initialise & Globals
randomize();

global.gamePaused = false;
global.textSpeed = .75;
global.iCamera = instance_create_layer(0,0,layer,oCamera);
global.targetRoom = -1;
global.targetX = -1;
global.targetY = -1;
global.targetDirection = 0;
global.iLifted = noone;

surface_resize(application_surface, RESOLUTION_W, RESOLUTION_H);
room_goto(ROOM_START);



///POUR NEWRUN

//créé la liste des runs
var _vague1list = [1,2,3];
var _vague2list = [4,5];

//randomise la liste de runs
vague1 = array_shuffle(_vague1list,0,array_length(_vague1list));
vague2 = array_shuffle(_vague2list,0,array_length(_vague2list));

runList = vague1;
goRun = 0;
