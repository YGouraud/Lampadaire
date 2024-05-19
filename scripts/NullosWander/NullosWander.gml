function NullosWander(){
	sprite_index = sprMove;
	
	//PREVOIT UNE DESTINATION OU L'ABANDONNE (deplacement de l'ennemi)
	if ((x == xTo) && (y == yTo)) || (timePassed > enemyWanderDistance / enemySpeed)
	{
		hSpeed = 0;
		vSpeed = 0;
		//stoppe l'animation de mouvement (mais la laisse finir son cycle tranquillement, on est pas des bêtes non plus)
		if (image_index < 1)
		{
			image_speed = 0.0;
			image_index = 0;
		}
	
		//PREPARE UNE NOUVELLE DESTINATION
		if (++wait >= waitDuration)
		{
			wait = 0;
			timePassed = 0;
			dir = point_direction(x,y,xstart,ystart) + irandom_range(-45,45);
			xTo = x + lengthdir_x(enemyWanderDistance, dir);
			yTo = y + lengthdir_y(enemyWanderDistance, dir);
		}
		
	}
	else //BOUGE VERS NOUVELLE DESTINATION
	{
		timePassed++
		image_speed = 1.0
		var _distanceToGo = point_direction(x,y,xTo,yTo);
		var _speedThisFrame = enemySpeed;
		if (_distanceToGo < enemySpeed) _speedThisFrame = _distanceToGo;
		dir = point_direction(x,y,xTo,yTo);
		hSpeed = lengthdir_x(_speedThisFrame,dir);
		vSpeed = lengthdir_y(_speedThisFrame,dir);
		if (hSpeed != 0) image_xscale = sign(hSpeed);
	
	//COLLISION ET MOUVEMENT 
	var _collided = EnemyTileCollision();
	}







//CHECK FOR AGGRO
if(++aggroCheck >= aggroCheckDuration)
{
	aggroCheck = 0;
	if (instance_exists(oPlayer)) && (point_distance(x,y,oPlayer.x,oPlayer.y) <= enemyAggroRadius)
	{
		state = ENEMYSTATE.CHASE;
		target = oPlayer;
	}

}






}