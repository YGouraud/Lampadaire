event_inherited();

state = ENEMYSTATE.WANDER;

//ENEMY SPRITE
sprMove = sSlime;
sprAttack = sSlimeAttack;

//ENEMY SCRIPTS
enemyScript[ENEMYSTATE.WANDER] = SlimeWander;
enemyScript[ENEMYSTATE.CHASE] = SlimeChase;
enemyScript[ENEMYSTATE.ATTACK] = SlimeAttack;
