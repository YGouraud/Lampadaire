function PlayerStateAct(){
	
	//Mise à jour du Sprite
	PlayerAnimateSprite(anim_eternue);
	
	if (animationEnd){
		
		anim_eternue = false;
		state = PlayerStateFree;
		animationEnd = false;
		if (animationEndScript != -1){
			script_execute(animationEndScript);
			animationEndScript = -1;
		}
	}
	
}