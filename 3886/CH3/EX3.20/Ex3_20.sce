//Reactions developed at A and B
//Refer fig. 3.47 (a) and (b)
//Make proper assumptions from this fig.
//applying equilibrium conditions
HA=15*cosd(30)+20*cosd(45)  //kN
//Taking moment about A
RB=(10*4+15*6*sind(30)+20*10*sind(45))/12  //kN
VA=-RB+10+15*sind(30)+20*sind(45)  //kN
printf("The reactions developed are:-\nHA=%.2f kN\nVA=%.2f kN\nRB=%.2f kN",HA,VA,RB)
