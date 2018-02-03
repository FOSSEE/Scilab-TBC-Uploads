//determine support reactions
//Refer fig. 3.49
//Taking moment about B
RA=(20*7+30*4*5+60*2*sind(45))/9  //kN
HB=60*cosd(45)  //kN
VB=20+30*4+60*sind(45)-RA  //kN
printf("The reactions are:-\nRA=%.2f kN \nHB=%.2f kN \nVB=%.2f kN \nAs shown in fig.3.49",RA,HB,VB)

