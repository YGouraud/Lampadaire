event_inherited();

state = ENEMYSTATE.WANDER;

//ENEMY SPRITE
sprMove = sNullos;

//ENEMY SCRIPTS
enemyScript[ENEMYSTATE.WANDER] = NullosWander;
enemyScript[ENEMYSTATE.CHASE] = NullosChase;