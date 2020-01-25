//=============================================================================
// KickNoNames.
// Created by Scott 'Ooper' Adkin 23/01/20
// Version 2 added wildcards for names 24/01/20
// Version 3 fixed kick messages not being displayed when player joins server after game has started.
//=============================================================================
class KickNoNames expands Mutator config( NoNameKick3 );

var() config string wildcards[32];
var() config string badNames[255];
var() config string kickMessagePrefix;
var() config string kickMessageStart;
var() config string kickMessages[10];
var() config string kickMessageEnd;

var() string currentKickName;
var() string currentKickMessage;



function bool bValidName(string currentName){

	local int i;
	
	for(i = 0; i < 255; i++){
	
		if(badNames[i] == ""){
			return true;
		}

		if(currentName ~= badNames[i]){
			return false;
		}
	}

	return true;
}

function int getWildcardIndex(string currentName){

	local int i;
	local int wIndex;

	for(i = 0; i < 32; i++){

		if(wildcards[i] != ""){

			wIndex = inStr(Caps(currentName), Caps(wildcards[i]));

			if(wIndex != -1){

				return i;
			}

		}else{

			return -1;
		}
	}

	return -1;

}

function Timer(){

	local Pawn p;

	for(p = Level.PawnList; p != None; p=p.NextPawn){
		
		if(p.PlayerReplicationInfo != None){
	
			if(p.PlayerReplicationInfo.PlayerName ~= currentKickName){

				p.ClientMessage(kickMessagePrefix $ kickMessageStart);
				p.ClientMessage(kickMessagePrefix $ currentKickMessage);
				p.ClientMessage(kickMessagePrefix $ kickMessageEnd);
				
				p.destroy();
				return;
			}
		}
	}
}

function KickPlayer(Pawn Other, string kickMessage){


	//Other.ClientMessage(kickMessagePrefix $ kickMessageStart);
	//Other.ClientMessage(kickMessagePrefix $ kickMesssage);
	//Other.ClientMessage(kickMessagePrefix $ kickMessageEnd);
	//Other.ConsoleCommand("disconnect");
//	SetTimer(1.0, false, Other);
	//Other.ClientMessage("disconnect");

	currentKickMessage = kickMessage;

	currentKickName = Other.PlayerReplicationInfo.PlayerName;
	SetTimer(1.0, false);
	//Other.Destroy();
	//return;
}



function ModifyPlayer(Pawn Other){

	local PlayerReplicationInfo pr;
	local String currentName;
	local int nameLength;
	local int wildcardIndex;

	

	if(Other.IsA('PlayerPawn')){

		if(Other.PlayerReplicationInfo != None){
		
			pr = Other.PlayerReplicationInfo;

			wildcardIndex = getWildcardIndex(pr.PlayerName);
	
			if(wildcardIndex != -1){
				
				KickPlayer(Other, kickMessages[1] $ wildcards[wildcardIndex] $ kickMessages[2]);
			
			}else if(!bValidName(pr.PlayerName)){

				KickPlayer(Other, kickMessages[0]);

			}						
		}	
	}

	if ( NextMutator != None )
		NextMutator.ModifyPlayer(Other);
	

}

defaultproperties
{
     wildCards(0)="player"
     wildCards(1)="nigger"
     wildCards(2)="faggot"
     badNames(0)="."
     badNames(1)="test"
     badNames(2)="player2"
     badNames(3)="player3"
     badNames(4)="player4"
     badNames(5)="player5"
     badNames(6)="player6"
     badNames(7)="player7"
     badNames(8)="player8"
     badNames(9)="player9"
     badNames(10)="player10"
     badNames(11)="player11"
     badNames(12)="player12"
     badNames(13)="player13"
     badNames(14)="player14"
     badNames(15)="player15"
     badNames(16)="player16"
     badNames(17)="player17"
     badNames(18)="player18"
     badNames(19)="player19"
     badNames(20)="player20"
     badNames(21)="player21"
     badNames(22)="player22"
     badNames(23)="player23"
     badNames(24)="player24"
     badNames(25)="player25"
     badNames(26)="player26"
     badNames(27)="player27"
     badNames(28)="player28"
     badNames(29)="player29"
     badNames(30)="player30"
     badNames(31)="player31"
     badNames(32)="player32"
     kickMessagePrefix="[NoNameKick]:"
     kickMessageStart="You got kicked for using an illegal name."
     kickMessages(0)="You can't join the server with your current name."
     kickMessages(1)="You can't join the server with "
     kickMessages(2)=" in your name."
     kickMessageEnd="You can join the server once you changed your name."
}
