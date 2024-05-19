function PlayerStateFree(){
	//Movements

	hSpeed = lengthdir_x(inputMagnitude * speedWalk, inputDirection);
	vSpeed = lengthdir_y(inputMagnitude * speedWalk, inputDirection);

	PlayerCollision();

	//Update Sprite Index
	var _oldSprite = sprite_index;
	
	if (inputMagnitude != 0)
	{
		direction = inputDirection;
		sprite_index = spriteRun;
		
		start_timer = true
	} else {
		
		if (start_timer == true) {timer = FRAME_RATE * 5; start_timer = false;}

		if (timer > 0) {timer--;}

		if (timer == 0)
		{
			anim_eternue = true;
			PlayerActOutAnimation(sPlayerEternue);
			timer = -1;
		} else {
			sprite_index = spriteIdle;
		}
	}
		
	if (_oldSprite != sprite_index) localFrame = 0;

	//Update Sprite Index
	PlayerAnimateSprite();
	
	/*
	//Attack key logic
	if(keyAttack)
	{
		state = PlayerStateAttack;
		stateAttack = AttackSlash;
	}
	*/
	
	//Activate key logic
	if(keyActivate)
	{
		// 1. Check for an entity to activate
		// 2. If there is nothing or something with no script : Roll !
		// 3. Otherwise, activate the script
		// 4. If it's an NPC, make it face forward
		
		var _activateX = lengthdir_x(150, direction);
		var _activateY = lengthdir_y(105, direction);
		activate = instance_position(x +_activateX, y - 70 +_activateY, pEntity);
		
		if (activate == noone || activate.entityActivateScript == -1)
		{
			//state = PlayerStateRoll;
			//moveDistanceRemaining = distanceRoll;
		}
		else
		{
			//Activate the entity
			ScriptExecuteArray(activate.entityActivateScript, activate.entityActivateArgs);
			
			//Make an NPC face the player
			if (activate.entityNPC)
			{
				with (activate)
				{
					direction = point_direction(x,y,other.x,other.y);
					show_debug_message(direction)
					image_index = CARDINAL_DIR;
					show_debug_message(image_index)
				}
			}
		}
	}
}