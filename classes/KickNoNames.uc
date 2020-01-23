//=============================================================================
// KickNoNames.
//=============================================================================
class KickNoNames expands Mutator config( NoNameKick );

var() config string badNames[255];
var() config string kickMessagePrefix;
var() config string kickMessageStart;// = "[NoNameKick]: You got kicked for using an illegal name.";
var() config string kickMessage1;// = "[NoNameKick]: You can't join the server with the name Player(number[s])";
var() config string kickMessageEnd;// = "[NoNameKick]: You can join the server once you have changed your name.";


function bool bValidChar(string c){

	if(c >= "0" && c <= "9"){
		return false;
	}
	
	return true;
}


function bool bValidName(string currentName){

	local int i;
	
	for(i = 0; i < 255; i++){
	
		LOG("badNames[" $ i $ "] = "$badNames[i]);

		if(currentName ~= badNames[i]){
			return false;
		}
	}

	return true;
}



function ModifyPlayer(Pawn Other){

	local PlayerReplicationInfo pr;
	local String currentName;
	local int nameLength;

	

	if(Other.IsA('PlayerPawn')){

		if(Other.PlayerReplicationInfo != None){
		
			pr = Other.PlayerReplicationInfo;

			if(!bValidName(pr.PlayerName)){

				Other.ClientMessage(kickMessagePrefix $ kickMessageStart);
				Other.ClientMessage(kickMessagePrefix $ kickMessage1);
				Other.ClientMessage(kickMessagePrefix $ kickMessageEnd);

				Other.Destroy();
				return;

			}				
			
		}	
	}

	if ( NextMutator != None )
		NextMutator.ModifyPlayer(Other);
	

}

defaultproperties
{
     badNames(0)="player"
     badNames(1)="player1"
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
     badNames(33)="player33"
     badNames(34)="player34"
     badNames(35)="player35"
     badNames(36)="player36"
     badNames(37)="player37"
     badNames(38)="player38"
     badNames(39)="player39"
     badNames(40)="player40"
     badNames(41)="player41"
     badNames(42)="player42"
     badNames(43)="player43"
     badNames(44)="player44"
     badNames(45)="player45"
     badNames(46)="player46"
     badNames(47)="player47"
     badNames(48)="player48"
     badNames(49)="player49"
     badNames(50)="player50"
     badNames(51)="player51"
     badNames(52)="player52"
     badNames(53)="player53"
     badNames(54)="player54"
     badNames(55)="player55"
     badNames(56)="player56"
     badNames(57)="player57"
     badNames(58)="player58"
     badNames(59)="player59"
     badNames(60)="player60"
     badNames(61)="player61"
     badNames(62)="player62"
     badNames(63)="player63"
     badNames(64)="player64"
     badNames(65)="player65"
     badNames(66)="player66"
     badNames(67)="player67"
     badNames(68)="player68"
     badNames(69)="player69"
     badNames(70)="player70"
     badNames(71)="player71"
     badNames(72)="player72"
     badNames(73)="player73"
     badNames(74)="player74"
     badNames(75)="player75"
     badNames(76)="player76"
     badNames(77)="player77"
     badNames(78)="player78"
     badNames(79)="player79"
     badNames(80)="player80"
     badNames(81)="player81"
     badNames(82)="player82"
     badNames(83)="player83"
     badNames(84)="player84"
     badNames(85)="player85"
     badNames(86)="player86"
     badNames(87)="player87"
     badNames(88)="player88"
     badNames(89)="player89"
     badNames(90)="player90"
     badNames(91)="player91"
     badNames(92)="player92"
     badNames(93)="player93"
     badNames(94)="player94"
     badNames(95)="player95"
     badNames(96)="player96"
     badNames(97)="player97"
     badNames(98)="player98"
     badNames(99)="player99"
     badNames(100)="player100"
     badNames(101)="player101"
     badNames(102)="player102"
     badNames(103)="player103"
     badNames(104)="player104"
     badNames(105)="player105"
     badNames(106)="player106"
     badNames(107)="player107"
     badNames(108)="player108"
     badNames(109)="player109"
     badNames(110)="player110"
     badNames(111)="player111"
     badNames(112)="player112"
     badNames(113)="player113"
     badNames(114)="player114"
     badNames(115)="player115"
     badNames(116)="player116"
     badNames(117)="player117"
     badNames(118)="player118"
     badNames(119)="player119"
     badNames(120)="player120"
     badNames(121)="player121"
     badNames(122)="player122"
     badNames(123)="player123"
     badNames(124)="player124"
     badNames(125)="player125"
     badNames(126)="player126"
     badNames(127)="player127"
     badNames(128)="player128"
     badNames(129)="player129"
     badNames(130)="player130"
     badNames(131)="player131"
     badNames(132)="player132"
     badNames(133)="player133"
     badNames(134)="player134"
     badNames(135)="player135"
     badNames(136)="player136"
     badNames(137)="player137"
     badNames(138)="player138"
     badNames(139)="player139"
     badNames(140)="player140"
     badNames(141)="player141"
     badNames(142)="player142"
     badNames(143)="player143"
     badNames(144)="player144"
     badNames(145)="player145"
     badNames(146)="player146"
     badNames(147)="player147"
     badNames(148)="player148"
     badNames(149)="player149"
     badNames(150)="player150"
     badNames(151)="player151"
     badNames(152)="player152"
     badNames(153)="player153"
     badNames(154)="player154"
     badNames(155)="player155"
     badNames(156)="player156"
     badNames(157)="player157"
     badNames(158)="player158"
     badNames(159)="player159"
     badNames(160)="player160"
     badNames(161)="player161"
     badNames(162)="player162"
     badNames(163)="player163"
     badNames(164)="player164"
     badNames(165)="player165"
     badNames(166)="player166"
     badNames(167)="player167"
     badNames(168)="player168"
     badNames(169)="player169"
     badNames(170)="player170"
     badNames(171)="player171"
     badNames(172)="player172"
     badNames(173)="player173"
     badNames(174)="player174"
     badNames(175)="player175"
     badNames(176)="player176"
     badNames(177)="player177"
     badNames(178)="player178"
     badNames(179)="player179"
     badNames(180)="player180"
     badNames(181)="player181"
     badNames(182)="player182"
     badNames(183)="player183"
     badNames(184)="player184"
     badNames(185)="player185"
     badNames(186)="player186"
     badNames(187)="player187"
     badNames(188)="player188"
     badNames(189)="player189"
     badNames(190)="player190"
     badNames(191)="player191"
     badNames(192)="player192"
     badNames(193)="player193"
     badNames(194)="player194"
     badNames(195)="player195"
     badNames(196)="player196"
     badNames(197)="player197"
     badNames(198)="player198"
     badNames(199)="player199"
     badNames(200)="player200"
     badNames(201)="player201"
     badNames(202)="player202"
     badNames(203)="player203"
     badNames(204)="player204"
     badNames(205)="player205"
     badNames(206)="player206"
     badNames(207)="player207"
     badNames(208)="player208"
     badNames(209)="player209"
     badNames(210)="player210"
     badNames(211)="player211"
     badNames(212)="player212"
     badNames(213)="player213"
     badNames(214)="player214"
     badNames(215)="player215"
     badNames(216)="player216"
     badNames(217)="player217"
     badNames(218)="player218"
     badNames(219)="player219"
     badNames(220)="player220"
     badNames(221)="player221"
     badNames(222)="player222"
     badNames(223)="player223"
     badNames(224)="player224"
     badNames(225)="player225"
     badNames(226)="player226"
     badNames(227)="player227"
     badNames(228)="player228"
     badNames(229)="player229"
     badNames(230)="player230"
     badNames(231)="player231"
     badNames(232)="player232"
     badNames(233)="player233"
     badNames(234)="player234"
     badNames(235)="player235"
     badNames(236)="player236"
     badNames(237)="player237"
     badNames(238)="player238"
     badNames(239)="player239"
     badNames(240)="player240"
     badNames(241)="player241"
     badNames(242)="player242"
     badNames(243)="player243"
     badNames(244)="player244"
     badNames(245)="player245"
     badNames(246)="player246"
     badNames(247)="player247"
     badNames(248)="player248"
     badNames(249)="player249"
     badNames(250)="player250"
     badNames(251)="player251"
     badNames(252)="player252"
     badNames(253)="player253"
     badNames(254)="player254"
     kickMessagePrefix="[NoNameKick]:"
     kickMessageStart="You got kicked for using an illegal FART IT STINKS name."
     kickMessage1="You can't join the server with your current name."
     kickMessageEnd="You can join the server once you changed your name."
}