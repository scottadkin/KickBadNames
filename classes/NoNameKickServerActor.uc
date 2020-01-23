//=============================================================================
// NoNameKickServerActor.
//=============================================================================
class NoNameKickServerActor expands Actor;

function PostBeginPlay(){

    Log( "=============== Adding KickNoNames =========================" );
	Level.Game.BaseMutator.AddMutator(Level.Game.Spawn( class 'KickNoNames' ) );

  	//Destroy();
}

defaultproperties
{
}
