function NewRun(){
	
///lance une nouvelle run


//choisit la première run de la liste + la supprime
goRun = array_shift(runList);

//lance la run choisie

	//VAGUE 1
	
if (goRun = 1) room_goto(rPlaine);

if (goRun = 2) room_goto(rPlaine);

if (goRun = 3) room_goto(rPlaine);
	
	
	//VAGUE 2

if (goRun = 4) room_goto(rPlaine);

if (goRun = 5) room_goto(rPlaine);


//ajoute la nouvelle vague de runs (2 nouvelles dans l'exemple) 
//après en avoir accompli un certain nombre

//!POUR L'INSTANT POSSIBLE QUE AVEC 2 VAGUES!

if (array_length(runList) < 1) 
{
	//newRun = 0
	runList = vague2
}

///array_push() j'imagine qu'il faudra utiliser ça plutôt

}