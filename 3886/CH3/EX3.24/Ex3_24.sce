//determine support reactions
//Refer fig. 3.51
//Taking moment about A
RB=(40+30*5*sind(45)+20*2*7)/6  //kN
HA=30*cosd(45)  //kN
VA=30*sind(45)-RB+40  //kN  (downwards)
printf("Required values are:-\nRB=%.2f kN\nHA=%.2f kN\nVA=%.2f kN downwards",RB,HA,-VA)

