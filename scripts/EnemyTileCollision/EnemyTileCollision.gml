function EnemyTileCollision(){
	var _collision = false;
	//Horizontal Tiles
	//Vers la droite
	if (sign(hSpeed) == 1 && BboxCollisionHorizontal(collisionMap, _wPlayerBbox, hSpeed, x, y))
	{
		x -= x mod TILE_SIZE;
		x += TILE_SIZE - 1 -_wPlayerBbox;
		hSpeed = 0;
		_collision = true;
	}
	//Vers la gauche
	if (sign(hSpeed) == -1 && BboxCollisionHorizontal(collisionMap, _wPlayerBbox, hSpeed, x, y))
	{
		x -= x mod TILE_SIZE;
		hSpeed = 0;
		x +=_wPlayerBbox;
		_collision = true;
	}
	//Vertical Tiles
	//Vers le bas
	if (sign(vSpeed) == 1 && BboxCollisionVertical(collisionMap, _wPlayerBbox, vSpeed, x, y))
	{
		y -= y mod TILE_SIZE;
		y += TILE_SIZE - 1;
		vSpeed = 0;
		_collision = true;
	}
	
	
	//Vers le haut
	if (sign(vSpeed) == -1 &&  BboxCollisionVertical(collisionMap, _wPlayerBbox, vSpeed, x, y))
	{
		y -= y mod TILE_SIZE;
		y +=_wPlayerBbox;
		vSpeed = 0;
		_collision = true;
	}

}