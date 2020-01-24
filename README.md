# KickBadNames
 A mutator for UT servers that kicks people with certain names



## Installation

- Place NoNameKick.u, and NoNameKick.ini in your UnrealTournament System folder.
- Open UnrealTournament.ini and find the block called **ServerActors=NoNameKick.NoNameKickServerActor**
- Added the following line at the end of the block: **ServerActors=NoNameKick.NoNameKickServerActor**, Note: if you are using XC_Engine you must place this in the block **[XC_Engine.XC_GameEngine]**


## Changing banned names

If you would like to add or remove a name from the bad names list you can do that by opening NoNameKick.ini and changing the list of names.

Changing badNames[0] to Ooper instead of player, will kick people with the name Ooper and now allow the name player.

If you would like a certain pattern of characters to not be allowed in names, simply change one of the wildcards[number]="" to wildcards[number]="badword".

```
[NoNameKick.KickNoNames]
kickMessagePrefix="[NoNameKick]:"
kickMessageStart="You got kicked for using an illegal name."
kickMessageEnd="You can join the server once you changed your name."
kickMessages[0]="You can't join the server with your current name."
kickMessages[1]="You can't join the server with "
kickMessages[2]=" in your name."
kickMessages[3]=""
kickMessages[4]=""
kickMessages[5]=""
kickMessages[6]=""
kickMessages[7]=""
kickMessages[8]=""
kickMessages[9]=""
wildCards[0]="player"
wildCards[1]="nigger"
wildCards[2]="faggot"
wildCards[3]=""
wildCards[4]=""
wildCards[5]=""
wildCards[6]=""
wildCards[7]=""
wildCards[8]=""
wildCards[9]=""
wildCards[10]=""
wildCards[11]=""
wildCards[12]=""
wildCards[13]=""
wildCards[14]=""
wildCards[15]=""
wildCards[16]=""
wildCards[17]=""
wildCards[18]=""
wildCards[19]=""
wildCards[20]=""
wildCards[21]=""
wildCards[22]=""
wildCards[23]=""
wildCards[24]=""
wildCards[25]=""
wildCards[26]=""
wildCards[27]=""
wildCards[28]=""
wildCards[29]=""
wildCards[30]=""
wildCards[31]=""
badNames[0]="Cunt"
badNames[1]="player1"
badNames[2]="player2"
badNames[3]="player3"
badNames[4]="player4"
badNames[5]="player5"
badNames[6]="player6"
badNames[7]="player7"
badNames[8]="player8"
badNames[9]="player9"
badNames[10]="player10"
badNames[11]="player11"
badNames[12]="player12"
badNames[13]="player13"
badNames[14]="player14"
badNames[15]="player15"
badNames[16]="player16"
badNames[17]="player17"
badNames[18]="player18"
badNames[19]="player19"
badNames[20]="player20"
badNames[21]="player21"
badNames[22]="player22"
badNames[23]="player23"
badNames[24]="player24"
badNames[25]="player25"
badNames[26]="player26"
badNames[27]="player27"
badNames[28]="player28"
badNames[29]="player29"
badNames[30]="player30"
badNames[31]="player31"
badNames[32]="player32"
badNames[33]=""
badNames[34]=""
badNames[35]=""
badNames[36]=""
badNames[37]=""
badNames[38]=""
badNames[39]=""
badNames[40]=""
badNames[41]=""
badNames[42]=""
badNames[43]=""
badNames[44]=""
badNames[45]=""
badNames[46]=""
badNames[47]=""
badNames[48]=""
badNames[49]=""
badNames[50]=""
badNames[51]=""
badNames[52]=""
badNames[53]=""
badNames[54]=""
badNames[55]=""
badNames[56]=""
badNames[57]=""
badNames[58]=""
badNames[59]=""
badNames[60]=""
badNames[61]=""
badNames[62]=""
badNames[63]=""
badNames[64]=""
badNames[65]=""
badNames[66]=""
badNames[67]=""
badNames[68]=""
badNames[69]=""
badNames[70]=""
badNames[71]=""
badNames[72]=""
badNames[73]=""
badNames[74]=""
badNames[75]=""
badNames[76]=""
badNames[77]=""
badNames[78]=""
badNames[79]=""
badNames[80]=""
badNames[81]=""
badNames[82]=""
badNames[83]=""
badNames[84]=""
badNames[85]=""
badNames[86]=""
badNames[87]=""
badNames[88]=""
badNames[89]=""
badNames[90]=""
badNames[91]=""
badNames[92]=""
badNames[93]=""
badNames[94]=""
badNames[95]=""
badNames[96]=""
badNames[97]=""
badNames[98]=""
badNames[99]=""
badNames[100]=""
badNames[101]=""
badNames[102]=""
badNames[103]=""
badNames[104]=""
badNames[105]=""
badNames[106]=""
badNames[107]=""
badNames[108]=""
badNames[109]=""
badNames[110]=""
badNames[111]=""
badNames[112]=""
badNames[113]=""
badNames[114]=""
badNames[115]=""
badNames[116]=""
badNames[117]=""
badNames[118]=""
badNames[119]=""
badNames[120]=""
badNames[121]=""
badNames[122]=""
badNames[123]=""
badNames[124]=""
badNames[125]=""
badNames[126]=""
badNames[127]=""
badNames[128]=""
badNames[129]=""
badNames[130]=""
badNames[131]=""
badNames[132]=""
badNames[133]=""
badNames[134]=""
badNames[135]=""
badNames[136]=""
badNames[137]=""
badNames[138]=""
badNames[139]=""
badNames[140]=""
badNames[141]=""
badNames[142]=""
badNames[143]=""
badNames[144]=""
badNames[145]=""
badNames[146]=""
badNames[147]=""
badNames[148]=""
badNames[149]=""
badNames[150]=""
badNames[151]=""
badNames[152]=""
badNames[153]=""
badNames[154]=""
badNames[155]=""
badNames[156]=""
badNames[157]=""
badNames[158]=""
badNames[159]=""
badNames[160]=""
badNames[161]=""
badNames[162]=""
badNames[163]=""
badNames[164]=""
badNames[165]=""
badNames[166]=""
badNames[167]=""
badNames[168]=""
badNames[169]=""
badNames[170]=""
badNames[171]=""
badNames[172]=""
badNames[173]=""
badNames[174]=""
badNames[175]=""
badNames[176]=""
badNames[177]=""
badNames[178]=""
badNames[179]=""
badNames[180]=""
badNames[181]=""
badNames[182]=""
badNames[183]=""
badNames[184]=""
badNames[185]=""
badNames[186]=""
badNames[187]=""
badNames[188]=""
badNames[189]=""
badNames[190]=""
badNames[191]=""
badNames[192]=""
badNames[193]=""
badNames[194]=""
badNames[195]=""
badNames[196]=""
badNames[197]=""
badNames[198]=""
badNames[199]=""
badNames[200]=""
badNames[201]=""
badNames[202]=""
badNames[203]=""
badNames[204]=""
badNames[205]=""
badNames[206]=""
badNames[207]=""
badNames[208]=""
badNames[209]=""
badNames[210]=""
badNames[211]=""
badNames[212]=""
badNames[213]=""
badNames[214]=""
badNames[215]=""
badNames[216]=""
badNames[217]=""
badNames[218]=""
badNames[219]=""
badNames[220]=""
badNames[221]=""
badNames[222]=""
badNames[223]=""
badNames[224]=""
badNames[225]=""
badNames[226]=""
badNames[227]=""
badNames[228]=""
badNames[229]=""
badNames[230]=""
badNames[231]=""
badNames[232]=""
badNames[233]=""
badNames[234]=""
badNames[235]=""
badNames[236]=""
badNames[237]=""
badNames[238]=""
badNames[239]=""
badNames[240]=""
badNames[241]=""
badNames[242]=""
badNames[243]=""
badNames[244]=""
badNames[245]=""
badNames[246]=""
badNames[247]=""
badNames[248]=""
badNames[249]=""
badNames[250]=""
badNames[251]=""
badNames[252]=""
badNames[253]=""
badNames[254]=""
```