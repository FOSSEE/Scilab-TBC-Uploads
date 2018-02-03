//Finding forces in members
//Refer fig. 4.15 (a)
RA=7*20/2  //kN
RB=RA  //kN  (symmetry)
//CE is perpendicular on AB
CE=5.196  //m
DE=3  //m
theta=atand(5.196/3)  //degree
//The fact that 20 kN loads are equidistant can be used to find out horizontal distances of loads from A
//Consider equilibrium of left hand side portion of section (1)-(1)
//taking moment about A
F2=(20*2.25+20*4.5+20*6.75)/(6*sind(60))  //kN  (Tension)
F1=(70-20-20-20+51.96*sind(60))/sind(30)  //kN  (compression)
F3=-51.96*cosd(60)+110*cosd(30)  //kN  (Tension)
printf("The required forces are:-\nF1=%.2d kN (Compression)\nF2=%.2d kN (Tension)\nF3=%.2d kN (Tension)",F1,F2,F3)
